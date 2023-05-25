CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'

files=`find *ListExamples.java`
if [[ -f $files ]] && [[ -e $files ]]
    then
        echo "File found: " $files
    else
        echo "File not found."
        exit
fi

cp -r student-submission/ListExamples.java ./grading-area
echo grading-area/*

javac -cp $CPATH grading-area/*.java

# Compile your tests and the student’s code from the appropriate directory with the appropriate classpath commands. 
# If the compilation fails, detect and give helpful feedback about it.
if [[ -f $files ]]

# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
