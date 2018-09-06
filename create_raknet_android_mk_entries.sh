# Helper script to build mk file entries that can then be directly dropped into the larger android make file.
# Created by Chief of Nothing, Monkey in Crime, Hunter Mayer
# Copyright Appsomniacs 2014 

# Set up leading whitespace (ensure it is not stripped)
IFS=
LEADING_SPACES=\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

# Start the output file anew
OUTPUT_FILE_NAME=RakNetAndroidMkEntries.txt
# Get rid of any existing file (optional)
#rm ${OUTPUT_FILE_NAME} 2>/dev/null
> ${OUTPUT_FILE_NAME}

# Get each cpp for the compile effort (make sure to grab the .c files too)
cd ./Source
SEARCH_PATTERN=*.c*
ls ${SEARCH_PATTERN} | while read file
do
    MK_ENTRY=$(echo ${LEADING_SPACES} ../../PlatformClasses/RakNet/Source/${file} \\)
    echo ${MK_ENTRY} >> ../${OUTPUT_FILE_NAME}
    echo ${MK_ENTRY}
done
cd ..

# Get the miniupnpc-1.5 subdirectory
cd ./DependentExtensions/miniupnpc-1.5
ls ${SEARCH_PATTERN} | while read file
do
    MK_ENTRY=$(echo $LEADING_SPACES ../../PlatformClasses/RakNet/DependentExtensions/miniupnpc-1.5/$file \\)
    echo ${MK_ENTRY} >> ../../${OUTPUT_FILE_NAME}
    echo ${MK_ENTRY}
done

cd ../..

# restore $IFS (e.g., stripping whitespace)
unset IFS

echo Android mk include entries have been written to: $(pwd)/${OUTPUT_FILE_NAME}
