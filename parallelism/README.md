eduardo@~/git-repository/git-ecarneiro/shellscritpt/parallelism$ ls
README.md  parallelism.sh  parallelism2.sh  parallelism3.sh
eduardo@~/git-repository/git-ecarneiro/shellscritpt/parallelism$ cat parallelism3.sh 
#!/bin/bash


get_infos()
{
        A=$1

        for b in a b c 
        do
        #       echo "$A - resource $b" 
                touch $A-$b.txt 
        done
}



# main program
for project in $(seq 10)
do
        echo project-$project
        get_infos $project 

done

eduardo@~/git-repository/git-ecarneiro/shellscritpt/parallelism$ time bash parallelism3.sh 
project-1
project-2
project-3
project-4
project-5
project-6
project-7
project-8
project-9
project-10

real    0m0.055s
user    0m0.033s
sys     0m0.003s
eduardo@~/git-repository/git-ecarneiro/shellscritpt/parallelism$ ls
1-a.txt  1-c.txt   10-b.txt  2-a.txt  2-c.txt  3-b.txt  4-a.txt  4-c.txt  5-b.txt  6-a.txt  6-c.txt  7-b.txt  8-a.txt  8-c.txt  9-b.txt  README.md       parallelism2.sh
1-b.txt  10-a.txt  10-c.txt  2-b.txt  3-a.txt  3-c.txt  4-b.txt  5-a.txt  5-c.txt  6-b.txt  7-a.txt  7-c.txt  8-b.txt  9-a.txt  9-c.txt  parallelism.sh  parallelism3.sh
eduardo@~/git-repository/git-ecarneiro/shellscritpt/parallelism$ rm -rf *.txt
eduardo@~/git-repository/git-ecarneiro/shellscritpt/parallelism$ vi parallelism3.sh 
eduardo@~/git-repository/git-ecarneiro/shellscritpt/parallelism$ cat parallelism3.sh 
#!/bin/bash


get_infos()
{
        A=$1

        for b in a b c 
        do
        #       echo "$A - resource $b" 
                touch $A-$b.txt 
        done
}



# main program
for project in $(seq 10)
do
        echo project-$project
        get_infos $project & 

done

eduardo@~/git-repository/git-ecarneiro/shellscritpt/parallelism$ time bash parallelism3.sh 
project-1
project-2
project-3
project-4
project-5
project-6
project-7
project-8
project-9
project-10

real    0m0.013s
user    0m0.008s
sys     0m0.005s
eduardo@~/git-repository/git-ecarneiro/shellscritpt/parallelism$ 
