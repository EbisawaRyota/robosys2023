#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Ryota Ebisawa
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

### I/O TEST ###
#plus
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

#subtraction
out=$(seq 5 | ./subtraction)
[ "${out}" = -15 ] || ng ${LINENO}

#multiplication
out=$(seq 5 | ./multiplication)
[ "${out}" = 120 ] || ng ${LINENO}

### STRANGE INPUT ###
#plus
out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./plus) #空文字
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

#subtraction
out=$(echo あ | ./subtraction)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./subtraction) #空文字
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

#multiplication
out=$(echo あ | ./multiplication)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./multiplication) #空文字
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res

out=$(echo | python your_script.py)
expected="年数を入力してください（2004年から2023年まで）:"
if [ "${out}" = "${expected}" ]; then
    echo "空文字のテスト: パスしました！"
else
    echo "空文字のテスト: 失敗しました..."
fi

# 不正な文字列を入力した場合のテスト
out=$(echo "あ" | python your_script.py)
expected="有効な年数を入力してください"
if [ "${out}" = "${expected}" ]; then
    echo "不正な文字列のテスト: パスしました！"
else
    echo "不正な文字列のテスト: 失敗しました..."
fi
