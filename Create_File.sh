#!/bin/sh
# 取り出したい言葉を9個分変数に格納する
Word_1=""
Word_2=""
Word_3=""
Word_4=""
Word_5=""
Word_6=""
Word_7=""
Word_8=""
Word_9=""

# 取り出したい言葉に紐づく１行を9個分変数に格納する
Word_1_Text=""
Word_2_Text=""
Word_3_Text=""
Word_4_Text=""
Word_5_Text=""
Word_6_Text=""
Word_7_Text=""
Word_8_Text=""
Word_9_Text=""

# 50個のフォルダ名を格納する
Folder_1=""
Folder_2=""
Folder_3=""
Folder_4=""
Folder_5=""
Folder_6=""
Folder_7=""
Folder_8=""
Folder_9=""
Folder_10=""
Folder_11=""
Folder_12=""
Folder_13=""
Folder_14=""
Folder_15=""
Folder_16=""
Folder_17=""
Folder_18=""
Folder_19=""
Folder_20=""
Folder_21=""
Folder_22=""
Folder_23=""
Folder_24=""
Folder_25=""
Folder_26=""
Folder_27=""
Folder_28=""
Folder_29=""
Folder_30=""
Folder_31=""
Folder_32=""
Folder_33=""
Folder_34=""
Folder_35=""
Folder_36=""
Folder_37=""
Folder_38=""
Folder_39=""
Folder_40=""
Folder_41=""
Folder_42=""
Folder_43=""
Folder_44=""
Folder_45=""
Folder_46=""
Folder_47=""
Folder_48=""
Folder_49=""
Folder_50=""
Folder_51=""
Folder_52=""
Folder_53=""
Folder_54=""
Folder_55=""
Folder_56=""
Folder_57=""
Folder_58=""
Folder_59=""
Folder_60=""

# 何フォルダ目か番号を表示するための変数
FolderNum=1

# 50ファイル分処理を繰り返す
for varFolder in $Folder_1 $Folder_2 $Folder_3 $Folder_4 $Folder_5 $Folder_6 $Folder_7 $Folder_8 $Folder_9 $Folder_10 $Folder_11 $Folder_12 $Folder_13 $Folder_14 $Folder_15 $Folder_16 $Folder_17 $Folder_18 $Folder_19 $Folder_20 $Folder_21 $Folder_22 $Folder_23 $Folder_24 $Folder_25 $Folder_26 $Folder_27 $Folder_28 $Folder_29 $Folder_30 $Folder_31 $Folder_32 $Folder_33 $Folder_34 $Folder_35 $Folder_36 $Folder_37 $Folder_38 $Folder_39 $Folder_40 $Folder_41 $Folder_42 $Folder_43 $Folder_44 $Folder_45 $Folder_46 $Folder_47 $Folder_48 $Folder_49 $Folder_50 $Folder_51 $Folder_52 $Folder_53 $Folder_54 $Folder_55 $Folder_56 $Folder_57 $Folder_58 $Folder_59 $Folder_60
do
    echo "No.${FolderNum} NowFolder:${varFolder}"

    # Directory1フォルダに移動する
    cd Directory1/${varFolder}/
    echo "PWD:${PWD}"
    # ファイルの行頭からTabまたは半角空白4つを取り除く
    sed -i 's/^[ \t]*//' hogehoge

    for var in $Word_1 $Word_2 $Word_3 $Word_4 $Word_5 $Word_6 $Word_7 $Word_8 $Word_9
    do    	
        # folderから取り出したい言葉の1行を取り出す
        Word=$(grep -w "Furansupan=\"${var}\"" hogehoge)
	    # folderから取り出したい言葉の1行を格納するために変数に代入する
	    if [ "$var" = "$Word_1" ] ; then
	        Word_1_Text=$Word
	        echo "Word_1 ${Word_1} Get text:${Word_1_Text}"
	    elif [ "$var" = "$Word_2" ] ; then
	        Word_2_Text=$Word
	        echo "Word_2 ${Word_2} Get text:${Word_2_Text}"
	    elif [ "$var" = "$Word_3" ] ; then
	        Word_3_Text=$Word
	        echo "Word_3 ${Word_3} Get text:${Word_3_Text}"
	    elif [ "$var" = "$Word_4" ] ; then
	        Word_4_Text=$Word
	        echo "Word_4 ${Word_4} Get text:${Word_4_Text}"
	    elif [ "$var" = "$Word_5" ] ; then
	        Word_5_Text=$Word
	        echo "Word_5 ${Word_5} Get text:${Word_5_Text}"
	    elif [ "$var" = "$Word_6" ] ; then
	        Word_6_Text=$Word
	        echo "Word_6 ${Word_6} Get text:${Word_6_Text}"
	    elif [ "$var" = "$Word_7" ] ; then
	        Word_7_Text=$Word
	        echo "Word_7 ${Word_7} Get text:${Word_7_Text}"
	    elif [ "$var" = "$Word_8" ] ; then
	        Word_8_Text=$Word
	        echo "Word_8 ${Word_8} Get text:${Word_8_Text}"
	    elif [ "$var" = "$Word_9" ] ; then
	        Word_9_Text=$Word
	        echo "Word_9 ${Word_9} Get text:${Word_9_Text}"
	    fi
    done

    # Directory2ファイルに移動する
    cd ../../
    cd Directory2/${varFolder}/
    echo "PWD:${PWD}"

    # Directory2ファイルにWordを追加する
    for var in $Word_1 $Word_2 $Word_3 $Word_4 $Word_5 $Word_6 $Word_7 $Word_8 $Word_9
    do
	    if [ "$var" = "$Word_1" ] ; then
	        var=$Word_1_Text
	    elif [ "$var" = "$Word_2" ] ; then
	        var=$Word_2_Text
	    elif [ "$var" = "$Word_3" ] ; then
	        var=$Word_3_Text
	    elif [ "$var" = "$Word_4" ] ; then
	        var=$Word_4_Text
	    elif [ "$var" = "$Word_5" ] ; then
	        var=$Word_5_Text
	    elif [ "$var" = "$Word_6" ] ; then
	        var=$Word_6_Text
	    elif [ "$var" = "$Word_7" ] ; then
	        var=$Word_7_Text
	    elif [ "$var" = "$Word_8" ] ; then
	        var=$Word_8_Text
	    elif [ "$var" = "$Word_9" ] ; then
	        var=$Word_9_Text
	    fi
		
	    # Directory2ファイルにWordを書き込む
        sed -i -e "/Kogepan/i \    $var" hogehoge
    done
	
	# 次のフォルダの処理をするために、baseとなるフォルダへ戻る
    cd ../../
	# logを見やすくするために、フォルダで出力を区切る
	echo ""
	# 何フォルダめか番号を表示する変数に+1
	FolderNum=$((FolderNum + 1))
done
