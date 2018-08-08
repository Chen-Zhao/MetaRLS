
java -Xmx64g -jar /statgen/meiwen/CHD/tools/snptracker/snptracker.jar --no-web \
   --in DHM.raw --by-pos --chr 3 --pos 4 --ref hg19 \
   --out DHM.raw.db150 \
   --merge-file /statgen/meiwen/CHD/mw/db/ftp.ncbi.nih.gov/snp/organisms/human_9606/database/data/organism_data/RsMergeArch.bcp.gz \
   --coor-file /statgen/meiwen/CHD/mw/db/ftp.ncbi.nih.gov/snp/organisms/human_9606_b150_GRCh37p13/database/data/organism_data/b150_SNPChrPosOnRef_105.bcp.gz \
   --hist-file /statgen/meiwen/CHD/mw/db/ftp.ncbi.nih.gov/snp/organisms/human_9606/database/data/organism_data/SNPHistory.bcp.gz &>snptrack.DHM.log
