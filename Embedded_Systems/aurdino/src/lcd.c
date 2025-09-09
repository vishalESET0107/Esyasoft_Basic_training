#include <arduino.h>
#include <avr/io.h>
#include <util/delay.h>

#define DATA_PIND7 PD7

#define DATA_PIND6 PBO

#define DATA_PINDS PB1
#define DATA_PIND4 PB2
#define ENABLE PB3

#define DATA_RS 

void lcd_command(unsigned char cmd){
            PORTB &= ~(1<<DATA_RS); // rs=0 for cmd
           
            if (cmd & 0x10){
                PRTB |=(1<<DATA_PIND4);
            }
            else {
                PORTB &= ~(1<<DATA_PIND4);
            }
             if (cmd & 0x20) PORTB |= (1<<DATA_PIND5); else PORTB &= ~(1<<DATA_PIND5);
            if (cmd & 0x40) PORTB |= (1<<DATA_PIND6); else PORTB &= ~(1<<DATA_PIND6);
            if (cmd & 0x80) PORTD |= (1<<DATA_PIND7); else PORTD &= ~(1<<DATA_PIND7);  
            lcd_data(); 
            if (cmd & 0x10) PORTB |= (1<<DATA_PIND4); else PORTB &= ~(1<<DATA_PIND4);
            if (cmd & 0x20) PORTB |= (1<<DATA_PIND5); else PORTB &= ~(1<<DATA_PIND5);
            if (cmd & 0x40) PORTB |= (1<<DATA_PIND6); else PORTB &= ~(1<<DATA_PIND6);
            if (cmd & 0x80) PORTD |= (1<<DATA_PIND7); else PORTD &= ~(1<<DATA_PIND7);
            lcd_data(); 
                   
}
unsigned char data

void lcd_init(){

    _delay_ms(200);
    lcd_command(0x02);
    lcd_command(0x28);
    lcd_command(0x2C);
    lcd_command(0x06);
    lcd_command(0x01);
    _delay_ms(200);


    
}

void lcd_print(char *str){

}

int main(void){

    DDRB |= 0XFF;
    DDRD |= (1<<D7);



}