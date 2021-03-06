#!/bin/bash

# Requires Java to be installed already

if [ ! -d "./BibleMultiConverter-0.0.7" ]
then
	wget https://github.com/schierlm/BibleMultiConverter/releases/download/v0.0.7/BibleMultiConverter-0.0.7.zip
	unzip BibleMultiConverter-0.0.7.zip -d BibleMultiConverter-0.0.7
fi

# TODO: Add OEOCV-Tools as a submodule and require the books to be validated before they are built

java -jar ./BibleMultiConverter-0.0.7/BibleMultiConverter.jar USFM ./OEOCV/source/ RoundtripHTML ./docs/bible

echo "Done"
