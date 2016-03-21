##变量

1. 定义多个变量的技巧

		eg:
	
		echo 1 2 3 4 | read one two three four
	
2. 计算平方

		square=$((8**2)) //8平方
		
3. 变量没有定义的时候，引用变量时就是空字符串

4. 变量的数学运算,运算中如果参数不是合理的数字，就不回当做0处理

		eg: 
		res=$((1+8))
		
		x=1
		y=2
		res=$(expr $x + $y)
		let res=$x+$y
		
		x=hello
		y=2
		echo $(($x + $y)) # 
	
5. shell 中字符串的匹配模式

		eg:
		默认值：
			${str:-default}
		长度:
			${#str}
		字符串(substr):
			${str:2:3} # 2-4个字符
			${str: -2}
		开头或者末尾裁剪:
			str="hello world"
			echo ${str#*l} # lo world
			echo ${str##*l} # d
			相反是%和%%
		替换
			${str/str1/str2} #一次替换
			${str//str1/str2} #全部替换
			${str/#str1/str2} #以str1开头的字母
			${str/%str1/str2} #以str2末尾的字母
		大小写转化
			${str^^}  #小转大
			${str,,}	#大转小	
	
## 循环

1. 如果一个循环需要使用函数或者脚本的全部参数，可以这样写 

		eg:
			for var  
			do  
				'cmd'  
			done
		replace
		eg: 
			for var in $*
			do 
				'cmd'
			done