/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   minitalk.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bboluk <bboluk@student.42istanbul.com.t    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/08/17 21:45:28 by bboluk            #+#    #+#             */
/*   Updated: 2023/08/17 22:57:39 by bboluk           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MINITALK_H
# define MINITALK_H

# include <signal.h>
# include <unistd.h>

void	ft_putchar(char c);
int		ft_atoi(char *str);
void	ft_putnbr(int nb);
void	ft_putstr(char *str);
void	handle_sig(int signum);

#endif
