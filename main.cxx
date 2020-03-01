#include <iostream>
#include <fstream>
#include <sstream>
#include <pwd.h>
#include <unistd.h>
#include <vector>

struct Cmd {
    std::string name;
    std::string desc;
};

std::ostream &operator<<(std::ostream &os, const Cmd &cmd) {
    return os << cmd.name << ": " << cmd.desc << '\n';
}

struct Env {
    std::string file;
    size_t tab_spaces;
    Cmd clear;
    Cmd add;
    Cmd remove;
    Cmd list;
};

Env env = {
.file =  "/.todo", .tab_spaces = 2, .clear = {
"clear",
R"(clears the todo list. usage: todo clear)"
}, .add = {
"add",
R"(adds one task to the todo list. usage: todo add <name> <tag>)"
}, .remove = {
"rm",
R"(removes one task from the todo list. usage: todo rm <ID>)"
}, .list = {
"ls",
R"(lists everything in the todo list. usage: todo ls)"
}};

struct Task {
    std::string name;
    std::string tag;
};

std::vector<Task> load_file(const std::string &filename) {
    std::ifstream file(filename);
    
    std::vector<Task> tasks;
    
    size_t N;
    file >> N;
    tasks.resize(N);
    
    for (size_t i = 0; i < N; ++i) {
        file >> tasks[i].name >> tasks[i].tag;
    }
    
    std::sort(tasks.begin(), tasks.end(), [](const Task &a, const Task &b) {
        return a.tag < b.tag;
    });
    
    return tasks;
}

int main(int argc, const char *argv[]) {
    std::ios::sync_with_stdio(false);
    passwd *pwd = getpwuid(getuid());
    std::string filename = pwd->pw_dir + env.file;
    
    std::vector<Task> tasks = load_file(filename);
    
    if (argc < 2) {
        std::cout << "todo usage:\n";
        std::string tab(env.tab_spaces, ' ');
        std::cout << tab << env.add;
        std::cout << tab << env.clear;
        std::cout << tab << env.remove;
        std::cout << tab << env.list;
        return 0;
    } else {
        std::string cmd = argv[1];
        if (cmd == env.clear.name) {
            tasks.clear();
        } else if (cmd == env.add.name) {
            if (argc < 4) {
                std::cout << "todo add takes in 2 arguments, found " << argc - 2 << '\n';
                return 0;
            }
            
            tasks.push_back({
                            argv[2],
                            argv[3]
                            });
        } else if (cmd == env.list.name) {
            size_t n = tasks.size();
            
            size_t sizes[2];
            sizes[0] = 2;
            sizes[1] = 4;
            for (size_t i = 0; i < n; ++i) {
                sizes[0] = std::max(sizes[0], std::to_string(i).size());
                sizes[1] = std::max(sizes[1], tasks[i].name.size());
            }
            
            sizes[0] += env.tab_spaces;
            sizes[1] += env.tab_spaces;
            
            std::cout << "ID" << std::string(sizes[0] - 2, ' ') << "name" << std::string(sizes[1] - 4, ' ') << "tag\n";
            for (size_t i = 0; i < n; ++i) {
                std::cout << i << std::string(sizes[0] - std::to_string(i).size(), ' ') << tasks[i].name << std::string(sizes[1] - tasks[i].name.size(), ' ') << tasks[i].tag << '\n';
            }
            
            return 0;
        } else if (cmd == env.remove.name) {
            if (argc < 3) {
                std::cout << "todo add takes in 1 argument, found " << argc - 2 << '\n';
                return 0;
            }
            
            size_t ID = 0;
            std::stringstream ss;
            ss << argv[2];
            ss >> ID;
            
            if (ID >= tasks.size()) {
                std::cout << "Task ID outside range\n";
                return 0;
            }
            
            tasks.erase(tasks.begin() + ID);
        } else {
            std::cout << "No command found '" << cmd << "'\n";
        }
    }
    
    std::ofstream file(filename);
    file << tasks.size() << '\n';
    for (const Task &task : tasks) {
        file << task.name << ' ' << task.tag << '\n';
    }
    return 0;
}
