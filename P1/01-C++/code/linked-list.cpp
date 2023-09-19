#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <stdint.h>
#include <string.h>
#include <assert.h>

#include "linked-list.h"

namespace base {

   Node* destroy(Node* list)
   {
      return NULL;
   }

   Node* append(Node* list, uint32_t nmec, char *name)
   {
      Node *p = new Node;
      p -> reg.nmec = nmec;
      p -> reg.name = strdup(name);
      p -> next = NULL;
      if(list == NULL) return p;
      Node *q = list;
      while (q->next != NULL){
         q = q->next;
      }
      q->next = p;
      /*
      for(q = list; q != NULL; q=q->next){
         
         if(q->next == NULL){
            
            q->next = p;
         }
      }
      */
      return list;
      
   }

   void print(Node* list)
   {
      if(list == NULL) return;
      Node *q = list;
      while (q->next != NULL){
         printf("name: %s \n",q->reg.name);
         printf("nmec: %d \n",q->reg.nmec);
         printf("NEXTName: %s \n",q->next->reg.name);
         printf("NEXTNmec: %d \n",q->next->reg.nmec);
         q = q->next;
      }
      printf("name: %s \n",q->reg.name);
      printf("nmec: %d \n",q->reg.nmec);
      printf("nextName: NULL \n");
      printf("nextNmec: NULL \n");
   }

   int exists(Node* list, uint32_t nmec)
   {
      Node *q;
      for(q = list; q!=NULL; q = q->next){
         if(q->reg.nmec == nmec) return 1;
      }
      return 0;
   }

   Node* remove(Node* list, uint32_t nmec)
   {
      if(exists(list, nmec) == 0){
         printf("Node does not exist \n");
         return NULL;
      }

      Node *q = list;
      Node *prev = NULL;
      while(q->reg.nmec != nmec){
         prev = q;
         q = q->next;
      }
      if(prev == NULL){
         list = list-> next;
      }else if(q->next == NULL){
         prev->next = NULL;
         }else{
            q->next = q->next->next;
         }

      /*
      while(q->next->reg.nmec != nmec){
         q = q->next;
      }
      q->next = q->next->next;
      */
      return list;
   }

   const char *search(Node* list, uint32_t nmec)
   {
      return NULL;
   }

   Node* sort_by_name(Node* list)
   {
      return NULL;
   }

   Node* sort_by_number(Node* list)
   {
      return NULL;
   }
}
