# Contributing to The Wolf Project

First off, thank you for considering contributing to The Wolf Project! 🐺

## How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check the existing issues to avoid duplicates.

When you create a bug report, include as many details as possible:

- **Use a clear and descriptive title**
- **Describe the exact steps to reproduce the problem**
- **Provide specific examples**
- **Describe the behavior you observed and what you expected**
- **Include logs and screenshots if possible**
- **Include your environment details** (OS, server version, client version)

### Suggesting Features

Feature suggestions are welcome! Please:

- **Use a clear and descriptive title**
- **Provide a detailed description of the proposed feature**
- **Explain why this feature would be useful**
- **List any alternatives you've considered**

### Pull Requests

1. Fork the repository
2. Create a new branch from `main`:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. Make your changes
4. Test your changes thoroughly
5. Commit with clear, descriptive messages:
   ```bash
   git commit -m "Add: brief description of changes"
   ```
6. Push to your fork:
   ```bash
   git push origin feature/your-feature-name
   ```
7. Open a Pull Request

### Coding Standards

#### C++ Code Style

- Use C++17 features where appropriate
- Follow the existing code style in the project
- Use meaningful variable and function names
- Add comments for complex logic
- Keep functions small and focused

#### Lua Scripts

- Follow the existing script structure
- Use descriptive function and variable names
- Comment your scripts
- Test scripts thoroughly before submitting

### Commit Messages

Use clear and meaningful commit messages:

- `Add:` for new features
- `Fix:` for bug fixes
- `Update:` for updates to existing features
- `Remove:` for removed features
- `Refactor:` for code refactoring
- `Docs:` for documentation changes

Example:
```
Add: new spell system for knights
Fix: crash when player logs out during combat
Update: monster spawn rates in Thais
```

## Development Setup

### Prerequisites

- GCC 9+ or Clang 10+
- CMake 3.10+
- MySQL/MariaDB 5.7+
- Boost 1.66+
- LuaJIT

### Building

```bash
git clone https://github.com/whitecrixu/The-Wolf-Project.git
cd The-Wolf-Project
mkdir build && cd build
cmake ..
make -j$(nproc)
```

### Running Tests

```bash
cd build
ctest --output-on-failure
```

## Questions?

Feel free to open a GitHub Discussion for any questions about contributing.

Thank you for your contribution! 🐺
