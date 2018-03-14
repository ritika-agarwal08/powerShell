function fizzbuzz([int]$start,[int]$stop,[int]$num = 5)
{
[int]$counter = 0
if($num -gt 0)
{
    if([int]$start -le [int]$stop -and [int]$start -ge 0 -and [int]$stop -ge 0)
    {
        for ($i = [int]$start; $i -le $stop; $i++)
        {
            ++$counter;
            if ($i % 3 -eq 0)
            {
                if ($i % 5 -eq 0)
                {
                    Write-Host -NoNewline "FizzBuzz "

                }
                else
                {
                    Write-Host -NoNewline "Fizz "
                }
            }
            elseif ($i % 5 -eq 0)
            {
                Write-Host -NoNewline "Buzz "
            }
            else
            {
                Write-Host -NoNewline "$i "
            }
            if ($counter % $num -eq 0)
            {
                Write-Host "`n"
            }
        }
        Write-Host "`n"
    }
    else
    {
        echo "Enter proper Range"
    }
}
else
{
    echo "Invalid number of result elements."
}
}

while(1)
{
Try
{
Do {
    [int]$Start = Read-Host 'Enter Start'
} Until ($Start)
Do {
    [int]$Stop = Read-Host 'Enter Stop'
} Until ($Stop)
[int]$num = Read-Host -Prompt 'Enter the number of result elements you want in a single line.'
if($num -eq '')
{
    fizzbuzz $start $stop
}
else
{
    fizzbuzz $start $stop $num
}
}
Catch
{
    "Exception Caught! please enter Integer Only."
    Break 
}
}