#include <stdlib.h>
#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

int main()
{
	char *word;
	int read = 0;
	int count = 0;
	char *not_split_words;
	srand(getpid());

	FILE *file = fopen("/Users/rvernon/scripts/screensaver/all_words", "r");
	while ((read = fscanf(file, "%s", word)) == 1)
		count++;
	char **words = malloc(sizeof(char *) * count);
	fclose(file);
	file = fopen("/Users/rvernon/scripts/screensaver/all_words", "r");
	int i = 0;
	read = 0;
	while ((read = fscanf(file, "%s", word)) == 1)
		words[i++] = strdup(word);
	words[i] = 0;
	int index_word = rand() % i;
	write(1, words[index_word], strlen(words[index_word]));
}
