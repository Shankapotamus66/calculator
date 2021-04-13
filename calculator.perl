#!/usr/bin/perl

use strict;
use warnings;
use Switch;
use Math::Trig;
use Term::ANSIColor;

my $first;
my $second;
my $result;
my $answer = 0;
my $answer2 = 0;
my $answer3 = 0;
my $flag = 0; #This is set when a previous gave an answer
my $operation = 0;
my $operator;
#my $degrees; #dont need
my $radians;
my $lnFlag = 1;
my $count = 0;

my @stack;
push(@stack, ($answer2, $answer2));
#$answer = pop(@stack);     #debug
#print "Stack: @stack\n";   #debug
#print "Answer: $answer\n"; #debug

print "Scientific Caclulator\n";

menu();
print "║ Select an operation to perform:\n║ ";
my $var = <STDIN>;
print "╚═════════════════════════════════\n\n";
print "\n";
while ($var != 15) {
    switch ($var) {
        case 1 {
            #print "case 1\n";
            print color('bright_yellow');
            print "╔════════════════════════════════╗\n"; 
            print "║            Addition            ║\n";
            print "╠════════════════════════════════╝\n";
            #print "\n[Addition]\n";
            if ($flag == 1) {
                #$flag == 1: there is answer now check if it is 0 or something else
                if ($answer == 0) {
                    #$answer == 0: has to be checked because Perl thinks 0 means nothing there when there is a value
                    print "║ Enter number to add\n";
                    print "║ $answer + ";
                    $first = $answer;   #for display reasons
                    $second = is_num();
                    chomp($second);
                    $result = eval "$answer + $second";
                    print "║ $answer + $second = $result\n";
                    print "╚═════════════════════════════════\n";
                    $answer = $result;
                    push(@stack, $answer);
                    $count++;
                    $operation = 0;
                    $operator = '+';
                }
                elsif ($answer) {
                    print "║ Enter number to add\n";
                    print "║ $answer + ";
                    $first = $answer;   #for display reasons
                    $second = is_num();
                    chomp($second);
                    $result = eval "$answer + $second";
                    print "║ $answer + $second = $result\n";
                    print "╚═════════════════════════════════\n";
                    $answer = $result;
                    push(@stack, $answer);
                    $count++;
                    $operation = 0;
                    $operator = '+';

                }
            }
            else {
                print "║ Enter first number to add\n║ ";
                $first = is_num();
                chomp($first);
                print "║ Enter second number to add\n";
                print "║ $first + ";
                $second = is_num();
                chomp($second);
                $result = eval "$first + $second";
                print "║ $first + $second = $result\n";
                print "╚═════════════════════════════════\n";
                $answer = $result;
                push(@stack, $answer);
                $count++;
                $flag = 1;
                $operation = 0;
                $operator = '+';
            }
        }
        case 2 {
            #print "case 2\n";
            print color('bright_yellow');
            print "╔════════════════════════════════╗\n";
            print "║           Subtraction          ║\n";
            print "╠════════════════════════════════╝\n";
            #print "\n[Subtraction]\n";
            if ($flag == 1) {
                if ($answer == 0) {
                    print "║ Enter number to subtract\n";
                    print "║ $answer - ";
                    $first = $answer;   #for display reasons
                    $second = is_num();
                    chomp($second);
                    $result = eval "$answer - $second";
                    print "║ $answer - $second = $result\n";
                    print "╚═════════════════════════════════\n";
                    $answer = $result;
                    push(@stack, $answer);
                    $count++;
                    $operation = 0;
                    $operator = '-';
                }
                elsif ($answer) {
                    print "║ Enter number to subtract\n";
                    print "║ $answer - ";
                    $first = $answer;   #for display reasons
                    $second = is_num();
                    chomp($second);
                    $result = eval "$answer - $second";
                    print "║ $answer - $second = $result\n";
                    print "╚═════════════════════════════════\n";
                    $answer = $result;
                    push(@stack, $answer);
                    $count++;
                    $operation = 0;
                    $operator = '-';
                }
            }
            else {
                print "║ Enter first number to subtract\n║ ";
                $first = is_num();
                chomp($first);
                print "║ Enter second number to subtract\n";
                print "║ $first - ";
                $second = is_num();
                chomp($second);
                $result = eval "$first - $second";
                print "║ $first - $second = $result\n";
                print "╚═════════════════════════════════\n";
                $answer = $result;
                push(@stack, $answer);
                $count++;
                $flag = 1;
                $operation = 0;
                $operator = '-';
            }
        }
        case 3 {
            #print "case 3\n";
            print color('bright_yellow');
            print "╔════════════════════════════════╗\n";
            print "║         Multiplication         ║\n";
            print "╠════════════════════════════════╝\n";
           #print "\n[Multiplication]\n";
            if ($flag == 1) {
                if ($answer == 0) {
                    print "║ Enter number to multiply\n";
                    print "║ $answer * ";
                    $first = $answer;   #for display reasons
                    $second = is_num();
                    chomp($second);
                    $result = eval "$answer * $second";
                    print "$answer * $second = $result\n";
                    print "╚═════════════════════════════════\n";
                    $answer = $result;
                    push(@stack, $answer);
                    $count++;
                    $operation = 0;
                    $operator = '*';
                }
                elsif ($answer) {
                    print "║ Enter number to multiply\n";
                    print "║ $answer * ";
                    $first = $answer;   #for display reasons
                    $second = is_num();
                    chomp($second);
                    $result = eval "$answer * $second";
                    print "$answer * $second = $result\n";
                    print "╚═════════════════════════════════\n";
                    $answer = $result;
                    push(@stack, $answer);
                    $count++;
                    $operation = 0;
                    $operator = '*';
                }
            }
            else {
                print "║ Enter first number to multiply\n║ ";
                $first = is_num();
                chomp($first);
                print "║ Enter second number to multiply\n";
                print "║ $first * ";
                $second = is_num();
                chomp($second);
                $result = eval "$first * $second";
                print "║ $first * $second = $result\n";
                print "╚═════════════════════════════════\n";
                $answer = $result;
                push(@stack, $answer);
                $count++;
                $flag = 1;
                $operation = 0;
                $operator = '*';
            }
        }
        case 4 {
            #print "case 4\n";
            print color('bright_yellow');
            print "╔════════════════════════════════╗\n";
            print "║            Division            ║\n";
            print "╠════════════════════════════════╝\n";
            #print "\n[Division]\n";
            if ($flag == 1) {
                if ($answer == 0) {
                    print "║ Enter number to divide\n";
                    print "║ $answer / ";
                    $first = $answer;   #for display reasons
                    $second = is_num();
                    chomp($second);
                    if ($second == 0) {
                        print "║ Cannot divide by 0\n";
                        print "║ Returning to MENU\n";
                        print "╚═════════════════════════════════\n";
                    }
                    else {
                        $result = eval "$answer / $second";
                        print "║ $answer / $second = $result\n";
                        print "╚═════════════════════════════════\n";
                        $answer = $result;
                        push(@stack, $answer);
                        $count++;
                        $operation = 0;
                        $operator = '/';
                    }
                }
                elsif ($answer) {
                    print "║ Enter number to divide\n";
                    print "║ $answer / ";
                    $first = $answer;   #for display reasons
                    $second = is_num();
                    chomp($second);
                    if ($second == 0) {
                        print "║ Cannot divide by 0\n";
                        print "║ Returning to MENU\n";
                        print "╚═════════════════════════════════\n";
                    }
                    else {
                        $result = eval "$answer / $second";
                        print "║ $answer / $second = $result\n";
                        print "╚═════════════════════════════════\n";
                        $answer = $result;
                        push(@stack, $answer);
                        $count++;
                        $operation = 0;
                        $operator = '/';
                    }
                }
            }
            else {
                print "║ Enter first number to divide\n║ ";
                $first = is_num();
                chomp($first);
                print "║ Enter second number to divide\n";
                print "║ $first / ";
                $second = is_num();
                chomp($second);
                if ($second == 0) {
                    print "║ Cannot divide by 0\n";
                    print "║ Returning to MENU\n";
                    print "╚═════════════════════════════════\n";
                }
                else {
                    $result = eval "$first / $second";
                    print "║ $first / $second = $result\n";
                    print "╚═════════════════════════════════\n";
                    $answer = $result;
                    push(@stack, $answer);
                    $count++;
                    $flag = 1;
                    $operation = 0;
                    $operator = '/';
                }
            }
        }
        case 5 {
            #print "case 5\n";
            print color('bright_yellow');
            print "╔════════════════════════════════╗\n";
            print "║        Sine (in degrees)       ║\n";
            print "╠════════════════════════════════╝\n";
            #print "\n[Sine (in degrees)]\n";
            if ($flag == 1) {
                if ($answer == 0) {
                    $radians = deg2rad($answer);
                    $first = $answer;   #for display reasons
                    $result = sin($radians);
                    print "║ sin($answer) = $result\n";
                    print "╚═════════════════════════════════\n";
                    $answer = $result;
                    push(@stack, $answer);
                    $count++;
                    $operation = 1;
                    $operator = 'sin(';
                }
                elsif ($answer) {
                    $radians = deg2rad($answer);
                    $first = $answer;   #for display reasons
                    $result = sin($radians);
                    print "║ sin($answer) = $result\n";
                    print "╚═════════════════════════════════\n";
                    $answer = $result;
                    push(@stack, $answer);
                    $count++;
                    $operation = 1;
                    $operator = 'sin(';
                }
            }
            else {
                print "║ Enter a number in degrees\n║ ";
                $first = is_num();
                chomp($first);
                $radians = deg2rad($first);
                $result = sin($radians);
                print "║ sin($first) = $result\n";
                print "╚═════════════════════════════════\n";
                $answer = $result;
                push(@stack, $answer);
                $count++;
                $flag = 1;
                $operation = 1;
                $operator = 'sin(';
            }
        }
        case 6 {
            #print "case 6\n";
            print color('bright_yellow');
            print "╔════════════════════════════════╗\n";
            print "║       Cosine (in degrees)      ║\n";
            print "╠════════════════════════════════╝\n";
            #print "\n[Cosine (in degrees)]\n";
            if ($flag == 1) {
                if ($answer == 0) {
                    $radians = deg2rad($answer);
                    $first = $answer;   #for display reasons
                    $result = cos($radians);
                    print "║ cos($answer) = $result\n";
                    print "╚═════════════════════════════════\n";
                    $answer = $result;
                    push(@stack, $answer);
                    $count++;
                    $operation = 1;
                    $operator = 'cos(';
                }
                elsif ($answer) {
                    $radians = deg2rad($answer);
                    $first = $answer;   #for display reasons
                    $result = cos($radians);
                    print "║ cos($answer) = $result\n";
                    print "╚═════════════════════════════════\n";
                    $answer = $result;
                    push(@stack, $answer);
                    $count++;
                    $operation = 1;
                    $operator = 'cos(';
                }
            }
            else {
                print "║ Enter a number in degrees\n║ ";
                $first = is_num();
                chomp($first);
                $radians = deg2rad($first);
                $result = cos($radians);
                print "║ cos($first) = $result\n";
                print "╚═════════════════════════════════\n";
                $answer = $result;
                push(@stack, $answer);
                $count++;
                $flag = 1;
                $operation = 1;
                $operator = 'cos(';
            }
        }
        case 7 {
            #print "case 7\n";
            print color('bright_yellow');
            print "╔════════════════════════════════╗\n";
            print "║      Tangent (in degrees)      ║\n";
            print "╠════════════════════════════════╝\n";
            #print "\n[Tangent (in degrees)]\n";
            if ($flag == 1) {
                if ($answer == 0) {
                    $radians = deg2rad($answer);
                    $first = $answer;   #for display reasons
                    $result = tan($radians);
                    print "║ tan($answer) = $result\n";
                    print "╚═════════════════════════════════\n";
                    $answer = $result;
                    push(@stack, $answer);
                    $count++;
                    $operation = 1;
                    $operator = 'tan(';
                }
                elsif ($answer) {
                    $radians = deg2rad($answer);
                    $first = $answer;   #for display reasons
                    $result = tan($radians);
                    print "║ tan($answer) = $result\n";
                    print "╚═════════════════════════════════\n";
                    $answer = $result;
                    push(@stack, $answer);
                    $count++;
                    $operation = 1;
                    $operator = 'tan(';
                }
            }
            else {
                print "║ Enter a number in degrees\n║ ";
                $first = is_num();
                chomp($first);
                $radians = deg2rad($first);
                $result = tan($radians);
                print "║ tan($first) = $result\n";
                print "╚═════════════════════════════════\n";
                $answer = $result;
                push(@stack, $answer);
                $count++;
                $flag = 1;
                $operation = 1;
                $operator = 'tan(';
            }
        }
        case 8 {
            #print "case 8\n";
            print color('bright_yellow');
            print "╔════════════════════════════════╗\n";
            print "║           Exponential          ║\n";
            print "╠════════════════════════════════╝\n";
            #print "\n[Exponential]\n";
            if ($flag == 1) {
                if ($answer == 0) {
                    $first = $answer;   #for display reasons
                    $result = exp $answer;
                    print "║ exp($answer) = $result\n";
                    print "╚═════════════════════════════════\n";
                    $answer = $result;
                    push(@stack, $answer);
                    $count++;
                    $operation = 1;
                    $operator = 'exp(';
                }
                elsif ($answer) {
                    $first = $answer;   #for display reasons
                    $result = exp $answer;
                    print "║ exp($answer) = $result\n";
                    print "╚═════════════════════════════════\n";
                    $answer = $result;
                    push(@stack, $answer);
                    $count++;
                    $operation = 1;
                    $operator = 'exp(';
                }
            }
            else {
                print "║ Enter a number to exp()\n║ ";
                $first = is_num();
                chomp($first);
                $result = exp $first;
                print "║ exp($first) = $result\n";
                print "╚═════════════════════════════════\n";
                $answer = $result;
                push(@stack, $answer);
                $count++;
                $flag = 1;
                $operation = 1;
                $operator = 'exp(';
            }
        }
        case 9 {
            #print "case 9\n";
            $lnFlag = 1;
            print color('bright_yellow');
            print "╔════════════════════════════════╗\n";
            print "║       Natural Logarithm        ║\n";
            print "╠════════════════════════════════╝\n";
            #print "\n[Natural Logarithm]\n";
            if ($flag == 1) {
                if ($answer == 0) {
                    $first = $answer;   #for display reasons
                    if ($answer <= 0) {
                        print "║ Must be a value greater than 0 for ln()\n";
                        print "║ Returning to MENU\n";
                        print "╚═════════════════════════════════\n";
                    }
                    else {
                        $result = log10($answer);
                        print "║ ln($answer) = $result\n";
                        print "╚═════════════════════════════════\n";
                        $answer = $result;
                        push(@stack, $answer);
                        $count++;
                        $operation = 1;
                        $operator = 'ln(';
                    }
                }
                elsif ($answer) {
                    $first = $answer;   #for display reasons
                    if ($answer <= 0) {
                        print "║ Must be a value greater than 0 for ln()\n";
                        print "║ Returning to MENU\n";
                        print "╚═════════════════════════════════\n";
                    }
                    else {
                        $result = log10($answer);
                        print "║ ln($answer) = $result\n";
                        print "╚═════════════════════════════════\n";
                        $answer = $result;
                        push(@stack, $answer);
                        $count++;
                        $operation = 1;
                        $operator = 'ln(';
                    }
                }
            }
            else {
                while ($lnFlag) {
                    print "║ Enter a number to ln()\n║ ";
                    $first = is_num();
                    chomp($first);
                    if ($first <= 0) {
                        print "║ Must be a value greater than 0 for ln()\n";
                        #print "╚═════════════════════════════════\n";
                    }
                    else {
                        $result = log10($first);
                        print "║ ln($first) = $result\n";
                        print "╚═════════════════════════════════\n";
                        $answer = $result;
                        push(@stack, $answer);
                        $count++;
                        $flag = 1;
                        $operation = 1;
                        $operator = 'ln(';
                        $lnFlag = 0;
                    }
                }
            }
        }
        case 10 {
            #print "case 10\n";
            print color('bright_yellow');
            print "╔════════════════════════════════╗\n";
            print "║       Square Root sqrt()       ║\n";
            print "╠════════════════════════════════╝\n";
            #print "\n[Square Root sqrt()]\n"; #use Math::Complex;
            if ($flag == 1) {
                if ($answer == 0) {
                    $first = $answer;   #for display reasons
                    $result = sqrt($answer);
                    print "║ sqrt($answer) = $result\n";
                    print "╚═════════════════════════════════\n";
                    $answer = $result;
                    push(@stack, $answer);
                    $count++;
                    $operation = 1;
                    $operator = 'sqrt(';
                }
                elsif ($answer) {
                    $first = $answer;   #for display reasons
                    $result = sqrt($answer);
                    print "║ sqrt($answer) = $result\n";
                    print "╚═════════════════════════════════\n";
                    $answer = $result;
                    push(@stack, $answer);
                    $count++;
                    $operation = 1;
                    $operator = 'sqrt(';
                }
            }
            else {
                print "║ Enter a number to sqrt()\n║ ";
                $first = is_num();
                chomp($first);
                $result = sqrt($first);
                print "║ sqrt($first) = $result\n";
                print "╚═════════════════════════════════\n";
                $answer = $result;
                push(@stack, $answer);
                $count++;
                $flag = 1;
                $operation = 1;
                $operator = 'sqrt(';
            }
        }
        case 11 {
            #print "case 11\n";
            print color('bright_yellow');
            print "╔════════════════════════════════╗\n";
            print "║         Power of 2 sq()        ║\n";
            print "╠════════════════════════════════╝\n";
            #print "\n[Power of 2 sq()]\n";
            if ($flag == 1) {
                if ($answer == 0) {
                    $first = $answer;   #for display reasons
                    $result = $answer**2;
                    print "║ sq($answer) = $result\n";
                    print "╚═════════════════════════════════\n";
                    $answer = $result;
                    push(@stack, $answer);
                    $count++;
                    $operation = 1;
                    $operator = 'sq(';
                }
                elsif ($answer) {
                    $first = $answer;   #for display reasons
                    $result = $answer**2;
                    print "║ sq($answer) = $result\n";
                    print "╚═════════════════════════════════\n";
                    $answer = $result;
                    push(@stack, $answer);
                    $count++;
                    $operation = 1;
                    $operator = 'sq(';
                }
            }
            else {
                print "║ Enter a number to sq()\n║ ";
                $first = is_num();
                chomp($first);
                $result = $first**2;
                print "║ sq($first) = $result\n";
                print "╚═════════════════════════════════\n";
                $answer = $result;
                push(@stack, $answer);
                $count++;
                $flag = 1;
                $operation = 1;
                $operator = 'sq(';
            }
        }
        case 12 {
            #print "case 12\n";
            print color('bright_yellow');
            print "╔════════════════════════════════╗\n";
            print "║   Postitive to Negative (+/-)  ║\n";
            print "╠════════════════════════════════╝\n";
            #print "\n[Postitive to Negative (+/-)]\n"; #use Math::Complex;
            if ($flag == 1) {
                if ($answer == 0) {
                    $first = $answer;   #for display reasons
                    $result = $answer*-1;
                    print "║ -1 * ($answer) = $result\n";
                    print "╚═════════════════════════════════\n";
                    $answer = $result;
                    push(@stack, $answer);
                    $count++;
                    $operation = 2;
                    $operator = '';
                }
                elsif ($answer) {
                    $first = $answer;   #for display reasons
                    $result = $answer*-1;
                    print "║ -1 * ($answer) = $result\n";
                    print "╚═════════════════════════════════\n";
                    $answer = $result;
                    push(@stack, $answer);
                    $count++;
                    $operation = 2;
                    $operator = '';
                }
            }
            else {
                print "║ Enter a number to swap signs\n║ ";
                $first = is_num();
                chomp($first);
                $result = $first*-1;
                print "║ -1 * ($first) = $result\n";
                print "╚═════════════════════════════════\n";
                $answer = $result;
                push(@stack, $answer);
                $count++;
                $flag = 1;
                $operation = 2;
                $operator = '';
            }
        }
        case 13 {
            #print "case 13\n";
            print color('bright_yellow');
            print "╔════════════════════════════════╗\n";
            print "║  Calculator has been CLEARED   ║\n";
            print "╚════════════════════════════════╝\n";
            #print "\nThe Calculator has been CLEARED.\n";
            $answer = 0;
            $flag = 0;
            @stack = ();
            $count = 0;
        }
        case 14 {
            #print "case 14\n";
            print color('bright_yellow');
            print "╔════════════════════════════════╗\n";
            print "║   CANCELED last calculation    ║\n";
            #print "╚════════════════════════════════╝\n";
            #print "\nThe Calculator has been CLEARED.\n";
            #$answer = $answer3;
            #$answer2 = $answer3;
            if ($count > 0) {
                print "╚════════════════════════════════╝\n";
                $answer = pop(@stack);
                $answer = pop(@stack);
                $answer2 = pop(@stack);
                push(@stack, ($answer2, $answer));
                $count--;
                $operation = 3;
            }
            else {
                print "╠════════════════════════════════╣\n";
                print "║       Nothing to CANCEL        ║\n";
                print "╚════════════════════════════════╝\n";
            }

        }
        else {
            print color('bright_yellow');
            print "╔════════════════════════════════╗\n";
            print "║       NOT A PROPER INPUT       ║\n";
            print "╚════════════════════════════════╝\n";
            #print "NOT A PROPER INPUT\n";
        }
    }
    #print "Stack: @stack\n";   #debug
    #print "Count: $count\n";   #debug
    print "\n";
    print color('reset');
    menu();
    print "║ Select an operation to perform: \n║ ";
    $var = <STDIN>;
    print "╚═════════════════════════════════\n\n";
    
    #$answer3 = $answer2;
    $answer2 = $answer;
}

print color('bright_red');
print "╔════════════════════════════════╗\n";
print "║       EXITING CALCULATOR       ║\n";
print "╚════════════════════════════════╝\n";

sub menu {
    print "╔════════════════════════════════╗\n";
    print "╠════════════╣ Menu ╠════════════╣\n";
    print "║ 1.  Addition                   ║\n";
    print "║ 2.  Subtraction                ║\n";
    print "║ 3.  Multiplication             ║\n";
    print "║ 4.  Division                   ║\n";
    print "║ 5.  Sine (in Degrees)          ║\n";
    print "║ 6.  Cosine (in Degrees)        ║\n";
    print "║ 7.  Tangent (in Degrees)       ║\n";
    print "║ 8.  Exponential exp()          ║\n";
    print "║ 9.  Natural Logarithm (ln)     ║\n";
    print "║ 10. Square root (sqrt)         ║\n";
    print "║ 11. Power of 2 (sq)            ║\n";
    print "║ 12. Positive to Negative (+/-) ║\n";
    print "║ 13. Clear                      ║\n";
    print "║ 14. Cancel                     ║\n";
    print "║ 15. EXIT                       ║\n";
    print "╠════════════════════════════════╝\n";
    if ($flag == 1) {
        if ($operation == 0) {
            if ($answer == 0) {
                print color('bright_green');
                print "║ Previous ANS = $answer2\n";
                print "║ $first $operator $second = $answer\n";
                print "║ ANS = $answer\n";
                print color('reset');
                print "╠═════════════════════════════════\n";
            }
            elsif ($answer) {
                print color('bright_green');
                print "║ Previous ANS = $answer2\n";
                print "║ $first $operator $second = $answer\n";
                print "║ ANS = $answer\n";
                print color('reset');
                print "╠═════════════════════════════════\n";
            }
        }
        if ($operation == 1) {
            if ($answer == 0) {
                print color('bright_green');
                print "║ Previous ANS = $answer2\n";
                print "║ $operator$first) = $answer\n";
                print "║ ANS = $answer\n";
                print color('reset');
                print "╠═════════════════════════════════\n";
            }
            elsif ($answer) {
                print color('bright_green');
                print "║ Previous ANS = $answer2\n";
                print "║ $operator$first) = $answer\n";
                print "║ ANS = $answer\n";
                print color('reset');
                print "╠═════════════════════════════════\n";
            }
        }
        if ($operation == 2) {
            if ($answer == 0) {
                print color('bright_green');
                print "║ Previous ANS = $answer2\n";
                print "║ -1 * ($first) = $answer\n";
                print "║ ANS = $answer\n";
                print color('reset');
                print "╠═════════════════════════════════\n";
            }
            elsif ($answer) {
                print color('bright_green');
                print "║ Previous ANS = $answer2\n";
                print "║ -1 * ($first) = $answer\n";
                print "║ ANS = $answer\n";
                print color('reset');
                print "╠═════════════════════════════════\n";
            }
        }
        if ($operation == 3) {
            if ($answer == 0) {
                print color('bright_green');
                print "║ Previous ANS = $answer2\n";
                print "║ Canceled last operation\n";
                print color('reset');
                print "╠═════════════════════════════════\n";
            }
            elsif ($answer) {
                print color('bright_green');
                print "║ Previous ANS = $answer2\n";
                print "║ Canceled last operation\n";
                print "║ ANS = $answer\n";
                print color('reset');
                print "╠═════════════════════════════════\n";
            }
        }
    }
}

sub is_num {
    my $num = <STDIN>; # scalar context, and put into a private variable
    chomp $num;        # remove newline
    if (not length $num) { # check for empty string
        print "║ You didn't type anything. Retry!\n║ ";
        return is_num();
    }
    if ($num =~ /[^0.0-9.0]/) { # recurse on any non-digits
        print "║ You typed non-numeric characters. Restrict yourself to '0' through '9'. Retry!\n║ ";
        return is_num();
    }
    return $num;
}

sub log10  
{ 
    my $n = shift; 
      
    # using pre-defined log function 
    return log($n) / log(10); 
} 
