#!/bin/bash


cd /projects/compbio/users/xran2/wen/TSC/01-Mapping/tool



#-------------------------------------------#
#                                           #
#           Part 1: Download Files          #
#                                           #
#-------------------------------------------#

# Download Cell Ranger ARC 2.0.2
# Link:https://www.10xgenomics.com/support/software/cell-ranger-arc/downloads
# Cell Ranger ARC 2.0.2 (Aug 18, 2022)
# File size: 699 MB
# md5sum: 7303f8ceee7b60113c9a0087268830cd

curl -o cellranger-arc-2.0.2.tar.gz "https://cf.10xgenomics.com/releases/cell-arc/cellranger-arc-2.0.2.tar.gz?Expires=1738941106&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA&Signature=OU5srJ-BXMDiwISn9lk~jKoN1-TvPUKST-qbBTEsbaF3Fdx5GMiSYVd2K1dIhYuQbPz5lJlrQ3Vb5gjyK7VGSLK7p7qtUSygqOT5rZ1sj-p~XSKLGcNwepf6cSY~pgXClZwdNX8h6to1WhKYfAoU1AMu6IJBi0NXYDOAhwRHbNIyLQgaSj0Q~Q~0qms9lGGDrwrcPgMuud4LldN-G2jLtukdsyjPxCoeKY0cnfYxVqi-~xolvWV3V4G7d2~Bl3vbuLndCfKyZYfSeqhpY5f4ZNMeoCjcpCOfdyD7vguRvn6he3e4LUx8WJLMdBNJ4P5XgEPe7i8y-4GYELCQzNZy~A__"

# Check the md5sum
md5sum cellranger-arc-2.0.2.tar.gz

# Download Human reference data
# Link:https://www.10xgenomics.com/support/software/cell-ranger-arc/downloads
# Human reference (GRCh38) - 2020-A
# File size: 14 GB
# md5sum: 2f12f6016197869e21e5559827002716

curl -O "https://cf.10xgenomics.com/supp/cell-arc/refdata-cellranger-arc-GRCh38-2020-A-2.0.0.tar.gz"

# Check the md5sum
md5sum refdata-cellranger-arc-GRCh38-2020-A-2.0.0.tar.gz

#-------------------------------------------#
#                                           #
#           Part 2: Installation            #
#                                           #
#-------------------------------------------#

# Install cellranger-atac-2.1.0.tar.gz
tar -xzvf cellranger-arc-2.0.2.tar.gz

# Install Human reference data
tar -xzvf refdata-cellranger-arc-GRCh38-2020-A-2.0.0.tar.gz 

# add current path to PATH
export PATH=$PATH:/projects/compbio/users/xran2/wen/TSC/01-Mapping/tool/cellranger-atac-2.1.0

cellranger-arc sitecheck > sitecheck.txt

#-------------------------------------------#
#                                           #
#    Part 3: verfiy the installation        #
#                                           #
#-------------------------------------------#

cellranger-arc testrun --id=tiny

