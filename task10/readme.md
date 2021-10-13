# Pset0
Uploaded scratch file

# Pset1
## Mario
```
#include <cs50.h>
#include <stdio.h>

int main(void)
{
    int height; 
    do
    {
        height = get_int("Height: ");
    }
    while (height < 1 || height > 8);  

    for (int row = 0; row < height; row++) 
    {
        for (int space = height - row - 1; space > 0; space--) 
        {
            printf(" ");
        }
        for (int hash = 0; hash < row + 1; hash++) 
        {
            printf("#");
        }
        printf("\n");
    }
}
```

# Cash
```
#include <stdio.h>
#include <cs50.h>
#include <math.h>

int main(void)
{
    int count = 0;   
    float change; 
    do
    {
        change = get_float("Change owed: ");  
    }
    while (change < 0);   
    int cent = round(change * 100); 
    while (cent >= 25)
    {
        cent = cent - 25; 
        count++;  
    }
    while (cent >= 10)
    {
        cent = cent - 10; 
        count++;      
    }
    while (cent >= 5)
    {
        cent = cent - 5;    
        count++;  
    }
    while (cent >= 1)
    {
        cent = cent - 1;  
        count++;     
    }
    printf("%i\n", count);
}
```

# Pset2
## Readability
```
#include <stdio.h>
#include <cs50.h>
#include <math.h>
#include <string.h>
#include <ctype.h>
int main(void)
{
  int count_letter = 0;
  int count_word = 1;
  int count_sentence = 0;
  string text=get_string("Text:");
  
  int text_length = strlen(text);
  for (int i=0; i<text_length; i++)
  {
      if(isalpha(text[i]))
      {
          count_letter++;
      }
  }
  for (int i=0; i<text_length; i++)
  {
      if(isspace(text[i]))
      {
          count_word++;
      }
  }
  for (int i=0; i<text_length; i++)
  {
      if (text[i] == '.' || text[i] == '?' || text[i] == '!')
      {
          count_sentence++;
      }
  }
  float calc = (0.0588 * count_letter /count_word * 100) - (0.296 * count_sentence / count_word * 100)  - 15.8;
  int index = round(calc);
  if (index<1)
  {
      printf("Before Grade 1\n");
  }
  else if (index>16)
  {
      printf("Grade 16+\n");
  }
  else
  {
      printf("Grade %i\n", index);
  }
}
```


