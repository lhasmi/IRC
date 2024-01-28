# IRC - Internet Relay Chat Server in C++ 98

#### Overview
This repository contains the source code for `ft_irc`, an Internet Relay Chat (IRC) server developed exclusively in C++ 98 as part of a programming project. The server is designed to handle multiple clients simultaneously without hanging, strictly adhering to non-blocking I/O operations and efficient resource management. The core functionality revolves around enabling clients to connect, authenticate, and communicate over TCP/IP networks.

#### Key Features
- **Multi-client Support**: Capable of managing multiple IRC connections concurrently, ensuring smooth and responsive interaction.
- **Non-blocking I/O**: Uses a single instance of poll() (or an equivalent like select(), kqueue(), epoll()) for all operations, including read, write, and listen.
- **Robust Error Handling**: Designed to be crash-proof under all circumstances, including memory limitations.
- **TCP/IP Communication**: Facilitates client-server communication via TCP/IP protocols (both IPv4 and IPv6 supported).
- **Core IRC Features**: Supports essential IRC functionalities such as authentication, setting nicknames, joining channels, private messaging, and more.
- **Channel Management**: Implements features for channel operators like KICK, INVITE, TOPIC, and MODE commands.
- **MacOS Compatibility**: Includes specific adjustments for MacOS, utilizing `fcntl()` for non-blocking file descriptor behavior.

#### Development Specifications
- **Standard Compliance**: Code strictly complies with C++ 98 standards and is compiled with flags `-Wall -Wextra -Werror`.
- **Makefile Inclusions**: Contains a Makefile with rules for `$(NAME)`, `all`, `clean`, `fclean`, and `re`, ensuring no relinking.
- **External Libraries**: Excludes external and Boost libraries, relying solely on standard C++ 98 functionalities.
- **Reference Client Usage**: A specific IRC client is designated as a reference for testing and evaluation, ensuring compatibility and standard adherence.

#### Testing and Evaluation
- Extensive error and issue checks including handling partial data and low bandwidth scenarios.
- Simplified testing using `nc` (Netcat) to simulate client-server communication and command processing.

#### Repository Structure
- `Makefile`: For compiling source files without relinking.
- Source Code: `*.{h, hpp}, *.cpp, *.tpp, *.ipp`
- Optional Configuration File

#### Additional Notes
- The project is part of a programming curriculum, emphasizing mastery of C++ concepts and robust, clean coding practices.
- It is tailored for educational purposes, demonstrating the implementation of a functional IRC server using classic C++ techniques.