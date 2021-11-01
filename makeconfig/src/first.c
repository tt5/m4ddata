#include <stdio.h>

struct config{
	char title[30];
	char index[30];
//    int number;
};

void printConfig(struct config);
void readConfig(struct config *);

int main(int argc, char* argv[]){
	//struct config one={"notes", "one", 1};
	struct config one={"notes", "one"};
	struct config two;

    readConfig(&two);

//	printConfig(one);
	printConfig(two);
//    printf("%s\n", argv[0]);
//    if (argc > 1 && argc < 3)
//      printf("%s\n", argv[1]);
//    printf("\033[1;31m\033[47mSize:\033[0m %zu\n", sizeof(struct config));
//    printf("\033[1;31m\033[47mSize:\033[0m %zu\n", sizeof(two.title));
//	return 0;
}

void readConfig(struct config *confptr) {
//  printf("\033[2J");
//  printf("\n>title-index-d>  \n");
  scanf("%s%s",
      confptr->title,
      confptr->index);
  //    &confptr->number);
}

void printConfig(struct config conf){
//    printf("\033[2J");
    printf("{\n");
    printf("\"title\": \"%s\",\n", conf.title);
	printf("\"index\": \"%s/\"\n", conf.index);
//	printf("\"number\": %d\n", conf.number);
    printf("}\n");
}

/*
mytitle myindex 2 3
echo "mytitle myindex" | ./test > out
*/
