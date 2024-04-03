#include<stdio.h>
#include<stdlib.h>
struct node{
	int data;
	struct node* next;
};
int init(struct node**);
int append(struct node**,int);
int traverse(struct node* head) ;
int destroy(struct node **head);

int init(struct node **head){
	*head=NULL;
	return 1;
}
int append(struct node** head, int data) {
    struct node *newNode=malloc(sizeof(struct node));
    newNode->data = data;
    newNode->next = NULL;
   if (*head == NULL) {
      *head = newNode;
       return 1;
   }
    struct node* current = *head;
    struct node* ptr;
    while (current->next != NULL) {
        current = current->next;
        
    }
    current->next = newNode;
    return 1;
}

int traverse(struct node* head) {
    struct node* current = head;
    
    while (current != NULL) {
        printf("%d-> ", current->data); 
        current = current->next; 
    }
    printf("NULL\n");
}

int destroy(struct node **head){
	struct node* ptr=*head;
	while(*head){
		*head=(*head)->next;
		free(ptr);
		ptr=*head;
	}
	return 1;
}

int main(){
	int a,n,k,pos,item;
	struct node *head=NULL;
	struct node *ptrToKey=NULL;
	init(&head);
	printf("enter no.of elements initially:");
	scanf("%d",&n);
	for(int i=0;i<n;i++){
		printf("enter the element:");
		scanf("%d",&a);
		append(&head,a);
	}
	printf("list initially:");
	traverse(head);
	destroy(&head);
	return 1;
}
