#include <stdio.h>
#include <stdint.h>
	
int32_t mas1 [] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};// Массив 1
int32_t mas2 [] = {1, 10, 12, 14, 11, 13, 9, 4, 17, 15};// Массив 2

int32_t result_out[] = {0};
int32_t result[] = {0}; // Пустой массив


extern void Search_Zero(int32_t* mas_in,int32_t* mas_in2, int32_t* result_out);// Подключение подпрограммы из ассемблера

int main(void)// Начало программы 
{

    Search_Zero(mas1,mas2, result);// Вызов функций
	  

	   while(1)
{


    int i=0;
    int j=0;
    int s=0;
     for(i=0; i<10; i++)
    {
        for(j=0; j<10; j++)
        {
            if(mas1[i]==mas2[j])
 
          {
              s=s+1;
           }               
        }
    }

            result_out[0]=s;
	
}
		return 0;
		 	
}	
