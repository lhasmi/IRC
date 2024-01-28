NAME := ircserv

SRCS := SocketManager.cpp main.cpp

OBJS := $(SRCS:%.cpp=%.o)

HEADERS := SocketManager.hpp

CXX := c++
CXXFLAGS := -Wall -Wextra -Werror -g3 -std=c++98
# CXXFLAGSS += -fsanitize=address

all: $(NAME)

$(NAME): $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS)  -o $(NAME)
	echo "Built $(NAME) successfully."

%.o: %.cpp $(HEADERS)
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS)


fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
