SERVER= server
SERVERBNS= server_bonus
CLIENT= client
CLIENTBNS= client_bonus

NAME= all

CC= gcc

CFLAGS= -Wall -Wextra -Werror

RM= rm -rf

all: $(SERVER) $(CLIENT)

$(SERVER):
	$(CC) $(CFLAGS) server.c -o $(SERVER)

$(CLIENT):
	$(CC) $(CFLAGS) client.c -o $(CLIENT)

bonus:
	$(CC) $(CFLAGS) client_bonus.c -o $(CLIENTBNS)
	$(CC) $(CFLAGS) server_bonus.c -o $(SERVERBNS)

clean:
	$(RM) $(SERVER) $(CLIENT) $(CLIENTBNS) $(SERVERBNS)

fclean: clean
	$(RM) $(SERVER) $(CLIENT) $(CLIENTBNS) $(SERVERBNS)

re: fclean all

.PHONY: all clean fclean re bonus