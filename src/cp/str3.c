#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int lengthOfLongestSubstring (char* s);
int main (int argc, char* argv[]) {
   char* line = NULL;
   size_t buffsize = 5;

   while (1) {
      getline(&line, &buffsize, stdin);
      if (strcmp(line, "exit\0") == 0) {
         break;
      }
      printf("Line input %s\n", line);
      int size = lengthOfLongestSubstring(line);
      printf("Longest string: %d\n", size);
      
   }
   free(line);
   return 0;
}
int lengthOfLongestSubstring(char* str) {
   int max = 0;
   int len = 0;

   unsigned int p1 = 0, p2 = 0;
   unsigned int map[127];
   unsigned char ch;

   for (int i = 0; i < 127; i++) {
      map[i] = -1;
   }
   
   while (1) {
      if (str[p2] == '\0' || str[p2] == '\n') {
         break;
      }
      ch = (unsigned char) str[p2];
      if (map[ch] >= p1 && map[ch] < p2) {
         p1 = map[ch] + 1;
      }
      map[ch] = p2;
      p2 += 1;
      len = (p2 - p1);
      if (len > max) max = len;
   }
  return max;

}
