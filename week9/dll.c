#include<stdio.h>
#include<stdlib.h>
struct node{
	int data;
	struct node* next;
	struct node* prev;
};
int init(struct node**,struct node**);
int isEmpty(struct node**);
int insert(struct node**,struct node**,int,int);
int traverseForward(struct node*);
int traverseBackward(struct node*);


int init(struct node** head,struct node** tail){
	*head=NULL;
	*tail=NULL;
	return 1;
}
int isEmpty(struct node** head){
	if((*head)==NULL)
		return 1;
	return 0;
}
int insert(struct node** head,struct node** tail,int data,int pos){
	struct node* iter=NULL;
	iter=*head;
	int i=1;
	if(pos<=0)//invalid pos
		return 0;
	struct node* newNode=(struct node*)malloc(sizeof(struct node));
	if(!newNode)
		return 0;
	newNode->data=data;
	if(isEmpty(head) && pos==1){//list is empty and insert at frst pos
			newNode->prev=NULL;
			newNode->next=NULL;
			*head=newNode;
			
			*tail=newNode;
			
			return 1;	
	}
	if(pos==1){//inserting at head pos
		newNode->next=*head;
		newNode->prev=NULL;
		(*head)->prev=newNode;
		*head=newNode;
		return 1;
	}
	while(i<pos-1 && iter!=NULL){
		iter=iter->next;
		i++;
	}
	if(iter==NULL){//non existant position
		free(newNode);
		return 1;
	}
	//insertion in middile and at tail position 
	newNode->next=iter->next;
	newNode->prev=iter;
	iter->next=newNode;
	if(newNode->next!=NULL){//at middle
		(newNode->next)->prev=newNode;
	}else{//at tail
		*tail=newNode;
	}
	return 1;
}
	
int traverseForward(struct node* head){
	struct node* iter=head;
	printf("head->");
	while(iter!=NULL){
		printf("%d->",iter->data);
		iter=iter->next;
	}
	printf("tail\n");
	return 1;
}
int traverseBackward(struct node* tail){
	struct node* iter=tail;
	printf("tail<-");
	while(iter!=NULL){
		printf("%d<-",iter->data);
		iter=iter->prev;
	}
	printf("head\n");
	return 1;
}

int main(){
	struct node* head=NULL;
	struct node* tail=NULL;
	struct node* ptrToData=NULL;
	init(&head,&tail);
	int pos,data,n;
	printf("enter no.of elements initially:");
	scanf("%d",&n);
	for(int i=1;i<=n;i++){
		printf("enter element:");
		scanf("%d",&data);
		insert(&head,&tail,data,1);
	}
	printf("list initially:");
	traverseForward(head);
	printf("enter the data to be inserted:");
	scanf("%d",&data);
	printf("enter the position to be inserted:");
	scanf("%d",&pos);
	insert(&head,&tail,data,pos);
	printf("list after insertion:");
	traverseForward(head);
	return 1;
}
