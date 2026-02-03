# Contributing to The Wolf Project

Thank you for your interest in contributing to The Wolf Project! This document provides guidelines for contributing to the project to ensure a smooth and effective collaboration.

## Code of Conduct

This project adheres to the [Contributor Covenant Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code. Instances of abusive, harassing, or otherwise unacceptable behavior may be reported by contacting the project team at email: jakub.polewka92@gmail.com or discord: 

## Project Roadmap

- The Wolf Project is an independent MMORPG server emulator project. Check our website for the roadmap: https://wolf-project.org

- This roadmap aims to ensure alignment of initiatives and prioritize the development of improvements and new features that benefit the community. Community participation is crucial, and we encourage contributors to review the roadmap before proposing major changes, to ensure these align with the strategic direction of our projects.


## Getting Started

### Issues

- **Bug Reports**: If you encounter any bugs or issues while using Project Wolf, please submit them via our [bug report template](our issue tracker).
- **Feature Requests**: If you have any ideas for features or enhancements, you can submit them through our [feature request template](our issue tracker).

Please provide as much relevant information as possible, including logs, screenshots, or other details to help the team understand the problem or your request.

### Pull Requests

To contribute code to the project, please follow these guidelines:

1. **Fork the Repository**: Fork The Wolf Project repository and create your own branch to make changes.
2. **Follow the Style Guides**: The project uses **Clang Format** for C++ and **Lua Format** for Lua scripts. It is important that your code follows these styles. We use GitHub Actions (GHA) for formatting checks, so make sure to format your code properly before submitting.
3. **No Complex Lua Scripts**: Contributions involving Lua scripts should focus on simple and efficient implementations. Performance-heavy features should be implemented in C++, and contributions that introduce overly complex Lua scripts may be rejected in favor of a C++ implementation.
4. **Database Standards**: We use an advanced key/value system for data storage called "KV System." We do not accept new tables in the MySQL database. All persistent data must be integrated using the KV system, which includes a protobuf-based abstraction for performance and integration. Please refer to the [KV System README](src/kv/README.md) for more information.
5. **PR Guidelines**: Use our [Pull Request Template](PULL_REQUEST_TEMPLATE.md) when submitting a pull request. Ensure your PR:
   - Follows the project coding standards.
   - Contains relevant descriptions and details about the changes.
   - Respects project maintainers' decisions. Some contributions may not be merged immediately or might be rejected due to internal project priorities.
6. **Do Not Use Legacy Storage System**: Pull requests that introduce new features using the legacy storage system will not be accepted. Contributors must adopt the "KV System" to ensure compatibility with our modern approach.

## Development Standards

### Code Quality
- Follow modern C++20+ standards when contributing to the codebase.
- Ensure that your code is well-documented. Comments should be in English, and special attention should be given to areas that are hard to understand.

### Formatting and Style
- **C++**: Code must be formatted with **Clang Format** according to the project's style configuration.
- **Lua**: Scripts must follow the formatting provided by **Lua Format**.

We recommend using the provided GitHub Actions to validate the formatting before submitting any pull requests.

## Communication

Please use a respectful and welcoming tone when communicating with others. We aim to foster a positive and friendly community, so be mindful of others' perspectives and experiences.

If you need to reach out to project maintainers for any assistance or inquiries, feel free to contact us at jakub.polewka92@gmail.com.

## Review Process

- Pull requests will be reviewed by the project maintainers. Please be patient, as it may take some time to get feedback.
- Contributors must be prepared for their PRs to be modified or even rejected. Reasons for this include internal priorities, a need for better performance, or violations of contribution guidelines.

## Best Practices
- Respect the project standards and guidelines.
- Make small, focused pull requests, as it makes the review process easier.
- Write tests where possible to ensure that your changes do not introduce new issues.
- Provide clear descriptions in your commits and pull requests.
- Ensure that new features are properly integrated with existing systems.

## Advanced Contribution
- **Complex Systems**: For features that impact performance or require deeper integrations, discuss them with the maintainers before implementation.
- **KV System Usage**: All persistent data should leverage the KV system. It allows for efficient data mapping, storing complex structures seamlessly. Learn more about the KV system [here](src/kv/README.md).

Thank you for your contributions and for helping make Project Wolf better!

