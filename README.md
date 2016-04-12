
reis-dict
=======
fork from https://github.com/AllenDou/re-dict
update redis source code of version 3.0.5

把redis的dict(字典)结构移植成通用模块.
sds.* zmalloc.* dict.* fmacros.h config.h 均未做调整.
只需阅读main.c文件就可了解如何使用dict结构.

$cd 到目标目录
$make
$./main