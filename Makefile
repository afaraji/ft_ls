NAME = a.out
SRC = ./ft_ls.c ./get_one_file.c ./ft_sort.c ./get_flag_tab.c ./print_list.c ./ft_l_flag.c ./ft_blocks.c ./ft_files_dirs.c ./print_all.c ./ft_R_flag.c
HEADER = ./ft_ls.h
OBJECTS = ./*.o
LIBFT_PATH = ./libft/

all : $(NAME)

$(NAME) :
	$(MAKE) -C ./libft
	gcc -Wall -Wextra -Werror -I=$(HEADR)  $(SRC) -L $(LIBFT_PATH) -lft -o $(NAME)
	
clean :
	/bin/rm -f $(OBJECTS)
	$(MAKE) -C ./libft/ clean

fclean : clean
	/bin/rm -f $(NAME)
	$(MAKE) -C ./libft/ fclean

re : fclean all