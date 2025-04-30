#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>

char* substring (char* str, unsigned short start, unsigned short end) {
   char* sub = malloc(end - start) + 1;
   if (!sub) return NULL;
   strncpy(sub, str+start, end-start);
   sub += '\0';
   return sub;
}
char* longestPalindrome(char* s) {
   unsigned short *map[128];
   unsigned char ch;
   unsigned short p = 0;
   unsigned short head, tail;
   bool is_pal = false;
   unsigned short m_start, m_end, max;
   for (int i = 0; i < 128; i++) {
      map[i] = malloc(sizeof(unsigned short));
      map[i][0] = 0; // This first index will indicate the size of the allocated array
   }
   
   while (1) {
      if (s[p] == '\n' || s[p] == '\0') {
         break;
      }
      ch = (unsigned char) s[p];
      map[ch][0] += 1;
      map[ch] = realloc(map[ch], (map[ch][0] + 1) * sizeof(unsigned short));
      map[ch][map[ch][0]] = p;
   }

   for (int i = 0; i < 128; i++) {
     if (map[i][0] < 2) {
         continue;
      } 
      for (int j = 1; j < map[i][map[i][0]]; j++) {
         head = j;
         tail = j+1;
         is_pal = true;
         while (1) {
            if (head == tail || head > tail) {
               break;
            }
            if (s[head] != s[tail]) {
               is_pal = false;
               break;
            }
            head += 1;
            tail -= 1;
         }
         if (is_pal) {
            unsigned short t_start = map[i][j];
            unsigned short t_end = map[i][j+1];

            if ((t_end - t_start) > max) { 
               max = t_end - t_start; 
               m_start = t_start;
               m_end = t_end;
            }
         }

      }
   }
   return substring(s, m_start, m_end);
}

int main () {
   char* line = NULL;
   size_t buff = 1000;
   
   while (1) {
      getline(&line, &buff, stdin);
      if (strcmp(line, "exit\n") == 0 || strcmp(line, "exit\n")) {
         break;
      }
      char* pal = longestPalindrome(line);
      printf("Calculated palyndrome: %s", pal);
   }
   return 0;
}
