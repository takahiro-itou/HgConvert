# HgConvert

##  準備

```
mkdir -p ~/tools
cd ~/tools
git clone --recursive git@gitlab.com:takahiro-itou/hg-convert.git
```

##  変換

```
hg convert -s hg-omit-subrepos  ${project}  ${project}.conv
```
