The following files are available:

        Warning!!!  If you already use R and have developed
        your own ".Rprofile" file, please don't overwrite your
        own with the one in this archive, when unzipping the
        archive file.

ReadMe.txt      this file

Rprogs.r        analytical functions for use in R

.Rprofile       same as Rprogs.r

Scripts.txt     description of analytical functions in Rprogs.r

xample1.r       R example no. 1 (from chapter 1)

mira1.dat       one season's data for Mira, for use with
                example file "xample1.r"

xample2.r       R example no. 2 (from chapter 2)

mloco2.dat      CO2 concentration data from Mauna Loa, for
                use with example file "xample2.r"

xample3.r       R example no.3

mira.10d        10-day averages of Mira data, for use with
                example file "xample3.r"

####################################
# How to "install" the scripts for R
####################################

There are two ways to make the scripts available for use in R.
One way is to start an R session, then open the file "Rprogs.r"
and execute the "run all" command to run all the lines in this
file.  Once they've been run, all the functions are installed
and are available for use on your data.  You'll have to do
this every time you start a new R session.

The other way is to place the file ".Rprofile" (which is
identical to the file "Rprogs.r") in the directory which is
the "home" directory for R.  Whatever file has that name,
and resides in the home directory (the directory R points to
when it starts), will automatically be loaded and run whenever
you start an R session.



Q.E.D.
