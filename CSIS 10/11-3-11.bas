GOSUB Print.Headings
GOSUB Read.Process
GOSUB Print.Results
END

Print.Headings:
H1$ = "  BIWEEKLY PAYROLL REPORT - J. Gavin Ray"
H2$ = "Employee       Gross       Federal    Net"
H3$ = "Number         Pay         Tax        Income"
H4$ = "--------       -------     -------    ------"
D1$ = "###            ####.##      ###.##    ###.##"
D2$ = "#,###.##"
RETURN


Read.Process:
PRINT H1$
PRINT
PRINT H2$
PRINT H3$
PRINT H4$


DO
    READ Employee, Dependants, Rate, Hours.Worked
    IF Employee = 999 THEN EXIT DO
    Overtime.Hours = Hours.Worked - 80
    Gross.Pay = (Rate * Hours.Worked) + Overtime.Pay
    Total.Gross = Total.Gross + Gross.Pay
    IF Gross.Pay - (Dependants * 40.46) <= 0 THEN
        Federal.Tax = 0
    ELSE
        Federal.Tax = 0.26 * (Gross.Pay - (Dependants * 40.46))
    END IF
    Total.Tax = Total.Tax + Federal.Tax
    Net.Pay = Gross.Pay - Federal.Tax
    Total.Net = Total.Net + Net.Pay
    PRINT USING D1$; Employee, Gross.Pay, Federal.Tax, Net.Pay

LOOP
RETURN

Print.Results:
PRINT
PRINT "Total Gross Pay =========> "; USING D2$; Total.Gross
PRINT "Total Taxes Withholding => "; USING D2$; Total.Tax
PRINT "Total Net Pay ===========> "; USING D2$; Total.Net
RETURN

DATA 123,2,12.5,80
DATA 124,1,8.8,100
DATA 125,1,13,80
DATA 126,9,6.5,20
DATA 999,0,0,0,0
