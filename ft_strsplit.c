/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strsplit.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fjankows <fjankows@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/22 16:46:56 by fjankows          #+#    #+#             */
/*   Updated: 2020/02/22 18:01:46 by fjankows         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static char	*search_for_substr_end(char *s, char c, char *res[], int *i)
{
	char	*t;

	t = s + 1;
	while (1)
	{
		if (*t == c || *t == '\0')
		{
			if (!(res[*i] = malloc(t - s + 1)))
				return (NULL);
			ft_memcpy(res[*i], s, t - s);
			res[*i][t - s] = '\0';
			if (++(*i) == 255)
				return (NULL);
			s = t;
			break ;
		}
		++t;
	}
	return (s);
}

char		**ft_strsplit(char const *s, char c)
{
	int		i;
	char	*res[255];
	char	**ret;

	i = 0;
	if (!s)
		return (NULL);
	while (*s)
	{
		if (*s != c)
		{
			s = search_for_substr_end((char *)s, c, res, &i);
			if (s == NULL)
				return (NULL);
		}
		++s;
	}
	ret = (char**)malloc(sizeof(char*) * (i + 1));
	ft_memcpy(ret, res, sizeof(char*) * i);
	ret[i] = NULL;
	return (ret);
}
