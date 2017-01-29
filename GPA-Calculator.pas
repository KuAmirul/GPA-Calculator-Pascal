program gpa_calculator;
uses crt;

var name, gender, status: string;
    grade1, grade2, grade3, grade4, grade5 : string;

    numb_students, option, id_numb : integer;
    marks1, marks2, marks3, marks4, marks5 : integer;
    hours1, hours2, hours3, hours4, hours5 : integer;

    gradehour, gpa, t_point, t_hours : real;
    point1,point2,point3,point4,point5 : real;
    average,standev,variance: real;

   YN : char;

//______________________________________________________________________________
procedure main_menu;
begin
          clrscr;
     
writeln(' #   #          ##                               ');
writeln(' # # #   ###     #     ###    ###   ## #    ###  ');
writeln(' # # #  #####    #    #      #   #  # # #  ##### ');
writeln(' ## ##  #        #    #      #   #  # # #  #     ');
writeln(' #   #   ###    ###    ###    ###   #   #   ###   ');
                                                 
     writeln;
     writeln('-----------------------------WELCOME TO THE GPA CALCULATOR----------------------'); writeln();
     writeln('1.Add Students Records.'); writeln();
     writeln('2.Help.'); writeln();
     writeln('3.Exit'); writeln(); writeln(); writeln(); writeln();
     write('Please enter option number:  ');readln(option);
     clrscr;
end;

procedure avgVarSd;
begin
average := (marks1+marks2+marks3+marks4+marks5)/5 ;
standev := sqrt((sqr(marks1)+sqr(marks2)+sqr(marks3)+sqr(marks4)+sqr(marks5))/5 - average);
variance := sqr(standev);
end;

procedure add_record;
begin
             clrscr;
        write('Name:  '); readln(name); write('ID Number:  '); readln(id_numb); write('Gender <M/F>:  '); readln(gender); writeln();
//------------------------------------------------------------------------------
        write('Enter Physics Mark     :  '); readln(marks1);
        write('Credit Hour            :  '); readln(hours1); writeln();
        case marks1 of
             85..100  : point1:= 4.00;
             80..84 : point1:= 3.75;
             75..79 : point1:= 3.50;
             65..74 : point1:= 3.00;
             55..64 : point1:= 2.50;
             50..54 : point1:= 2.00;
             45..49 : point1:= 1.50;
             40..44 : point1:= 1.00
        else
            point1:= 0.00;
        end;
        case marks1 of
             85..100  : grade1:= 'A';
             80..84 : grade1:= 'A-';
             75..79 : grade1:= 'B+';
             65..74 : grade1:= 'B';
             55..64 : grade1:= 'C+';
             50..54 : grade1:= 'C';
             45..49 : grade1:= 'D+';
             40..44 : grade1:= 'D'
        else
            grade1:= 'F';
        end;
//------------------------------------------------------------------------------
        write('Enter Chemistry Mark   :  '); readln(marks2);
        write('Credit Hour            :  '); readln(hours2); writeln();
        case marks2 of
             85..100  : point2:= 4.00;
             80..84 : point2:= 3.75;
             75..79 : point2:= 3.50;
             65..74 : point2:= 3.00;
             55..64 : point2:= 2.50;
             50..54 : point2:= 2.00;
             45..49 : point2:= 1.50;
             40..44 : point2:= 1.00
        else
            point2:= 0.00;
        end;
        case marks2 of
             85..100  : grade2:= 'A';
             80..84 : grade2:= 'A-';
             75..79 : grade2:= 'B+';
             65..74 : grade2:= 'B';
             55..64 : grade2:= 'C+';
             50..54 : grade2:= 'C';
             45..49 : grade2:= 'D+';
             40..44 : grade2:= 'D'
        else
            grade2:= 'F';
        end;
//------------------------------------------------------------------------------
        write('Enter Calculus Mark    :  '); readln(marks3);
        write('Credit Hour            :  '); readln(hours3); writeln();
        case marks3 of
             85..100  : point3:= 4.00;
             80..84 : point3:= 3.75;
             75..79 : point3:= 3.50;
             65..74 : point3:= 3.00;
             55..64 : point3:= 2.50;
             50..54 : point3:= 2.00;
             45..49 : point3:= 1.50;
             40..44 : point3:= 1.00
        else
            point3:= 0.00;
        end;
        case marks3 of
             85..100  : grade3:= 'A';
             80..84 : grade3:= 'A-';
             75..79 : grade3:= 'B+';
             65..74 : grade3:= 'B';
             55..64 : grade3:= 'C+';
             50..54 : grade3:= 'C';
             45..49 : grade3:= 'D+';
             40..44 : grade3:= 'D'
        else
            grade3:= 'F';
        end;
//------------------------------------------------------------------------------
        write('Enter English Mark     :  '); readln(marks4);
        write('Credit Hour            :  '); readln(hours4); writeln();
        case marks4 of
             85..100  : point4:= 4.00;
             80..84 : point4:= 3.75;
             75..79 : point4:= 3.50;
             65..74 : point4:= 3.00;
             55..64 : point4:= 2.50;
             50..54 : point4:= 2.00;
             45..49 : point4:= 1.50;
             40..44 : point4:= 1.00
        else
            point4:= 0.00;
        end;
        case marks4 of
             85..100  : grade4:= 'A';
             80..84 : grade4:= 'A-';
             75..79 : grade4:= 'B+';
             65..74 : grade4:= 'B';
             55..64 : grade4:= 'C+';
             50..54 : grade4:= 'C';
             45..49 : grade4:= 'D+';
             40..44 : grade4:= 'D'
        else
            grade4:= 'F';
        end;
//------------------------------------------------------------------------------
        write('Enter Programming Mark  :  '); readln(marks5);
        write('Credit Hour            :  '); readln(hours5); writeln();
        case marks5 of
             85..100 : point5:= 4.00;
             80..84 : point5:= 3.75;
             75..79 : point5:= 3.50;
             65..74 : point5:= 3.00;
             55..64 : point5:= 2.50;
             50..54 : point5:= 2.00;
             45..49 : point5:= 1.50;
             40..44 : point5:= 1.00
        else
            point5:= 0.00;
        end;
        case marks5 of
             85..100 : grade5:= 'A';
             80..84 : grade5:= 'A-';
             75..79 : grade5:= 'B+';
             65..74 : grade5:= 'B';
             55..64 : grade5:= 'C+';
             50..54 : grade5:= 'C';
             45..49 : grade5:= 'D+';
             40..44 : grade5:= 'D'
        else
            grade5:= 'F';
        end;

       if (marks1> 100) or (marks2> 100) or (marks3> 100) or (marks4> 100) or (marks5> 100) then
       begin
            writeln('Invalid input entered. Please Try Again.'); readln;
            main_menu;
       end;

       

       t_point:= point1+ point2+ point3+ point4+ point5 ;
       t_hours:= hours1+ hours2+ hours3+ hours4+ hours5 ;
       gradehour:= point1*hours1+ point2*hours2+ point3*hours3+ point4*hours4+ point5*hours5;
       gpa:= gradehour / t_hours ;

       if gpa >= 3.50 then
           status := 'Dean List'
        else
        if gpa >= 3.00  then
            status := 'Good Standing'
        else
        if gpa >= 2.00  then
            status := 'Pass'
        else
        if gpa >= 1.00  then
            status := 'Probation'
        else
        if gpa >= 0.00  then
            status := 'Dismissal' ;
end;

//______________________________________________________________________________
procedure result_slip;
begin
       writeln('--------------------------------- RESULTS SLIP ---------------------------------');
       writeln('================================================================================');
       write('Name:  ',name); write(' ID Number:  ',id_numb); write(' Gender:  ',gender); writeln; writeln;

       writeln('Subjects     Mark     Credit Hour     Grade   Points      '); textcolor(yellow);
       textcolor(yellow);
       writeln('Physics       ',marks1,'         ',hours1,'              ',grade1,'       ',point1:2:2); write;
       writeln('Chemistry     ',marks2,'         ',hours2,'              ',grade2,'       ',point2:2:2); write;
       writeln('Calculus      ',marks3,'         ',hours3,'              ',grade3,'       ',point3:2:2); write;
       writeln('English       ',marks4,'         ',hours4,'              ',grade4,'       ',point4:2:2); write;
       writeln('Programing    ',marks5,'         ',hours5,'              ',grade5,'       ',point5:2:2); write;

       writeln;
       writeln('Total Point : ', t_point :2:2);
       writeln('Your GPA : ', gpa :2:2);
       writeln('Your Status : ',status);
       writeln(); numb_students:=numb_students+ 1;
       writeln('Total students added: ',numb_students);

     textcolor(white);textbackground(black);
     writeln();
     writeln();
     writeln('================================================================================'); writeln();

     write('Do you have any more marks? Y/N[not case sensitive] :   '); readln(YN);


     if YN = 'y' then
     begin
          delay(1000);
          main_menu;
     end;
     if YN = 'n' then
     begin
          delay(1000);
          main_menu;
     end;

     readln;
end;

//______________________________________________________________________________
procedure help;
begin

writeln('ooooo ooooo ooooooooooo ooooo       oooooooooo                            ');
writeln(' 888   888   888    88   888         888    888                           ');
writeln(' 888ooo888   888ooo8     888         888oooo88                            ');
writeln(' 888   888   888    oo   888      o  888                                  ');
writeln('o888o o888o o888ooo8888 o888ooooo88 o888o                                 ');
writeln();

            writeln('----------------------------WELCOME TO HELP SECTION-----------------------------');
            writeln('This program calculates the Grade Point Average(GPA)for students according ');
            writeln('to their marks and credit hours for five subjects which are Programming,');
            writeln('Chemistry, Physics,Calculus and English.');
            writeln();
            writeln('Guidelines for marks,grades,points and status :');
            textcolor(white); textbackground(black);
            writeln('Marks     Grades    Points     Status         ');
            writeln('85-100       A       4.00     Dean list       ');
            writeln('80-84.9      A-      3.75     Dean list       ');
            writeln('75-79.9      B+      3.50     Dean list       ');
            writeln('65-74.9      B       3.00    Good Standing    ');
            writeln('55-64.9      C+      2.50       Pass          ');
            writeln('50-54.9      C       2.00       Pass          ');
            writeln('45-49.9      D+      1.50     Probation       ');
            writeln('40-44.9      D       1.00     Probation       ');
            writeln('0-39.9       F       0.00     Dismissal       ');

            textcolor(white); textbackground(black); writeln();
            write('Return to main menu? Y/N :   '); readln(YN);

            if YN = 'y' then
               begin
                    delay(500);
                    main_menu ;
               end;
            if YN = 'n' then
               begin
writeln('  ___|                 | |                | ');
writeln(' |      _ \   _ \   _` | __ \  |   |  _ \ | ');
writeln(' |   | (   | (   | (   | |   | |   |  __/_| ');
writeln('\____|\___/ \___/ \__,_|_.__/ \__, |\___|_) ');
writeln('                              ____/         ');
                    delay(1000);
                    halt;
            end;
end;

//______________________________________________________________________________
procedure quit();
begin
     write('Are you sure you want to exit? Y/N   '); readln(YN);

            if YN='y' then
            begin
            
writeln('  ___|                 | |                | ');
writeln(' |      _ \   _ \   _` | __ \  |   |  _ \ | ');
writeln(' |   | (   | (   | (   | |   | |   |  __/_| ');
writeln('\____|\___/ \___/ \__,_|_.__/ \__, |\___|_) ');
writeln('                              ____/         ');
                delay(1000);
                halt;
            end;
            if YN='n' then
            begin
                 delay(1000);
                 main_menu;
            end;
end;



//______________________________________________________________________________

begin
     main_menu;

     if option= 1 then
     begin
     numb_students:=0;
     add_record;
     result_slip;
     end;

    if option= 2 then
     help;

    if option= 3 then
        quit;

end.


