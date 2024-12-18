# -O3 选项启用了最高级别的优化，可以使生成的代码更快、更小，但也可能会增加编译时间。它包括启用所有的 -O2 优化，并添加一些额外的优化选项，例如函数内联和循环展开。
# -Wall 选项启用了所有的警告信息，可以让编译器在编译过程中输出尽可能多的警告信息
# -Werror 选项将警告信息转换为编译错误，即当编译器发现任何警告信息时，会停止编译并生成错误信息。这可以帮助开发者更早地发现潜在的问题并及时修复它们。
# -Wimplicit-fallthrough 选项启用了对 switch 语句中的隐式贯穿（fall-through）的警告，即当一个 case 语句没有显式地使用 break 或 return 结束时，编译器会发出警告。这可以帮助开发者避免编写出意外的代码行为

CFLAGS= -O3 -Wall -Werror -Wimplicit-fallthrough -g
SRCS=$(wildcard src/*.c)
HDRS=$(wildcard src/*.h)
OBJS=$(patsubst src/%.c, obj/%.o, $(SRCS))
CC=clang

rvemu: $(OBJS)
	$(CC) $(CFLAGS) -lm -o $@ $^ 

$(OBJS): obj/%.o: src/%.c $(HDRS)
	@mkdir -p $$(dirname $@)
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -rf rvemu obj/

.PHONY: clean