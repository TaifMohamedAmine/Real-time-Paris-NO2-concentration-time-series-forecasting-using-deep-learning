мќ"
ъЋ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Л
SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
Ѕ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
ч
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
∞
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКйиelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКйиelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint€€€€€€€€€
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
И"serve*2.9.02v2.9.0-rc2-42-g8a20d54a3c18°Ь 
Х
Adam/gru_1/gru_cell_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ј*-
shared_nameAdam/gru_1/gru_cell_1/bias/v
О
0Adam/gru_1/gru_cell_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/gru_1/gru_cell_1/bias/v*
_output_shapes
:	ј*
dtype0
≠
(Adam/gru_1/gru_cell_1/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@ј*9
shared_name*(Adam/gru_1/gru_cell_1/recurrent_kernel/v
¶
<Adam/gru_1/gru_cell_1/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp(Adam/gru_1/gru_cell_1/recurrent_kernel/v*
_output_shapes
:	@ј*
dtype0
Ъ
Adam/gru_1/gru_cell_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ај*/
shared_name Adam/gru_1/gru_cell_1/kernel/v
У
2Adam/gru_1/gru_cell_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/gru_1/gru_cell_1/kernel/v* 
_output_shapes
:
Ај*
dtype0
Н
Adam/gru/gru_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*)
shared_nameAdam/gru/gru_cell/bias/v
Ж
,Adam/gru/gru_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/bias/v*
_output_shapes
:	А*
dtype0
¶
$Adam/gru/gru_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*5
shared_name&$Adam/gru/gru_cell/recurrent_kernel/v
Я
8Adam/gru/gru_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp$Adam/gru/gru_cell/recurrent_kernel/v* 
_output_shapes
:
АА*
dtype0
С
Adam/gru/gru_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*+
shared_nameAdam/gru/gru_cell/kernel/v
К
.Adam/gru/gru_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/kernel/v*
_output_shapes
:	А*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0
Ж
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:@*
dtype0
Х
Adam/gru_1/gru_cell_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ј*-
shared_nameAdam/gru_1/gru_cell_1/bias/m
О
0Adam/gru_1/gru_cell_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/gru_1/gru_cell_1/bias/m*
_output_shapes
:	ј*
dtype0
≠
(Adam/gru_1/gru_cell_1/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@ј*9
shared_name*(Adam/gru_1/gru_cell_1/recurrent_kernel/m
¶
<Adam/gru_1/gru_cell_1/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp(Adam/gru_1/gru_cell_1/recurrent_kernel/m*
_output_shapes
:	@ј*
dtype0
Ъ
Adam/gru_1/gru_cell_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ај*/
shared_name Adam/gru_1/gru_cell_1/kernel/m
У
2Adam/gru_1/gru_cell_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/gru_1/gru_cell_1/kernel/m* 
_output_shapes
:
Ај*
dtype0
Н
Adam/gru/gru_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*)
shared_nameAdam/gru/gru_cell/bias/m
Ж
,Adam/gru/gru_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/bias/m*
_output_shapes
:	А*
dtype0
¶
$Adam/gru/gru_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*5
shared_name&$Adam/gru/gru_cell/recurrent_kernel/m
Я
8Adam/gru/gru_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp$Adam/gru/gru_cell/recurrent_kernel/m* 
_output_shapes
:
АА*
dtype0
С
Adam/gru/gru_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*+
shared_nameAdam/gru/gru_cell/kernel/m
К
.Adam/gru/gru_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/kernel/m*
_output_shapes
:	А*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
Ж
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:@*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
З
gru_1/gru_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ј*&
shared_namegru_1/gru_cell_1/bias
А
)gru_1/gru_cell_1/bias/Read/ReadVariableOpReadVariableOpgru_1/gru_cell_1/bias*
_output_shapes
:	ј*
dtype0
Я
!gru_1/gru_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@ј*2
shared_name#!gru_1/gru_cell_1/recurrent_kernel
Ш
5gru_1/gru_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp!gru_1/gru_cell_1/recurrent_kernel*
_output_shapes
:	@ј*
dtype0
М
gru_1/gru_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ај*(
shared_namegru_1/gru_cell_1/kernel
Е
+gru_1/gru_cell_1/kernel/Read/ReadVariableOpReadVariableOpgru_1/gru_cell_1/kernel* 
_output_shapes
:
Ај*
dtype0

gru/gru_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*"
shared_namegru/gru_cell/bias
x
%gru/gru_cell/bias/Read/ReadVariableOpReadVariableOpgru/gru_cell/bias*
_output_shapes
:	А*
dtype0
Ш
gru/gru_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*.
shared_namegru/gru_cell/recurrent_kernel
С
1gru/gru_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpgru/gru_cell/recurrent_kernel* 
_output_shapes
:
АА*
dtype0
Г
gru/gru_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*$
shared_namegru/gru_cell/kernel
|
'gru/gru_cell/kernel/Read/ReadVariableOpReadVariableOpgru/gru_cell/kernel*
_output_shapes
:	А*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:@*
dtype0

NoOpNoOp
ҐH
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ЁG
value”GB–G B…G
џ
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
Ѕ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
•
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator* 
Ѕ
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%_random_generator
&cell
'
state_spec*
•
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses
._random_generator* 
¶
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias*
<
70
81
92
:3
;4
<5
56
67*
<
70
81
92
:3
;4
<5
56
67*
* 
∞
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Btrace_0
Ctrace_1
Dtrace_2
Etrace_3* 
6
Ftrace_0
Gtrace_1
Htrace_2
Itrace_3* 
* 
д
Jiter

Kbeta_1

Lbeta_2
	Mdecay
Nlearning_rate5m™6mЂ7mђ8m≠9mЃ:mѓ;m∞<m±5v≤6v≥7vі8vµ9vґ:vЈ;vЄ<vє*

Oserving_default* 

70
81
92*

70
81
92*
* 
Я

Pstates
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_3* 
6
Ztrace_0
[trace_1
\trace_2
]trace_3* 
* 
”
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses
d_random_generator

7kernel
8recurrent_kernel
9bias*
* 
* 
* 
* 
С
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

jtrace_0
ktrace_1* 

ltrace_0
mtrace_1* 
* 

:0
;1
<2*

:0
;1
<2*
* 
Я

nstates
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*
6
ttrace_0
utrace_1
vtrace_2
wtrace_3* 
6
xtrace_0
ytrace_1
ztrace_2
{trace_3* 
* 
÷
|	variables
}trainable_variables
~regularization_losses
	keras_api
А__call__
+Б&call_and_return_all_conditional_losses
В_random_generator

:kernel
;recurrent_kernel
<bias*
* 
* 
* 
* 
Ц
Гnon_trainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses* 

Иtrace_0
Йtrace_1* 

Кtrace_0
Лtrace_1* 
* 

50
61*

50
61*
* 
Ш
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

Сtrace_0* 

Тtrace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEgru/gru_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEgru/gru_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEgru/gru_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEgru_1/gru_cell_1/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!gru_1/gru_cell_1/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEgru_1/gru_cell_1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

У0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

70
81
92*

70
81
92*
* 
Ш
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses*

Щtrace_0
Ъtrace_1* 

Ыtrace_0
Ьtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

&0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

:0
;1
<2*

:0
;1
<2*
* 
Ы
Эnon_trainable_variables
Юlayers
Яmetrics
 †layer_regularization_losses
°layer_metrics
|	variables
}trainable_variables
~regularization_losses
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses*

Ґtrace_0
£trace_1* 

§trace_0
•trace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
¶	variables
І	keras_api

®total

©count*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

®0
©1*

¶	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/gru/gru_cell/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE$Adam/gru/gru_cell/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/gru/gru_cell/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/gru_1/gru_cell_1/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUE(Adam/gru_1/gru_cell_1/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/gru_1/gru_cell_1/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/gru/gru_cell/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE$Adam/gru/gru_cell/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/gru/gru_cell/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/gru_1/gru_cell_1/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUE(Adam/gru_1/gru_cell_1/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/gru_1/gru_cell_1/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Д
serving_default_gru_inputPlaceholder*+
_output_shapes
:€€€€€€€€€
*
dtype0* 
shape:€€€€€€€€€

ь
StatefulPartitionedCallStatefulPartitionedCallserving_default_gru_inputgru/gru_cell/biasgru/gru_cell/kernelgru/gru_cell/recurrent_kernelgru_1/gru_cell_1/biasgru_1/gru_cell_1/kernel!gru_1/gru_cell_1/recurrent_kerneldense_1/kerneldense_1/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_275593
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
С
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp'gru/gru_cell/kernel/Read/ReadVariableOp1gru/gru_cell/recurrent_kernel/Read/ReadVariableOp%gru/gru_cell/bias/Read/ReadVariableOp+gru_1/gru_cell_1/kernel/Read/ReadVariableOp5gru_1/gru_cell_1/recurrent_kernel/Read/ReadVariableOp)gru_1/gru_cell_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp.Adam/gru/gru_cell/kernel/m/Read/ReadVariableOp8Adam/gru/gru_cell/recurrent_kernel/m/Read/ReadVariableOp,Adam/gru/gru_cell/bias/m/Read/ReadVariableOp2Adam/gru_1/gru_cell_1/kernel/m/Read/ReadVariableOp<Adam/gru_1/gru_cell_1/recurrent_kernel/m/Read/ReadVariableOp0Adam/gru_1/gru_cell_1/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp.Adam/gru/gru_cell/kernel/v/Read/ReadVariableOp8Adam/gru/gru_cell/recurrent_kernel/v/Read/ReadVariableOp,Adam/gru/gru_cell/bias/v/Read/ReadVariableOp2Adam/gru_1/gru_cell_1/kernel/v/Read/ReadVariableOp<Adam/gru_1/gru_cell_1/recurrent_kernel/v/Read/ReadVariableOp0Adam/gru_1/gru_cell_1/bias/v/Read/ReadVariableOpConst*,
Tin%
#2!	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__traced_save_277994
†
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/biasgru/gru_cell/kernelgru/gru_cell/recurrent_kernelgru/gru_cell/biasgru_1/gru_cell_1/kernel!gru_1/gru_cell_1/recurrent_kernelgru_1/gru_cell_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/gru/gru_cell/kernel/m$Adam/gru/gru_cell/recurrent_kernel/mAdam/gru/gru_cell/bias/mAdam/gru_1/gru_cell_1/kernel/m(Adam/gru_1/gru_cell_1/recurrent_kernel/mAdam/gru_1/gru_cell_1/bias/mAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/gru/gru_cell/kernel/v$Adam/gru/gru_cell/recurrent_kernel/vAdam/gru/gru_cell/bias/vAdam/gru_1/gru_cell_1/kernel/v(Adam/gru_1/gru_cell_1/recurrent_kernel/vAdam/gru_1/gru_cell_1/bias/v*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__traced_restore_278097лч
€	
d
E__inference_dropout_3_layer_call_and_return_conditional_losses_277647

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ш
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Н
ў
F__inference_gru_cell_1_layer_call_and_return_conditional_losses_274367

inputs

states*
readvariableop_resource:	ј2
matmul_readvariableop_resource:
Ај3
 matmul_1_readvariableop_resource:	@ј
identity

identity_1ИҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpҐReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	ј*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:ј:ј*	
numv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ај*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€јZ
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splity
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@ј*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€јZ
ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   €€€€\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€∆
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€@b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€@Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@I
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@S
mul_1MulSigmoid:y:0states*
T0*'
_output_shapes
:€€€€€€€€€@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@[
mul_2Mulsub:z:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@X
IdentityIdentity	add_3:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@Z

Identity_1Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@Й
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€А:€€€€€€€€€@: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_namestates
ё
ћ
H__inference_sequential_1_layer_call_and_return_conditional_losses_275539
	gru_input

gru_275517:	А

gru_275519:	А

gru_275521:
АА
gru_1_275525:	ј 
gru_1_275527:
Ај
gru_1_275529:	@ј 
dense_1_275533:@
dense_1_275535:
identityИҐdense_1/StatefulPartitionedCallҐgru/StatefulPartitionedCallҐgru_1/StatefulPartitionedCallт
gru/StatefulPartitionedCallStatefulPartitionedCall	gru_input
gru_275517
gru_275519
gru_275521*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€
А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_274798Ё
dropout_2/PartitionedCallPartitionedCall$gru/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€
А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_274811Р
gru_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0gru_1_275525gru_1_275527gru_1_275529*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_274967Џ
dropout_3/PartitionedCallPartitionedCall&gru_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_274980И
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_1_275533dense_1_275535*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_274992w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€¶
NoOpNoOp ^dense_1/StatefulPartitionedCall^gru/StatefulPartitionedCall^gru_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€
: : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall2>
gru_1/StatefulPartitionedCallgru_1/StatefulPartitionedCall:V R
+
_output_shapes
:€€€€€€€€€

#
_user_specified_name	gru_input
®
Є
$__inference_gru_layer_call_fn_276295
inputs_0
unknown:	А
	unknown_0:	А
	unknown_1:
АА
identityИҐStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_274288}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
№
™
while_cond_274223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_274223___redundant_placeholder04
0while_while_cond_274223___redundant_placeholder14
0while_while_cond_274223___redundant_placeholder24
0while_while_cond_274223___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
÷=
Б
while_body_277220
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_1_readvariableop_resource_0:	јE
1while_gru_cell_1_matmul_readvariableop_resource_0:
АјF
3while_gru_cell_1_matmul_1_readvariableop_resource_0:	@ј
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_1_readvariableop_resource:	јC
/while_gru_cell_1_matmul_readvariableop_resource:
АјD
1while_gru_cell_1_matmul_1_readvariableop_resource:	@јИҐ&while/gru_cell_1/MatMul/ReadVariableOpҐ(while/gru_cell_1/MatMul_1/ReadVariableOpҐwhile/gru_cell_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype0Л
while/gru_cell_1/ReadVariableOpReadVariableOp*while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	ј*
dtype0Г
while/gru_cell_1/unstackUnpack'while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:ј:ј*	
numЪ
&while/gru_cell_1/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
Ај*
dtype0ґ
while/gru_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јЬ
while/gru_cell_1/BiasAddBiasAdd!while/gru_cell_1/MatMul:product:0!while/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€јk
 while/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€÷
while/gru_cell_1/splitSplit)while/gru_cell_1/split/split_dim:output:0!while/gru_cell_1/BiasAdd:output:0*
T0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitЭ
(while/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	@ј*
dtype0Э
while/gru_cell_1/MatMul_1MatMulwhile_placeholder_20while/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ј†
while/gru_cell_1/BiasAdd_1BiasAdd#while/gru_cell_1/MatMul_1:product:0!while/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€јk
while/gru_cell_1/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   €€€€m
"while/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€К
while/gru_cell_1/split_1SplitV#while/gru_cell_1/BiasAdd_1:output:0while/gru_cell_1/Const:output:0+while/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitУ
while/gru_cell_1/addAddV2while/gru_cell_1/split:output:0!while/gru_cell_1/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@o
while/gru_cell_1/SigmoidSigmoidwhile/gru_cell_1/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Х
while/gru_cell_1/add_1AddV2while/gru_cell_1/split:output:1!while/gru_cell_1/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€@s
while/gru_cell_1/Sigmoid_1Sigmoidwhile/gru_cell_1/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Р
while/gru_cell_1/mulMulwhile/gru_cell_1/Sigmoid_1:y:0!while/gru_cell_1/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€@М
while/gru_cell_1/add_2AddV2while/gru_cell_1/split:output:2while/gru_cell_1/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@k
while/gru_cell_1/ReluReluwhile/gru_cell_1/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@В
while/gru_cell_1/mul_1Mulwhile/gru_cell_1/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:€€€€€€€€€@[
while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?М
while/gru_cell_1/subSubwhile/gru_cell_1/sub/x:output:0while/gru_cell_1/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@О
while/gru_cell_1/mul_2Mulwhile/gru_cell_1/sub:z:0#while/gru_cell_1/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@Й
while/gru_cell_1/add_3AddV2while/gru_cell_1/mul_1:z:0while/gru_cell_1/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : л
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/gru_cell_1/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€@¬

while/NoOpNoOp'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_1_matmul_1_readvariableop_resource3while_gru_cell_1_matmul_1_readvariableop_resource_0"d
/while_gru_cell_1_matmul_readvariableop_resource1while_gru_cell_1_matmul_readvariableop_resource_0"V
(while_gru_cell_1_readvariableop_resource*while_gru_cell_1_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€@: : : : : 2P
&while/gru_cell_1/MatMul/ReadVariableOp&while/gru_cell_1/MatMul/ReadVariableOp2T
(while/gru_cell_1/MatMul_1/ReadVariableOp(while/gru_cell_1/MatMul_1/ReadVariableOp2B
while/gru_cell_1/ReadVariableOpwhile/gru_cell_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
л	
”
-__inference_sequential_1_layer_call_fn_275018
	gru_input
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	ј
	unknown_3:
Ај
	unknown_4:	@ј
	unknown_5:@
	unknown_6:
identityИҐStatefulPartitionedCallЃ
StatefulPartitionedCallStatefulPartitionedCall	gru_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_274999o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€
: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:€€€€€€€€€

#
_user_specified_name	gru_input
Н
ў
F__inference_gru_cell_1_layer_call_and_return_conditional_losses_274512

inputs

states*
readvariableop_resource:	ј2
matmul_readvariableop_resource:
Ај3
 matmul_1_readvariableop_resource:	@ј
identity

identity_1ИҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpҐReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	ј*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:ј:ј*	
numv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ај*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€јZ
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splity
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@ј*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€јZ
ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   €€€€\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€∆
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€@b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€@Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@I
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@S
mul_1MulSigmoid:y:0states*
T0*'
_output_shapes
:€€€€€€€€€@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@[
mul_2Mulsub:z:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@X
IdentityIdentity	add_3:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@Z

Identity_1Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@Й
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€А:€€€€€€€€€@: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_namestates
€	
d
E__inference_dropout_3_layer_call_and_return_conditional_losses_275048

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ш
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Е
c
*__inference_dropout_2_layer_call_fn_276939

inputs
identityИҐStatefulPartitionedCall≈
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€
А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_275248t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:€€€€€€€€€
А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€
А22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:€€€€€€€€€
А
 
_user_specified_nameinputs
®
Є
$__inference_gru_layer_call_fn_276284
inputs_0
unknown:	А
	unknown_0:	А
	unknown_1:
АА
identityИҐStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_274106}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
м3
ц
?__inference_gru_layer_call_and_return_conditional_losses_274288

inputs"
gru_cell_274212:	А"
gru_cell_274214:	А#
gru_cell_274216:
АА
identityИҐ gru_cell/StatefulPartitionedCallҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЉ
 gru_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_274212gru_cell_274214gru_cell_274216*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_gru_cell_layer_call_and_return_conditional_losses_274172n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_274212gru_cell_274214gru_cell_274216*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_274224*
condR
while_cond_274223*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          †
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аq
NoOpNoOp!^gru_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2D
 gru_cell/StatefulPartitionedCall gru_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Џ
™
while_cond_275128
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_275128___redundant_placeholder04
0while_while_cond_275128___redundant_placeholder14
0while_while_cond_275128___redundant_placeholder24
0while_while_cond_275128___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :€€€€€€€€€@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
»
ц
gru_while_cond_276010$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2&
"gru_while_less_gru_strided_slice_1<
8gru_while_gru_while_cond_276010___redundant_placeholder0<
8gru_while_gru_while_cond_276010___redundant_placeholder1<
8gru_while_gru_while_cond_276010___redundant_placeholder2<
8gru_while_gru_while_cond_276010___redundant_placeholder3
gru_while_identity
r
gru/while/LessLessgru_while_placeholder"gru_while_less_gru_strided_slice_1*
T0*
_output_shapes
: S
gru/while/IdentityIdentitygru/while/Less:z:0*
T0
*
_output_shapes
: "1
gru_while_identitygru/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
÷=
Б
while_body_277530
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_1_readvariableop_resource_0:	јE
1while_gru_cell_1_matmul_readvariableop_resource_0:
АјF
3while_gru_cell_1_matmul_1_readvariableop_resource_0:	@ј
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_1_readvariableop_resource:	јC
/while_gru_cell_1_matmul_readvariableop_resource:
АјD
1while_gru_cell_1_matmul_1_readvariableop_resource:	@јИҐ&while/gru_cell_1/MatMul/ReadVariableOpҐ(while/gru_cell_1/MatMul_1/ReadVariableOpҐwhile/gru_cell_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype0Л
while/gru_cell_1/ReadVariableOpReadVariableOp*while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	ј*
dtype0Г
while/gru_cell_1/unstackUnpack'while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:ј:ј*	
numЪ
&while/gru_cell_1/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
Ај*
dtype0ґ
while/gru_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јЬ
while/gru_cell_1/BiasAddBiasAdd!while/gru_cell_1/MatMul:product:0!while/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€јk
 while/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€÷
while/gru_cell_1/splitSplit)while/gru_cell_1/split/split_dim:output:0!while/gru_cell_1/BiasAdd:output:0*
T0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitЭ
(while/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	@ј*
dtype0Э
while/gru_cell_1/MatMul_1MatMulwhile_placeholder_20while/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ј†
while/gru_cell_1/BiasAdd_1BiasAdd#while/gru_cell_1/MatMul_1:product:0!while/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€јk
while/gru_cell_1/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   €€€€m
"while/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€К
while/gru_cell_1/split_1SplitV#while/gru_cell_1/BiasAdd_1:output:0while/gru_cell_1/Const:output:0+while/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitУ
while/gru_cell_1/addAddV2while/gru_cell_1/split:output:0!while/gru_cell_1/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@o
while/gru_cell_1/SigmoidSigmoidwhile/gru_cell_1/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Х
while/gru_cell_1/add_1AddV2while/gru_cell_1/split:output:1!while/gru_cell_1/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€@s
while/gru_cell_1/Sigmoid_1Sigmoidwhile/gru_cell_1/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Р
while/gru_cell_1/mulMulwhile/gru_cell_1/Sigmoid_1:y:0!while/gru_cell_1/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€@М
while/gru_cell_1/add_2AddV2while/gru_cell_1/split:output:2while/gru_cell_1/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@k
while/gru_cell_1/ReluReluwhile/gru_cell_1/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@В
while/gru_cell_1/mul_1Mulwhile/gru_cell_1/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:€€€€€€€€€@[
while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?М
while/gru_cell_1/subSubwhile/gru_cell_1/sub/x:output:0while/gru_cell_1/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@О
while/gru_cell_1/mul_2Mulwhile/gru_cell_1/sub:z:0#while/gru_cell_1/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@Й
while/gru_cell_1/add_3AddV2while/gru_cell_1/mul_1:z:0while/gru_cell_1/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : л
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/gru_cell_1/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€@¬

while/NoOpNoOp'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_1_matmul_1_readvariableop_resource3while_gru_cell_1_matmul_1_readvariableop_resource_0"d
/while_gru_cell_1_matmul_readvariableop_resource1while_gru_cell_1_matmul_readvariableop_resource_0"V
(while_gru_cell_1_readvariableop_resource*while_gru_cell_1_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€@: : : : : 2P
&while/gru_cell_1/MatMul/ReadVariableOp&while/gru_cell_1/MatMul/ReadVariableOp2T
(while/gru_cell_1/MatMul_1/ReadVariableOp(while/gru_cell_1/MatMul_1/ReadVariableOp2B
while/gru_cell_1/ReadVariableOpwhile/gru_cell_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
зЂ
Ч
H__inference_sequential_1_layer_call_and_return_conditional_losses_275947

inputs7
$gru_gru_cell_readvariableop_resource:	А>
+gru_gru_cell_matmul_readvariableop_resource:	АA
-gru_gru_cell_matmul_1_readvariableop_resource:
АА;
(gru_1_gru_cell_1_readvariableop_resource:	јC
/gru_1_gru_cell_1_matmul_readvariableop_resource:
АјD
1gru_1_gru_cell_1_matmul_1_readvariableop_resource:	@ј8
&dense_1_matmul_readvariableop_resource:@5
'dense_1_biasadd_readvariableop_resource:
identityИҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpҐ"gru/gru_cell/MatMul/ReadVariableOpҐ$gru/gru_cell/MatMul_1/ReadVariableOpҐgru/gru_cell/ReadVariableOpҐ	gru/whileҐ&gru_1/gru_cell_1/MatMul/ReadVariableOpҐ(gru_1/gru_cell_1/MatMul_1/ReadVariableOpҐgru_1/gru_cell_1/ReadVariableOpҐgru_1/while?
	gru/ShapeShapeinputs*
T0*
_output_shapes
:a
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:е
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    y
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аg
gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          u
gru/transpose	Transposeinputsgru/transpose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€L
gru/Shape_1Shapegru/transpose:y:0*
T0*
_output_shapes
:c
gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
gru/strided_slice_1StridedSlicegru/Shape_1:output:0"gru/strided_slice_1/stack:output:0$gru/strided_slice_1/stack_1:output:0$gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ј
gru/TensorArrayV2TensorListReserve(gru/TensorArrayV2/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“К
9gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   м
+gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru/transpose:y:0Bgru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“c
gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:э
gru/strided_slice_2StridedSlicegru/transpose:y:0"gru/strided_slice_2/stack:output:0$gru/strided_slice_2/stack_1:output:0$gru/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskБ
gru/gru_cell/ReadVariableOpReadVariableOp$gru_gru_cell_readvariableop_resource*
_output_shapes
:	А*
dtype0{
gru/gru_cell/unstackUnpack#gru/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numП
"gru/gru_cell/MatMul/ReadVariableOpReadVariableOp+gru_gru_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Ъ
gru/gru_cell/MatMulMatMulgru/strided_slice_2:output:0*gru/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АР
gru/gru_cell/BiasAddBiasAddgru/gru_cell/MatMul:product:0gru/gru_cell/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аg
gru/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Ќ
gru/gru_cell/splitSplit%gru/gru_cell/split/split_dim:output:0gru/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitФ
$gru/gru_cell/MatMul_1/ReadVariableOpReadVariableOp-gru_gru_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ф
gru/gru_cell/MatMul_1MatMulgru/zeros:output:0,gru/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АФ
gru/gru_cell/BiasAdd_1BiasAddgru/gru_cell/MatMul_1:product:0gru/gru_cell/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аg
gru/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"А   А   €€€€i
gru/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€э
gru/gru_cell/split_1SplitVgru/gru_cell/BiasAdd_1:output:0gru/gru_cell/Const:output:0'gru/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitИ
gru/gru_cell/addAddV2gru/gru_cell/split:output:0gru/gru_cell/split_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аh
gru/gru_cell/SigmoidSigmoidgru/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€АК
gru/gru_cell/add_1AddV2gru/gru_cell/split:output:1gru/gru_cell/split_1:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аl
gru/gru_cell/Sigmoid_1Sigmoidgru/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
gru/gru_cell/mulMulgru/gru_cell/Sigmoid_1:y:0gru/gru_cell/split_1:output:2*
T0*(
_output_shapes
:€€€€€€€€€АБ
gru/gru_cell/add_2AddV2gru/gru_cell/split:output:2gru/gru_cell/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аd
gru/gru_cell/ReluRelugru/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аz
gru/gru_cell/mul_1Mulgru/gru_cell/Sigmoid:y:0gru/zeros:output:0*
T0*(
_output_shapes
:€€€€€€€€€АW
gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Б
gru/gru_cell/subSubgru/gru_cell/sub/x:output:0gru/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
gru/gru_cell/mul_2Mulgru/gru_cell/sub:z:0gru/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А~
gru/gru_cell/add_3AddV2gru/gru_cell/mul_1:z:0gru/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
!gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   ƒ
gru/TensorArrayV2_1TensorListReserve*gru/TensorArrayV2_1/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“J
gru/timeConst*
_output_shapes
: *
dtype0*
value	B : g
gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€X
gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : л
	gru/whileWhilegru/while/loop_counter:output:0%gru/while/maximum_iterations:output:0gru/time:output:0gru/TensorArrayV2_1:handle:0gru/zeros:output:0gru/strided_slice_1:output:0;gru/TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_gru_cell_readvariableop_resource+gru_gru_cell_matmul_readvariableop_resource-gru_gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *!
bodyR
gru_while_body_275699*!
condR
gru_while_cond_275698*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations Е
4gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   ѕ
&gru/TensorArrayV2Stack/TensorListStackTensorListStackgru/while:output:3=gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:
€€€€€€€€€А*
element_dtype0l
gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€e
gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ь
gru/strided_slice_3StridedSlice/gru/TensorArrayV2Stack/TensorListStack:tensor:0"gru/strided_slice_3/stack:output:0$gru/strided_slice_3/stack_1:output:0$gru/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maski
gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          £
gru/transpose_1	Transpose/gru/TensorArrayV2Stack/TensorListStack:tensor:0gru/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€
А_
gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    j
dropout_2/IdentityIdentitygru/transpose_1:y:0*
T0*,
_output_shapes
:€€€€€€€€€
АV
gru_1/ShapeShapedropout_2/Identity:output:0*
T0*
_output_shapes
:c
gru_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
gru_1/strided_sliceStridedSlicegru_1/Shape:output:0"gru_1/strided_slice/stack:output:0$gru_1/strided_slice/stack_1:output:0$gru_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
gru_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@Е
gru_1/zeros/packedPackgru_1/strided_slice:output:0gru_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
gru_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
gru_1/zerosFillgru_1/zeros/packed:output:0gru_1/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@i
gru_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          П
gru_1/transpose	Transposedropout_2/Identity:output:0gru_1/transpose/perm:output:0*
T0*,
_output_shapes
:
€€€€€€€€€АP
gru_1/Shape_1Shapegru_1/transpose:y:0*
T0*
_output_shapes
:e
gru_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
gru_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
gru_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
gru_1/strided_slice_1StridedSlicegru_1/Shape_1:output:0$gru_1/strided_slice_1/stack:output:0&gru_1/strided_slice_1/stack_1:output:0&gru_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!gru_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€∆
gru_1/TensorArrayV2TensorListReserve*gru_1/TensorArrayV2/element_shape:output:0gru_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“М
;gru_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   т
-gru_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_1/transpose:y:0Dgru_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“e
gru_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: g
gru_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
gru_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
gru_1/strided_slice_2StridedSlicegru_1/transpose:y:0$gru_1/strided_slice_2/stack:output:0&gru_1/strided_slice_2/stack_1:output:0&gru_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maskЙ
gru_1/gru_cell_1/ReadVariableOpReadVariableOp(gru_1_gru_cell_1_readvariableop_resource*
_output_shapes
:	ј*
dtype0Г
gru_1/gru_cell_1/unstackUnpack'gru_1/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:ј:ј*	
numШ
&gru_1/gru_cell_1/MatMul/ReadVariableOpReadVariableOp/gru_1_gru_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
Ај*
dtype0§
gru_1/gru_cell_1/MatMulMatMulgru_1/strided_slice_2:output:0.gru_1/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јЬ
gru_1/gru_cell_1/BiasAddBiasAdd!gru_1/gru_cell_1/MatMul:product:0!gru_1/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€јk
 gru_1/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€÷
gru_1/gru_cell_1/splitSplit)gru_1/gru_cell_1/split/split_dim:output:0!gru_1/gru_cell_1/BiasAdd:output:0*
T0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitЫ
(gru_1/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp1gru_1_gru_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	@ј*
dtype0Ю
gru_1/gru_cell_1/MatMul_1MatMulgru_1/zeros:output:00gru_1/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ј†
gru_1/gru_cell_1/BiasAdd_1BiasAdd#gru_1/gru_cell_1/MatMul_1:product:0!gru_1/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€јk
gru_1/gru_cell_1/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   €€€€m
"gru_1/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€К
gru_1/gru_cell_1/split_1SplitV#gru_1/gru_cell_1/BiasAdd_1:output:0gru_1/gru_cell_1/Const:output:0+gru_1/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitУ
gru_1/gru_cell_1/addAddV2gru_1/gru_cell_1/split:output:0!gru_1/gru_cell_1/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@o
gru_1/gru_cell_1/SigmoidSigmoidgru_1/gru_cell_1/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Х
gru_1/gru_cell_1/add_1AddV2gru_1/gru_cell_1/split:output:1!gru_1/gru_cell_1/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€@s
gru_1/gru_cell_1/Sigmoid_1Sigmoidgru_1/gru_cell_1/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Р
gru_1/gru_cell_1/mulMulgru_1/gru_cell_1/Sigmoid_1:y:0!gru_1/gru_cell_1/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€@М
gru_1/gru_cell_1/add_2AddV2gru_1/gru_cell_1/split:output:2gru_1/gru_cell_1/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@k
gru_1/gru_cell_1/ReluRelugru_1/gru_cell_1/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Г
gru_1/gru_cell_1/mul_1Mulgru_1/gru_cell_1/Sigmoid:y:0gru_1/zeros:output:0*
T0*'
_output_shapes
:€€€€€€€€€@[
gru_1/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?М
gru_1/gru_cell_1/subSubgru_1/gru_cell_1/sub/x:output:0gru_1/gru_cell_1/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@О
gru_1/gru_cell_1/mul_2Mulgru_1/gru_cell_1/sub:z:0#gru_1/gru_cell_1/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@Й
gru_1/gru_cell_1/add_3AddV2gru_1/gru_cell_1/mul_1:z:0gru_1/gru_cell_1/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@t
#gru_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   d
"gru_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :„
gru_1/TensorArrayV2_1TensorListReserve,gru_1/TensorArrayV2_1/element_shape:output:0+gru_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“L

gru_1/timeConst*
_output_shapes
: *
dtype0*
value	B : i
gru_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Z
gru_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Й
gru_1/whileWhile!gru_1/while/loop_counter:output:0'gru_1/while/maximum_iterations:output:0gru_1/time:output:0gru_1/TensorArrayV2_1:handle:0gru_1/zeros:output:0gru_1/strided_slice_1:output:0=gru_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0(gru_1_gru_cell_1_readvariableop_resource/gru_1_gru_cell_1_matmul_readvariableop_resource1gru_1_gru_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *#
bodyR
gru_1_while_body_275850*#
condR
gru_1_while_cond_275849*8
output_shapes'
%: : : : :€€€€€€€€€@: : : : : *
parallel_iterations З
6gru_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   и
(gru_1/TensorArrayV2Stack/TensorListStackTensorListStackgru_1/while:output:3?gru_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€@*
element_dtype0*
num_elementsn
gru_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€g
gru_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
gru_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:•
gru_1/strided_slice_3StridedSlice1gru_1/TensorArrayV2Stack/TensorListStack:tensor:0$gru_1/strided_slice_3/stack:output:0&gru_1/strided_slice_3/stack_1:output:0&gru_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_maskk
gru_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
gru_1/transpose_1	Transpose1gru_1/TensorArrayV2Stack/TensorListStack:tensor:0gru_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€@a
gru_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
dropout_3/IdentityIdentitygru_1/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Д
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0О
dense_1/MatMulMatMuldropout_3/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€g
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Б
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp#^gru/gru_cell/MatMul/ReadVariableOp%^gru/gru_cell/MatMul_1/ReadVariableOp^gru/gru_cell/ReadVariableOp
^gru/while'^gru_1/gru_cell_1/MatMul/ReadVariableOp)^gru_1/gru_cell_1/MatMul_1/ReadVariableOp ^gru_1/gru_cell_1/ReadVariableOp^gru_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€
: : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2H
"gru/gru_cell/MatMul/ReadVariableOp"gru/gru_cell/MatMul/ReadVariableOp2L
$gru/gru_cell/MatMul_1/ReadVariableOp$gru/gru_cell/MatMul_1/ReadVariableOp2:
gru/gru_cell/ReadVariableOpgru/gru_cell/ReadVariableOp2
	gru/while	gru/while2P
&gru_1/gru_cell_1/MatMul/ReadVariableOp&gru_1/gru_cell_1/MatMul/ReadVariableOp2T
(gru_1/gru_cell_1/MatMul_1/ReadVariableOp(gru_1/gru_cell_1/MatMul_1/ReadVariableOp2B
gru_1/gru_cell_1/ReadVariableOpgru_1/gru_cell_1/ReadVariableOp2
gru_1/whilegru_1/while:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
¶@
з
gru_while_body_276011$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2#
gru_while_gru_strided_slice_1_0_
[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0?
,gru_while_gru_cell_readvariableop_resource_0:	АF
3gru_while_gru_cell_matmul_readvariableop_resource_0:	АI
5gru_while_gru_cell_matmul_1_readvariableop_resource_0:
АА
gru_while_identity
gru_while_identity_1
gru_while_identity_2
gru_while_identity_3
gru_while_identity_4!
gru_while_gru_strided_slice_1]
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor=
*gru_while_gru_cell_readvariableop_resource:	АD
1gru_while_gru_cell_matmul_readvariableop_resource:	АG
3gru_while_gru_cell_matmul_1_readvariableop_resource:
ААИҐ(gru/while/gru_cell/MatMul/ReadVariableOpҐ*gru/while/gru_cell/MatMul_1/ReadVariableOpҐ!gru/while/gru_cell/ReadVariableOpМ
;gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ї
-gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0gru_while_placeholderDgru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0П
!gru/while/gru_cell/ReadVariableOpReadVariableOp,gru_while_gru_cell_readvariableop_resource_0*
_output_shapes
:	А*
dtype0З
gru/while/gru_cell/unstackUnpack)gru/while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numЭ
(gru/while/gru_cell/MatMul/ReadVariableOpReadVariableOp3gru_while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0Њ
gru/while/gru_cell/MatMulMatMul4gru/while/TensorArrayV2Read/TensorListGetItem:item:00gru/while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АҐ
gru/while/gru_cell/BiasAddBiasAdd#gru/while/gru_cell/MatMul:product:0#gru/while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аm
"gru/while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€я
gru/while/gru_cell/splitSplit+gru/while/gru_cell/split/split_dim:output:0#gru/while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitҐ
*gru/while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp5gru_while_gru_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0•
gru/while/gru_cell/MatMul_1MatMulgru_while_placeholder_22gru/while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А¶
gru/while/gru_cell/BiasAdd_1BiasAdd%gru/while/gru_cell/MatMul_1:product:0#gru/while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аm
gru/while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"А   А   €€€€o
$gru/while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Х
gru/while/gru_cell/split_1SplitV%gru/while/gru_cell/BiasAdd_1:output:0!gru/while/gru_cell/Const:output:0-gru/while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitЪ
gru/while/gru_cell/addAddV2!gru/while/gru_cell/split:output:0#gru/while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аt
gru/while/gru_cell/SigmoidSigmoidgru/while/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
gru/while/gru_cell/add_1AddV2!gru/while/gru_cell/split:output:1#gru/while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аx
gru/while/gru_cell/Sigmoid_1Sigmoidgru/while/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЧ
gru/while/gru_cell/mulMul gru/while/gru_cell/Sigmoid_1:y:0#gru/while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:€€€€€€€€€АУ
gru/while/gru_cell/add_2AddV2!gru/while/gru_cell/split:output:2gru/while/gru_cell/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
gru/while/gru_cell/ReluRelugru/while/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЛ
gru/while/gru_cell/mul_1Mulgru/while/gru_cell/Sigmoid:y:0gru_while_placeholder_2*
T0*(
_output_shapes
:€€€€€€€€€А]
gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?У
gru/while/gru_cell/subSub!gru/while/gru_cell/sub/x:output:0gru/while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
gru/while/gru_cell/mul_2Mulgru/while/gru_cell/sub:z:0%gru/while/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АР
gru/while/gru_cell/add_3AddV2gru/while/gru_cell/mul_1:z:0gru/while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А—
.gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_while_placeholder_1gru_while_placeholdergru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:йи“Q
gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
gru/while/addAddV2gru_while_placeholdergru/while/add/y:output:0*
T0*
_output_shapes
: S
gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
gru/while/add_1AddV2 gru_while_gru_while_loop_countergru/while/add_1/y:output:0*
T0*
_output_shapes
: e
gru/while/IdentityIdentitygru/while/add_1:z:0^gru/while/NoOp*
T0*
_output_shapes
: z
gru/while/Identity_1Identity&gru_while_gru_while_maximum_iterations^gru/while/NoOp*
T0*
_output_shapes
: e
gru/while/Identity_2Identitygru/while/add:z:0^gru/while/NoOp*
T0*
_output_shapes
: Т
gru/while/Identity_3Identity>gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru/while/NoOp*
T0*
_output_shapes
: В
gru/while/Identity_4Identitygru/while/gru_cell/add_3:z:0^gru/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аћ
gru/while/NoOpNoOp)^gru/while/gru_cell/MatMul/ReadVariableOp+^gru/while/gru_cell/MatMul_1/ReadVariableOp"^gru/while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "l
3gru_while_gru_cell_matmul_1_readvariableop_resource5gru_while_gru_cell_matmul_1_readvariableop_resource_0"h
1gru_while_gru_cell_matmul_readvariableop_resource3gru_while_gru_cell_matmul_readvariableop_resource_0"Z
*gru_while_gru_cell_readvariableop_resource,gru_while_gru_cell_readvariableop_resource_0"@
gru_while_gru_strided_slice_1gru_while_gru_strided_slice_1_0"1
gru_while_identitygru/while/Identity:output:0"5
gru_while_identity_1gru/while/Identity_1:output:0"5
gru_while_identity_2gru/while/Identity_2:output:0"5
gru_while_identity_3gru/while/Identity_3:output:0"5
gru_while_identity_4gru/while/Identity_4:output:0"Є
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :€€€€€€€€€А: : : : : 2T
(gru/while/gru_cell/MatMul/ReadVariableOp(gru/while/gru_cell/MatMul/ReadVariableOp2X
*gru/while/gru_cell/MatMul_1/ReadVariableOp*gru/while/gru_cell/MatMul_1/ReadVariableOp2F
!gru/while/gru_cell/ReadVariableOp!gru/while/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
“
Ф
H__inference_sequential_1_layer_call_and_return_conditional_losses_275564
	gru_input

gru_275542:	А

gru_275544:	А

gru_275546:
АА
gru_1_275550:	ј 
gru_1_275552:
Ај
gru_1_275554:	@ј 
dense_1_275558:@
dense_1_275560:
identityИҐdense_1/StatefulPartitionedCallҐ!dropout_2/StatefulPartitionedCallҐ!dropout_3/StatefulPartitionedCallҐgru/StatefulPartitionedCallҐgru_1/StatefulPartitionedCallт
gru/StatefulPartitionedCallStatefulPartitionedCall	gru_input
gru_275542
gru_275544
gru_275546*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€
А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_275417н
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€
А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_275248Ш
gru_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0gru_1_275550gru_1_275552gru_1_275554*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_275219О
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall&gru_1/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_275048Р
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_1_275558dense_1_275560*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_274992w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€о
NoOpNoOp ^dense_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^gru/StatefulPartitionedCall^gru_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€
: : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall2>
gru_1/StatefulPartitionedCallgru_1/StatefulPartitionedCall:V R
+
_output_shapes
:€€€€€€€€€

#
_user_specified_name	gru_input
м3
ц
?__inference_gru_layer_call_and_return_conditional_losses_274106

inputs"
gru_cell_274030:	А"
gru_cell_274032:	А#
gru_cell_274034:
АА
identityИҐ gru_cell/StatefulPartitionedCallҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЉ
 gru_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_274030gru_cell_274032gru_cell_274034*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_gru_cell_layer_call_and_return_conditional_losses_274029n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_274030gru_cell_274032gru_cell_274034*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_274042*
condR
while_cond_274041*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          †
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аq
NoOpNoOp!^gru_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2D
 gru_cell/StatefulPartitionedCall gru_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Џ
™
while_cond_274564
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_274564___redundant_placeholder04
0while_while_cond_274564___redundant_placeholder14
0while_while_cond_274564___redundant_placeholder24
0while_while_cond_274564___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :€€€€€€€€€@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
с4
А
A__inference_gru_1_layer_call_and_return_conditional_losses_274630

inputs$
gru_cell_1_274552:	ј%
gru_cell_1_274554:
Ај$
gru_cell_1_274556:	@ј
identityИҐ"gru_cell_1/StatefulPartitionedCallҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maskƒ
"gru_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_1_274552gru_cell_1_274554gru_cell_1_274556*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_gru_cell_1_layer_call_and_return_conditional_losses_274512n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ш
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_1_274552gru_cell_1_274554gru_cell_1_274556*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_274565*
condR
while_cond_274564*8
output_shapes'
%: : : : :€€€€€€€€€@: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@s
NoOpNoOp#^gru_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€€€€€€€€€€А: : : 2H
"gru_cell_1/StatefulPartitionedCall"gru_cell_1/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Џ
™
while_cond_277064
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_277064___redundant_placeholder04
0while_while_cond_277064___redundant_placeholder14
0while_while_cond_277064___redundant_placeholder24
0while_while_cond_277064___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :€€€€€€€€€@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
в	
–
-__inference_sequential_1_layer_call_fn_275635

inputs
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	ј
	unknown_3:
Ај
	unknown_4:	@ј
	unknown_5:@
	unknown_6:
identityИҐStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_275474o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€
: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
№
™
while_cond_274041
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_274041___redundant_placeholder04
0while_while_cond_274041___redundant_placeholder14
0while_while_cond_274041___redundant_placeholder24
0while_while_cond_274041___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
≈K
ф
?__inference_gru_layer_call_and_return_conditional_losses_274798

inputs3
 gru_cell_readvariableop_resource:	А:
'gru_cell_matmul_readvariableop_resource:	А=
)gru_cell_matmul_1_readvariableop_resource:
АА
identityИҐgru_cell/MatMul/ReadVariableOpҐ gru_cell/MatMul_1/ReadVariableOpҐgru_cell/ReadVariableOpҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_masky
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	А*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numЗ
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0О
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АД
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Ѕ
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitМ
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0И
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АИ
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аc
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"А   А   €€€€e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€н
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аd
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:€€€€€€€€€Аu
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€А\
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:€€€€€€€€€АS
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_274709*
condR
while_cond_274708*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   √
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:
€€€€€€€€€А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€
А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:€€€€€€€€€
Ађ
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
≈K
ф
?__inference_gru_layer_call_and_return_conditional_losses_275417

inputs3
 gru_cell_readvariableop_resource:	А:
'gru_cell_matmul_readvariableop_resource:	А=
)gru_cell_matmul_1_readvariableop_resource:
АА
identityИҐgru_cell/MatMul/ReadVariableOpҐ gru_cell/MatMul_1/ReadVariableOpҐgru_cell/ReadVariableOpҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_masky
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	А*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numЗ
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0О
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АД
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Ѕ
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitМ
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0И
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АИ
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аc
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"А   А   €€€€e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€н
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аd
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:€€€€€€€€€Аu
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€А\
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:€€€€€€€€€АS
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_275328*
condR
while_cond_275327*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   √
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:
€€€€€€€€€А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€
А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:€€€€€€€€€
Ађ
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
Љ
Ґ
while_body_274042
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_gru_cell_274064_0:	А*
while_gru_cell_274066_0:	А+
while_gru_cell_274068_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_gru_cell_274064:	А(
while_gru_cell_274066:	А)
while_gru_cell_274068:
ААИҐ&while/gru_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0ч
&while/gru_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_274064_0while_gru_cell_274066_0while_gru_cell_274068_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_gru_cell_layer_call_and_return_conditional_losses_274029Ў
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder/while/gru_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Н
while/Identity_4Identity/while/gru_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аu

while/NoOpNoOp'^while/gru_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "0
while_gru_cell_274064while_gru_cell_274064_0"0
while_gru_cell_274066while_gru_cell_274066_0"0
while_gru_cell_274068while_gru_cell_274068_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :€€€€€€€€€А: : : : : 2P
&while/gru_cell/StatefulPartitionedCall&while/gru_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
£;
п
while_body_276687
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	АB
/while_gru_cell_matmul_readvariableop_resource_0:	АE
1while_gru_cell_matmul_1_readvariableop_resource_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	А@
-while_gru_cell_matmul_readvariableop_resource:	АC
/while_gru_cell_matmul_1_readvariableop_resource:
ААИҐ$while/gru_cell/MatMul/ReadVariableOpҐ&while/gru_cell/MatMul_1/ReadVariableOpҐwhile/gru_cell/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0З
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	А*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numХ
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0≤
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЦ
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аi
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€”
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitЪ
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Щ
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЪ
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аi
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"А   А   €€€€k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Е
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitО
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аl
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€АР
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аp
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЛ
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:€€€€€€€€€АЗ
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аh
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:€€€€€€€€€АY
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?З
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АД
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€АЉ

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :€€€€€€€€€А: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
Ў
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_277635

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
м
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_274811

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:€€€€€€€€€
А`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:€€€€€€€€€
А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€
А:T P
,
_output_shapes
:€€€€€€€€€
А
 
_user_specified_nameinputs
ь
Ь
gru_1_while_cond_276168(
$gru_1_while_gru_1_while_loop_counter.
*gru_1_while_gru_1_while_maximum_iterations
gru_1_while_placeholder
gru_1_while_placeholder_1
gru_1_while_placeholder_2*
&gru_1_while_less_gru_1_strided_slice_1@
<gru_1_while_gru_1_while_cond_276168___redundant_placeholder0@
<gru_1_while_gru_1_while_cond_276168___redundant_placeholder1@
<gru_1_while_gru_1_while_cond_276168___redundant_placeholder2@
<gru_1_while_gru_1_while_cond_276168___redundant_placeholder3
gru_1_while_identity
z
gru_1/while/LessLessgru_1_while_placeholder&gru_1_while_less_gru_1_strided_slice_1*
T0*
_output_shapes
: W
gru_1/while/IdentityIdentitygru_1/while/Less:z:0*
T0
*
_output_shapes
: "5
gru_1_while_identitygru_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :€€€€€€€€€@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
Ў
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_274980

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
÷=
Б
while_body_275129
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_1_readvariableop_resource_0:	јE
1while_gru_cell_1_matmul_readvariableop_resource_0:
АјF
3while_gru_cell_1_matmul_1_readvariableop_resource_0:	@ј
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_1_readvariableop_resource:	јC
/while_gru_cell_1_matmul_readvariableop_resource:
АјD
1while_gru_cell_1_matmul_1_readvariableop_resource:	@јИҐ&while/gru_cell_1/MatMul/ReadVariableOpҐ(while/gru_cell_1/MatMul_1/ReadVariableOpҐwhile/gru_cell_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype0Л
while/gru_cell_1/ReadVariableOpReadVariableOp*while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	ј*
dtype0Г
while/gru_cell_1/unstackUnpack'while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:ј:ј*	
numЪ
&while/gru_cell_1/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
Ај*
dtype0ґ
while/gru_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јЬ
while/gru_cell_1/BiasAddBiasAdd!while/gru_cell_1/MatMul:product:0!while/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€јk
 while/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€÷
while/gru_cell_1/splitSplit)while/gru_cell_1/split/split_dim:output:0!while/gru_cell_1/BiasAdd:output:0*
T0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitЭ
(while/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	@ј*
dtype0Э
while/gru_cell_1/MatMul_1MatMulwhile_placeholder_20while/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ј†
while/gru_cell_1/BiasAdd_1BiasAdd#while/gru_cell_1/MatMul_1:product:0!while/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€јk
while/gru_cell_1/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   €€€€m
"while/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€К
while/gru_cell_1/split_1SplitV#while/gru_cell_1/BiasAdd_1:output:0while/gru_cell_1/Const:output:0+while/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitУ
while/gru_cell_1/addAddV2while/gru_cell_1/split:output:0!while/gru_cell_1/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@o
while/gru_cell_1/SigmoidSigmoidwhile/gru_cell_1/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Х
while/gru_cell_1/add_1AddV2while/gru_cell_1/split:output:1!while/gru_cell_1/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€@s
while/gru_cell_1/Sigmoid_1Sigmoidwhile/gru_cell_1/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Р
while/gru_cell_1/mulMulwhile/gru_cell_1/Sigmoid_1:y:0!while/gru_cell_1/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€@М
while/gru_cell_1/add_2AddV2while/gru_cell_1/split:output:2while/gru_cell_1/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@k
while/gru_cell_1/ReluReluwhile/gru_cell_1/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@В
while/gru_cell_1/mul_1Mulwhile/gru_cell_1/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:€€€€€€€€€@[
while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?М
while/gru_cell_1/subSubwhile/gru_cell_1/sub/x:output:0while/gru_cell_1/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@О
while/gru_cell_1/mul_2Mulwhile/gru_cell_1/sub:z:0#while/gru_cell_1/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@Й
while/gru_cell_1/add_3AddV2while/gru_cell_1/mul_1:z:0while/gru_cell_1/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : л
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/gru_cell_1/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€@¬

while/NoOpNoOp'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_1_matmul_1_readvariableop_resource3while_gru_cell_1_matmul_1_readvariableop_resource_0"d
/while_gru_cell_1_matmul_readvariableop_resource1while_gru_cell_1_matmul_readvariableop_resource_0"V
(while_gru_cell_1_readvariableop_resource*while_gru_cell_1_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€@: : : : : 2P
&while/gru_cell_1/MatMul/ReadVariableOp&while/gru_cell_1/MatMul/ReadVariableOp2T
(while/gru_cell_1/MatMul_1/ReadVariableOp(while/gru_cell_1/MatMul_1/ReadVariableOp2B
while/gru_cell_1/ReadVariableOpwhile/gru_cell_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
÷=
Б
while_body_274877
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_1_readvariableop_resource_0:	јE
1while_gru_cell_1_matmul_readvariableop_resource_0:
АјF
3while_gru_cell_1_matmul_1_readvariableop_resource_0:	@ј
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_1_readvariableop_resource:	јC
/while_gru_cell_1_matmul_readvariableop_resource:
АјD
1while_gru_cell_1_matmul_1_readvariableop_resource:	@јИҐ&while/gru_cell_1/MatMul/ReadVariableOpҐ(while/gru_cell_1/MatMul_1/ReadVariableOpҐwhile/gru_cell_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype0Л
while/gru_cell_1/ReadVariableOpReadVariableOp*while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	ј*
dtype0Г
while/gru_cell_1/unstackUnpack'while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:ј:ј*	
numЪ
&while/gru_cell_1/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
Ај*
dtype0ґ
while/gru_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јЬ
while/gru_cell_1/BiasAddBiasAdd!while/gru_cell_1/MatMul:product:0!while/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€јk
 while/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€÷
while/gru_cell_1/splitSplit)while/gru_cell_1/split/split_dim:output:0!while/gru_cell_1/BiasAdd:output:0*
T0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitЭ
(while/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	@ј*
dtype0Э
while/gru_cell_1/MatMul_1MatMulwhile_placeholder_20while/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ј†
while/gru_cell_1/BiasAdd_1BiasAdd#while/gru_cell_1/MatMul_1:product:0!while/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€јk
while/gru_cell_1/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   €€€€m
"while/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€К
while/gru_cell_1/split_1SplitV#while/gru_cell_1/BiasAdd_1:output:0while/gru_cell_1/Const:output:0+while/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitУ
while/gru_cell_1/addAddV2while/gru_cell_1/split:output:0!while/gru_cell_1/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@o
while/gru_cell_1/SigmoidSigmoidwhile/gru_cell_1/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Х
while/gru_cell_1/add_1AddV2while/gru_cell_1/split:output:1!while/gru_cell_1/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€@s
while/gru_cell_1/Sigmoid_1Sigmoidwhile/gru_cell_1/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Р
while/gru_cell_1/mulMulwhile/gru_cell_1/Sigmoid_1:y:0!while/gru_cell_1/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€@М
while/gru_cell_1/add_2AddV2while/gru_cell_1/split:output:2while/gru_cell_1/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@k
while/gru_cell_1/ReluReluwhile/gru_cell_1/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@В
while/gru_cell_1/mul_1Mulwhile/gru_cell_1/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:€€€€€€€€€@[
while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?М
while/gru_cell_1/subSubwhile/gru_cell_1/sub/x:output:0while/gru_cell_1/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@О
while/gru_cell_1/mul_2Mulwhile/gru_cell_1/sub:z:0#while/gru_cell_1/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@Й
while/gru_cell_1/add_3AddV2while/gru_cell_1/mul_1:z:0while/gru_cell_1/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : л
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/gru_cell_1/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€@¬

while/NoOpNoOp'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_1_matmul_1_readvariableop_resource3while_gru_cell_1_matmul_1_readvariableop_resource_0"d
/while_gru_cell_1_matmul_readvariableop_resource1while_gru_cell_1_matmul_readvariableop_resource_0"V
(while_gru_cell_1_readvariableop_resource*while_gru_cell_1_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€@: : : : : 2P
&while/gru_cell_1/MatMul/ReadVariableOp&while/gru_cell_1/MatMul/ReadVariableOp2T
(while/gru_cell_1/MatMul_1/ReadVariableOp(while/gru_cell_1/MatMul_1/ReadVariableOp2B
while/gru_cell_1/ReadVariableOpwhile/gru_cell_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
ь
Ь
gru_1_while_cond_275849(
$gru_1_while_gru_1_while_loop_counter.
*gru_1_while_gru_1_while_maximum_iterations
gru_1_while_placeholder
gru_1_while_placeholder_1
gru_1_while_placeholder_2*
&gru_1_while_less_gru_1_strided_slice_1@
<gru_1_while_gru_1_while_cond_275849___redundant_placeholder0@
<gru_1_while_gru_1_while_cond_275849___redundant_placeholder1@
<gru_1_while_gru_1_while_cond_275849___redundant_placeholder2@
<gru_1_while_gru_1_while_cond_275849___redundant_placeholder3
gru_1_while_identity
z
gru_1/while/LessLessgru_1_while_placeholder&gru_1_while_less_gru_1_strided_slice_1*
T0*
_output_shapes
: W
gru_1/while/IdentityIdentitygru_1/while/Less:z:0*
T0
*
_output_shapes
: "5
gru_1_while_identitygru_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :€€€€€€€€€@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
Х
џ
F__inference_gru_cell_1_layer_call_and_return_conditional_losses_277839

inputs
states_0*
readvariableop_resource:	ј2
matmul_readvariableop_resource:
Ај3
 matmul_1_readvariableop_resource:	@ј
identity

identity_1ИҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpҐReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	ј*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:ј:ј*	
numv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ај*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€јZ
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splity
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@ј*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€јZ
ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   €€€€\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€∆
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€@b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€@Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@I
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@U
mul_1MulSigmoid:y:0states_0*
T0*'
_output_shapes
:€€€€€€€€€@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@[
mul_2Mulsub:z:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@X
IdentityIdentity	add_3:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@Z

Identity_1Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@Й
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€А:€€€€€€€€€@: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
states/0
ј
Х
(__inference_dense_1_layer_call_fn_277656

inputs
unknown:@
	unknown_0:
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_274992o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ю
ґ
$__inference_gru_layer_call_fn_276317

inputs
unknown:	А
	unknown_0:	А
	unknown_1:
АА
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€
А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_275417t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:€€€€€€€€€
А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
№
™
while_cond_276686
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_276686___redundant_placeholder04
0while_while_cond_276686___redundant_placeholder14
0while_while_cond_276686___redundant_placeholder24
0while_while_cond_276686___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
№
™
while_cond_276380
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_276380___redundant_placeholder04
0while_while_cond_276380___redundant_placeholder14
0while_while_cond_276380___redundant_placeholder24
0while_while_cond_276380___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
®
н
"sequential_1_gru_while_cond_273710>
:sequential_1_gru_while_sequential_1_gru_while_loop_counterD
@sequential_1_gru_while_sequential_1_gru_while_maximum_iterations&
"sequential_1_gru_while_placeholder(
$sequential_1_gru_while_placeholder_1(
$sequential_1_gru_while_placeholder_2@
<sequential_1_gru_while_less_sequential_1_gru_strided_slice_1V
Rsequential_1_gru_while_sequential_1_gru_while_cond_273710___redundant_placeholder0V
Rsequential_1_gru_while_sequential_1_gru_while_cond_273710___redundant_placeholder1V
Rsequential_1_gru_while_sequential_1_gru_while_cond_273710___redundant_placeholder2V
Rsequential_1_gru_while_sequential_1_gru_while_cond_273710___redundant_placeholder3#
sequential_1_gru_while_identity
¶
sequential_1/gru/while/LessLess"sequential_1_gru_while_placeholder<sequential_1_gru_while_less_sequential_1_gru_strided_slice_1*
T0*
_output_shapes
: m
sequential_1/gru/while/IdentityIdentitysequential_1/gru/while/Less:z:0*
T0
*
_output_shapes
: "K
sequential_1_gru_while_identity(sequential_1/gru/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
ъ
Є
&__inference_gru_1_layer_call_fn_276989

inputs
unknown:	ј
	unknown_0:
Ај
	unknown_1:	@ј
identityИҐStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_274967o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€
А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:€€€€€€€€€
А
 
_user_specified_nameinputs
¶
ў
D__inference_gru_cell_layer_call_and_return_conditional_losses_277733

inputs
states_0*
readvariableop_resource:	А1
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
АА
identity

identity_1ИҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpҐReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	А*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€АZ
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€АZ
ConstConst*
_output_shapes
:*
dtype0*!
valueB"А   А   €€€€\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€…
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:€€€€€€€€€АR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:€€€€€€€€€АZ
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€АJ
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€АV
mul_1MulSigmoid:y:0states_0*
T0*(
_output_shapes
:€€€€€€€€€АJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€А\
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АW
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АЙ
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€:€€€€€€€€€А: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/0
Х
џ
F__inference_gru_cell_1_layer_call_and_return_conditional_losses_277878

inputs
states_0*
readvariableop_resource:	ј2
matmul_readvariableop_resource:
Ај3
 matmul_1_readvariableop_resource:	@ј
identity

identity_1ИҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpҐReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	ј*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:ј:ј*	
numv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ај*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€јZ
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splity
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@ј*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€јZ
ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   €€€€\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€∆
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€@b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€@Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@I
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@U
mul_1MulSigmoid:y:0states_0*
T0*'
_output_shapes
:€€€€€€€€€@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@[
mul_2Mulsub:z:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@X
IdentityIdentity	add_3:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@Z

Identity_1Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@Й
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€А:€€€€€€€€€@: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
states/0
Љ
Ґ
while_body_274224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_gru_cell_274246_0:	А*
while_gru_cell_274248_0:	А+
while_gru_cell_274250_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_gru_cell_274246:	А(
while_gru_cell_274248:	А)
while_gru_cell_274250:
ААИҐ&while/gru_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0ч
&while/gru_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_274246_0while_gru_cell_274248_0while_gru_cell_274250_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_gru_cell_layer_call_and_return_conditional_losses_274172Ў
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder/while/gru_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Н
while/Identity_4Identity/while/gru_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аu

while/NoOpNoOp'^while/gru_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "0
while_gru_cell_274246while_gru_cell_274246_0"0
while_gru_cell_274248while_gru_cell_274248_0"0
while_gru_cell_274250while_gru_cell_274250_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :€€€€€€€€€А: : : : : 2P
&while/gru_cell/StatefulPartitionedCall&while/gru_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
µ

џ
+__inference_gru_cell_1_layer_call_fn_277800

inputs
states_0
unknown:	ј
	unknown_0:
Ај
	unknown_1:	@ј
identity

identity_1ИҐStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_gru_cell_1_layer_call_and_return_conditional_losses_274512o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€А:€€€€€€€€€@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
states/0
µ

џ
+__inference_gru_cell_1_layer_call_fn_277786

inputs
states_0
unknown:	ј
	unknown_0:
Ај
	unknown_1:	@ј
identity

identity_1ИҐStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_gru_cell_1_layer_call_and_return_conditional_losses_274367o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€А:€€€€€€€€€@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
states/0
Џ
™
while_cond_274876
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_274876___redundant_placeholder04
0while_while_cond_274876___redundant_placeholder14
0while_while_cond_274876___redundant_placeholder24
0while_while_cond_274876___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :€€€€€€€€€@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
Ю
„
D__inference_gru_cell_layer_call_and_return_conditional_losses_274029

inputs

states*
readvariableop_resource:	А1
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
АА
identity

identity_1ИҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpҐReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	А*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€АZ
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€АZ
ConstConst*
_output_shapes
:*
dtype0*!
valueB"А   А   €€€€\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€…
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:€€€€€€€€€АR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:€€€€€€€€€АZ
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€АJ
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€АT
mul_1MulSigmoid:y:0states*
T0*(
_output_shapes
:€€€€€€€€€АJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€А\
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АW
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АЙ
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€:€€€€€€€€€А: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_namestates
£ї
Ч
H__inference_sequential_1_layer_call_and_return_conditional_losses_276273

inputs7
$gru_gru_cell_readvariableop_resource:	А>
+gru_gru_cell_matmul_readvariableop_resource:	АA
-gru_gru_cell_matmul_1_readvariableop_resource:
АА;
(gru_1_gru_cell_1_readvariableop_resource:	јC
/gru_1_gru_cell_1_matmul_readvariableop_resource:
АјD
1gru_1_gru_cell_1_matmul_1_readvariableop_resource:	@ј8
&dense_1_matmul_readvariableop_resource:@5
'dense_1_biasadd_readvariableop_resource:
identityИҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpҐ"gru/gru_cell/MatMul/ReadVariableOpҐ$gru/gru_cell/MatMul_1/ReadVariableOpҐgru/gru_cell/ReadVariableOpҐ	gru/whileҐ&gru_1/gru_cell_1/MatMul/ReadVariableOpҐ(gru_1/gru_cell_1/MatMul_1/ReadVariableOpҐgru_1/gru_cell_1/ReadVariableOpҐgru_1/while?
	gru/ShapeShapeinputs*
T0*
_output_shapes
:a
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:е
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    y
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аg
gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          u
gru/transpose	Transposeinputsgru/transpose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€L
gru/Shape_1Shapegru/transpose:y:0*
T0*
_output_shapes
:c
gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
gru/strided_slice_1StridedSlicegru/Shape_1:output:0"gru/strided_slice_1/stack:output:0$gru/strided_slice_1/stack_1:output:0$gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ј
gru/TensorArrayV2TensorListReserve(gru/TensorArrayV2/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“К
9gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   м
+gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru/transpose:y:0Bgru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“c
gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:э
gru/strided_slice_2StridedSlicegru/transpose:y:0"gru/strided_slice_2/stack:output:0$gru/strided_slice_2/stack_1:output:0$gru/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskБ
gru/gru_cell/ReadVariableOpReadVariableOp$gru_gru_cell_readvariableop_resource*
_output_shapes
:	А*
dtype0{
gru/gru_cell/unstackUnpack#gru/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numП
"gru/gru_cell/MatMul/ReadVariableOpReadVariableOp+gru_gru_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Ъ
gru/gru_cell/MatMulMatMulgru/strided_slice_2:output:0*gru/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АР
gru/gru_cell/BiasAddBiasAddgru/gru_cell/MatMul:product:0gru/gru_cell/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аg
gru/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Ќ
gru/gru_cell/splitSplit%gru/gru_cell/split/split_dim:output:0gru/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitФ
$gru/gru_cell/MatMul_1/ReadVariableOpReadVariableOp-gru_gru_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ф
gru/gru_cell/MatMul_1MatMulgru/zeros:output:0,gru/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АФ
gru/gru_cell/BiasAdd_1BiasAddgru/gru_cell/MatMul_1:product:0gru/gru_cell/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аg
gru/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"А   А   €€€€i
gru/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€э
gru/gru_cell/split_1SplitVgru/gru_cell/BiasAdd_1:output:0gru/gru_cell/Const:output:0'gru/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitИ
gru/gru_cell/addAddV2gru/gru_cell/split:output:0gru/gru_cell/split_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аh
gru/gru_cell/SigmoidSigmoidgru/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€АК
gru/gru_cell/add_1AddV2gru/gru_cell/split:output:1gru/gru_cell/split_1:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аl
gru/gru_cell/Sigmoid_1Sigmoidgru/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
gru/gru_cell/mulMulgru/gru_cell/Sigmoid_1:y:0gru/gru_cell/split_1:output:2*
T0*(
_output_shapes
:€€€€€€€€€АБ
gru/gru_cell/add_2AddV2gru/gru_cell/split:output:2gru/gru_cell/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аd
gru/gru_cell/ReluRelugru/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аz
gru/gru_cell/mul_1Mulgru/gru_cell/Sigmoid:y:0gru/zeros:output:0*
T0*(
_output_shapes
:€€€€€€€€€АW
gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Б
gru/gru_cell/subSubgru/gru_cell/sub/x:output:0gru/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
gru/gru_cell/mul_2Mulgru/gru_cell/sub:z:0gru/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А~
gru/gru_cell/add_3AddV2gru/gru_cell/mul_1:z:0gru/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
!gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   ƒ
gru/TensorArrayV2_1TensorListReserve*gru/TensorArrayV2_1/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“J
gru/timeConst*
_output_shapes
: *
dtype0*
value	B : g
gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€X
gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : л
	gru/whileWhilegru/while/loop_counter:output:0%gru/while/maximum_iterations:output:0gru/time:output:0gru/TensorArrayV2_1:handle:0gru/zeros:output:0gru/strided_slice_1:output:0;gru/TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_gru_cell_readvariableop_resource+gru_gru_cell_matmul_readvariableop_resource-gru_gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *!
bodyR
gru_while_body_276011*!
condR
gru_while_cond_276010*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations Е
4gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   ѕ
&gru/TensorArrayV2Stack/TensorListStackTensorListStackgru/while:output:3=gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:
€€€€€€€€€А*
element_dtype0l
gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€e
gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ь
gru/strided_slice_3StridedSlice/gru/TensorArrayV2Stack/TensorListStack:tensor:0"gru/strided_slice_3/stack:output:0$gru/strided_slice_3/stack_1:output:0$gru/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maski
gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          £
gru/transpose_1	Transpose/gru/TensorArrayV2Stack/TensorListStack:tensor:0gru/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€
А_
gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    \
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?К
dropout_2/dropout/MulMulgru/transpose_1:y:0 dropout_2/dropout/Const:output:0*
T0*,
_output_shapes
:€€€€€€€€€
АZ
dropout_2/dropout/ShapeShapegru/transpose_1:y:0*
T0*
_output_shapes
:±
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*,
_output_shapes
:€€€€€€€€€
А*
dtype0*

seed*e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>…
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:€€€€€€€€€
АИ
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:€€€€€€€€€
АМ
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*,
_output_shapes
:€€€€€€€€€
АV
gru_1/ShapeShapedropout_2/dropout/Mul_1:z:0*
T0*
_output_shapes
:c
gru_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
gru_1/strided_sliceStridedSlicegru_1/Shape:output:0"gru_1/strided_slice/stack:output:0$gru_1/strided_slice/stack_1:output:0$gru_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
gru_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@Е
gru_1/zeros/packedPackgru_1/strided_slice:output:0gru_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
gru_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
gru_1/zerosFillgru_1/zeros/packed:output:0gru_1/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@i
gru_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          П
gru_1/transpose	Transposedropout_2/dropout/Mul_1:z:0gru_1/transpose/perm:output:0*
T0*,
_output_shapes
:
€€€€€€€€€АP
gru_1/Shape_1Shapegru_1/transpose:y:0*
T0*
_output_shapes
:e
gru_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
gru_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
gru_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
gru_1/strided_slice_1StridedSlicegru_1/Shape_1:output:0$gru_1/strided_slice_1/stack:output:0&gru_1/strided_slice_1/stack_1:output:0&gru_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!gru_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€∆
gru_1/TensorArrayV2TensorListReserve*gru_1/TensorArrayV2/element_shape:output:0gru_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“М
;gru_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   т
-gru_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_1/transpose:y:0Dgru_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“e
gru_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: g
gru_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
gru_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
gru_1/strided_slice_2StridedSlicegru_1/transpose:y:0$gru_1/strided_slice_2/stack:output:0&gru_1/strided_slice_2/stack_1:output:0&gru_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maskЙ
gru_1/gru_cell_1/ReadVariableOpReadVariableOp(gru_1_gru_cell_1_readvariableop_resource*
_output_shapes
:	ј*
dtype0Г
gru_1/gru_cell_1/unstackUnpack'gru_1/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:ј:ј*	
numШ
&gru_1/gru_cell_1/MatMul/ReadVariableOpReadVariableOp/gru_1_gru_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
Ај*
dtype0§
gru_1/gru_cell_1/MatMulMatMulgru_1/strided_slice_2:output:0.gru_1/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јЬ
gru_1/gru_cell_1/BiasAddBiasAdd!gru_1/gru_cell_1/MatMul:product:0!gru_1/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€јk
 gru_1/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€÷
gru_1/gru_cell_1/splitSplit)gru_1/gru_cell_1/split/split_dim:output:0!gru_1/gru_cell_1/BiasAdd:output:0*
T0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitЫ
(gru_1/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp1gru_1_gru_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	@ј*
dtype0Ю
gru_1/gru_cell_1/MatMul_1MatMulgru_1/zeros:output:00gru_1/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ј†
gru_1/gru_cell_1/BiasAdd_1BiasAdd#gru_1/gru_cell_1/MatMul_1:product:0!gru_1/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€јk
gru_1/gru_cell_1/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   €€€€m
"gru_1/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€К
gru_1/gru_cell_1/split_1SplitV#gru_1/gru_cell_1/BiasAdd_1:output:0gru_1/gru_cell_1/Const:output:0+gru_1/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitУ
gru_1/gru_cell_1/addAddV2gru_1/gru_cell_1/split:output:0!gru_1/gru_cell_1/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@o
gru_1/gru_cell_1/SigmoidSigmoidgru_1/gru_cell_1/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Х
gru_1/gru_cell_1/add_1AddV2gru_1/gru_cell_1/split:output:1!gru_1/gru_cell_1/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€@s
gru_1/gru_cell_1/Sigmoid_1Sigmoidgru_1/gru_cell_1/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Р
gru_1/gru_cell_1/mulMulgru_1/gru_cell_1/Sigmoid_1:y:0!gru_1/gru_cell_1/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€@М
gru_1/gru_cell_1/add_2AddV2gru_1/gru_cell_1/split:output:2gru_1/gru_cell_1/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@k
gru_1/gru_cell_1/ReluRelugru_1/gru_cell_1/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Г
gru_1/gru_cell_1/mul_1Mulgru_1/gru_cell_1/Sigmoid:y:0gru_1/zeros:output:0*
T0*'
_output_shapes
:€€€€€€€€€@[
gru_1/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?М
gru_1/gru_cell_1/subSubgru_1/gru_cell_1/sub/x:output:0gru_1/gru_cell_1/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@О
gru_1/gru_cell_1/mul_2Mulgru_1/gru_cell_1/sub:z:0#gru_1/gru_cell_1/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@Й
gru_1/gru_cell_1/add_3AddV2gru_1/gru_cell_1/mul_1:z:0gru_1/gru_cell_1/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@t
#gru_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   d
"gru_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :„
gru_1/TensorArrayV2_1TensorListReserve,gru_1/TensorArrayV2_1/element_shape:output:0+gru_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“L

gru_1/timeConst*
_output_shapes
: *
dtype0*
value	B : i
gru_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Z
gru_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Й
gru_1/whileWhile!gru_1/while/loop_counter:output:0'gru_1/while/maximum_iterations:output:0gru_1/time:output:0gru_1/TensorArrayV2_1:handle:0gru_1/zeros:output:0gru_1/strided_slice_1:output:0=gru_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0(gru_1_gru_cell_1_readvariableop_resource/gru_1_gru_cell_1_matmul_readvariableop_resource1gru_1_gru_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *#
bodyR
gru_1_while_body_276169*#
condR
gru_1_while_cond_276168*8
output_shapes'
%: : : : :€€€€€€€€€@: : : : : *
parallel_iterations З
6gru_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   и
(gru_1/TensorArrayV2Stack/TensorListStackTensorListStackgru_1/while:output:3?gru_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€@*
element_dtype0*
num_elementsn
gru_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€g
gru_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
gru_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:•
gru_1/strided_slice_3StridedSlice1gru_1/TensorArrayV2Stack/TensorListStack:tensor:0$gru_1/strided_slice_3/stack:output:0&gru_1/strided_slice_3/stack_1:output:0&gru_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_maskk
gru_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
gru_1/transpose_1	Transpose1gru_1/TensorArrayV2Stack/TensorListStack:tensor:0gru_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€@a
gru_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    \
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?Р
dropout_3/dropout/MulMulgru_1/strided_slice_3:output:0 dropout_3/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@e
dropout_3/dropout/ShapeShapegru_1/strided_slice_3:output:0*
T0*
_output_shapes
:є
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0*

seed**
seed2e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>ƒ
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Г
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€@З
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€@Д
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0О
dense_1/MatMulMatMuldropout_3/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€g
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Б
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp#^gru/gru_cell/MatMul/ReadVariableOp%^gru/gru_cell/MatMul_1/ReadVariableOp^gru/gru_cell/ReadVariableOp
^gru/while'^gru_1/gru_cell_1/MatMul/ReadVariableOp)^gru_1/gru_cell_1/MatMul_1/ReadVariableOp ^gru_1/gru_cell_1/ReadVariableOp^gru_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€
: : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2H
"gru/gru_cell/MatMul/ReadVariableOp"gru/gru_cell/MatMul/ReadVariableOp2L
$gru/gru_cell/MatMul_1/ReadVariableOp$gru/gru_cell/MatMul_1/ReadVariableOp2:
gru/gru_cell/ReadVariableOpgru/gru_cell/ReadVariableOp2
	gru/while	gru/while2P
&gru_1/gru_cell_1/MatMul/ReadVariableOp&gru_1/gru_cell_1/MatMul/ReadVariableOp2T
(gru_1/gru_cell_1/MatMul_1/ReadVariableOp(gru_1/gru_cell_1/MatMul_1/ReadVariableOp2B
gru_1/gru_cell_1/ReadVariableOpgru_1/gru_cell_1/ReadVariableOp2
gru_1/whilegru_1/while:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
£;
п
while_body_274709
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	АB
/while_gru_cell_matmul_readvariableop_resource_0:	АE
1while_gru_cell_matmul_1_readvariableop_resource_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	А@
-while_gru_cell_matmul_readvariableop_resource:	АC
/while_gru_cell_matmul_1_readvariableop_resource:
ААИҐ$while/gru_cell/MatMul/ReadVariableOpҐ&while/gru_cell/MatMul_1/ReadVariableOpҐwhile/gru_cell/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0З
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	А*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numХ
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0≤
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЦ
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аi
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€”
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitЪ
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Щ
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЪ
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аi
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"А   А   €€€€k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Е
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitО
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аl
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€АР
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аp
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЛ
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:€€€€€€€€€АЗ
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аh
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:€€€€€€€€€АY
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?З
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АД
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€АЉ

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :€€€€€€€€€А: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
Я
F
*__inference_dropout_3_layer_call_fn_277625

inputs
identity∞
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_274980`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
м
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_276944

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:€€€€€€€€€
А`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:€€€€€€€€€
А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€
А:T P
,
_output_shapes
:€€€€€€€€€
А
 
_user_specified_nameinputs
÷=
Б
while_body_277065
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_1_readvariableop_resource_0:	јE
1while_gru_cell_1_matmul_readvariableop_resource_0:
АјF
3while_gru_cell_1_matmul_1_readvariableop_resource_0:	@ј
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_1_readvariableop_resource:	јC
/while_gru_cell_1_matmul_readvariableop_resource:
АјD
1while_gru_cell_1_matmul_1_readvariableop_resource:	@јИҐ&while/gru_cell_1/MatMul/ReadVariableOpҐ(while/gru_cell_1/MatMul_1/ReadVariableOpҐwhile/gru_cell_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype0Л
while/gru_cell_1/ReadVariableOpReadVariableOp*while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	ј*
dtype0Г
while/gru_cell_1/unstackUnpack'while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:ј:ј*	
numЪ
&while/gru_cell_1/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
Ај*
dtype0ґ
while/gru_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јЬ
while/gru_cell_1/BiasAddBiasAdd!while/gru_cell_1/MatMul:product:0!while/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€јk
 while/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€÷
while/gru_cell_1/splitSplit)while/gru_cell_1/split/split_dim:output:0!while/gru_cell_1/BiasAdd:output:0*
T0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitЭ
(while/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	@ј*
dtype0Э
while/gru_cell_1/MatMul_1MatMulwhile_placeholder_20while/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ј†
while/gru_cell_1/BiasAdd_1BiasAdd#while/gru_cell_1/MatMul_1:product:0!while/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€јk
while/gru_cell_1/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   €€€€m
"while/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€К
while/gru_cell_1/split_1SplitV#while/gru_cell_1/BiasAdd_1:output:0while/gru_cell_1/Const:output:0+while/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitУ
while/gru_cell_1/addAddV2while/gru_cell_1/split:output:0!while/gru_cell_1/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@o
while/gru_cell_1/SigmoidSigmoidwhile/gru_cell_1/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Х
while/gru_cell_1/add_1AddV2while/gru_cell_1/split:output:1!while/gru_cell_1/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€@s
while/gru_cell_1/Sigmoid_1Sigmoidwhile/gru_cell_1/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Р
while/gru_cell_1/mulMulwhile/gru_cell_1/Sigmoid_1:y:0!while/gru_cell_1/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€@М
while/gru_cell_1/add_2AddV2while/gru_cell_1/split:output:2while/gru_cell_1/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@k
while/gru_cell_1/ReluReluwhile/gru_cell_1/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@В
while/gru_cell_1/mul_1Mulwhile/gru_cell_1/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:€€€€€€€€€@[
while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?М
while/gru_cell_1/subSubwhile/gru_cell_1/sub/x:output:0while/gru_cell_1/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@О
while/gru_cell_1/mul_2Mulwhile/gru_cell_1/sub:z:0#while/gru_cell_1/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@Й
while/gru_cell_1/add_3AddV2while/gru_cell_1/mul_1:z:0while/gru_cell_1/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : л
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/gru_cell_1/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€@¬

while/NoOpNoOp'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_1_matmul_1_readvariableop_resource3while_gru_cell_1_matmul_1_readvariableop_resource_0"d
/while_gru_cell_1_matmul_readvariableop_resource1while_gru_cell_1_matmul_readvariableop_resource_0"V
(while_gru_cell_1_readvariableop_resource*while_gru_cell_1_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€@: : : : : 2P
&while/gru_cell_1/MatMul/ReadVariableOp&while/gru_cell_1/MatMul/ReadVariableOp2T
(while/gru_cell_1/MatMul_1/ReadVariableOp(while/gru_cell_1/MatMul_1/ReadVariableOp2B
while/gru_cell_1/ReadVariableOpwhile/gru_cell_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
ГL
ц
?__inference_gru_layer_call_and_return_conditional_losses_276470
inputs_03
 gru_cell_readvariableop_resource:	А:
'gru_cell_matmul_readvariableop_resource:	А=
)gru_cell_matmul_1_readvariableop_resource:
АА
identityИҐgru_cell/MatMul/ReadVariableOpҐ gru_cell/MatMul_1/ReadVariableOpҐgru_cell/ReadVariableOpҐwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_masky
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	А*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numЗ
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0О
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АД
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Ѕ
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitМ
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0И
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АИ
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аc
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"А   А   €€€€e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€н
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аd
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:€€€€€€€€€Аu
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€А\
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:€€€€€€€€€АS
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_276381*
condR
while_cond_276380*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          †
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ађ
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
хM
Д
A__inference_gru_1_layer_call_and_return_conditional_losses_277310
inputs_05
"gru_cell_1_readvariableop_resource:	ј=
)gru_cell_1_matmul_readvariableop_resource:
Ај>
+gru_cell_1_matmul_1_readvariableop_resource:	@ј
identityИҐ gru_cell_1/MatMul/ReadVariableOpҐ"gru_cell_1/MatMul_1/ReadVariableOpҐgru_cell_1/ReadVariableOpҐwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask}
gru_cell_1/ReadVariableOpReadVariableOp"gru_cell_1_readvariableop_resource*
_output_shapes
:	ј*
dtype0w
gru_cell_1/unstackUnpack!gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:ј:ј*	
numМ
 gru_cell_1/MatMul/ReadVariableOpReadVariableOp)gru_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
Ај*
dtype0Т
gru_cell_1/MatMulMatMulstrided_slice_2:output:0(gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јК
gru_cell_1/BiasAddBiasAddgru_cell_1/MatMul:product:0gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€јe
gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ƒ
gru_cell_1/splitSplit#gru_cell_1/split/split_dim:output:0gru_cell_1/BiasAdd:output:0*
T0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitП
"gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	@ј*
dtype0М
gru_cell_1/MatMul_1MatMulzeros:output:0*gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јО
gru_cell_1/BiasAdd_1BiasAddgru_cell_1/MatMul_1:product:0gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€јe
gru_cell_1/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   €€€€g
gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€т
gru_cell_1/split_1SplitVgru_cell_1/BiasAdd_1:output:0gru_cell_1/Const:output:0%gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitБ
gru_cell_1/addAddV2gru_cell_1/split:output:0gru_cell_1/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
gru_cell_1/SigmoidSigmoidgru_cell_1/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Г
gru_cell_1/add_1AddV2gru_cell_1/split:output:1gru_cell_1/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€@g
gru_cell_1/Sigmoid_1Sigmoidgru_cell_1/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@~
gru_cell_1/mulMulgru_cell_1/Sigmoid_1:y:0gru_cell_1/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€@z
gru_cell_1/add_2AddV2gru_cell_1/split:output:2gru_cell_1/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@_
gru_cell_1/ReluRelugru_cell_1/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@q
gru_cell_1/mul_1Mulgru_cell_1/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:€€€€€€€€€@U
gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?z
gru_cell_1/subSubgru_cell_1/sub/x:output:0gru_cell_1/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@|
gru_cell_1/mul_2Mulgru_cell_1/sub:z:0gru_cell_1/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@w
gru_cell_1/add_3AddV2gru_cell_1/mul_1:z:0gru_cell_1/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ї
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_1_readvariableop_resource)gru_cell_1_matmul_readvariableop_resource+gru_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_277220*
condR
while_cond_277219*8
output_shapes'
%: : : : :€€€€€€€€€@: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@≤
NoOpNoOp!^gru_cell_1/MatMul/ReadVariableOp#^gru_cell_1/MatMul_1/ReadVariableOp^gru_cell_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€€€€€€€€€€А: : : 2D
 gru_cell_1/MatMul/ReadVariableOp gru_cell_1/MatMul/ReadVariableOp2H
"gru_cell_1/MatMul_1/ReadVariableOp"gru_cell_1/MatMul_1/ReadVariableOp26
gru_cell_1/ReadVariableOpgru_cell_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs/0
с4
А
A__inference_gru_1_layer_call_and_return_conditional_losses_274446

inputs$
gru_cell_1_274368:	ј%
gru_cell_1_274370:
Ај$
gru_cell_1_274372:	@ј
identityИҐ"gru_cell_1/StatefulPartitionedCallҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maskƒ
"gru_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_1_274368gru_cell_1_274370gru_cell_1_274372*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_gru_cell_1_layer_call_and_return_conditional_losses_274367n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ш
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_1_274368gru_cell_1_274370gru_cell_1_274372*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_274381*
condR
while_cond_274380*8
output_shapes'
%: : : : :€€€€€€€€€@: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@s
NoOpNoOp#^gru_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€€€€€€€€€€А: : : 2H
"gru_cell_1/StatefulPartitionedCall"gru_cell_1/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
–P
н
"sequential_1_gru_while_body_273711>
:sequential_1_gru_while_sequential_1_gru_while_loop_counterD
@sequential_1_gru_while_sequential_1_gru_while_maximum_iterations&
"sequential_1_gru_while_placeholder(
$sequential_1_gru_while_placeholder_1(
$sequential_1_gru_while_placeholder_2=
9sequential_1_gru_while_sequential_1_gru_strided_slice_1_0y
usequential_1_gru_while_tensorarrayv2read_tensorlistgetitem_sequential_1_gru_tensorarrayunstack_tensorlistfromtensor_0L
9sequential_1_gru_while_gru_cell_readvariableop_resource_0:	АS
@sequential_1_gru_while_gru_cell_matmul_readvariableop_resource_0:	АV
Bsequential_1_gru_while_gru_cell_matmul_1_readvariableop_resource_0:
АА#
sequential_1_gru_while_identity%
!sequential_1_gru_while_identity_1%
!sequential_1_gru_while_identity_2%
!sequential_1_gru_while_identity_3%
!sequential_1_gru_while_identity_4;
7sequential_1_gru_while_sequential_1_gru_strided_slice_1w
ssequential_1_gru_while_tensorarrayv2read_tensorlistgetitem_sequential_1_gru_tensorarrayunstack_tensorlistfromtensorJ
7sequential_1_gru_while_gru_cell_readvariableop_resource:	АQ
>sequential_1_gru_while_gru_cell_matmul_readvariableop_resource:	АT
@sequential_1_gru_while_gru_cell_matmul_1_readvariableop_resource:
ААИҐ5sequential_1/gru/while/gru_cell/MatMul/ReadVariableOpҐ7sequential_1/gru/while/gru_cell/MatMul_1/ReadVariableOpҐ.sequential_1/gru/while/gru_cell/ReadVariableOpЩ
Hsequential_1/gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ы
:sequential_1/gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemusequential_1_gru_while_tensorarrayv2read_tensorlistgetitem_sequential_1_gru_tensorarrayunstack_tensorlistfromtensor_0"sequential_1_gru_while_placeholderQsequential_1/gru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0©
.sequential_1/gru/while/gru_cell/ReadVariableOpReadVariableOp9sequential_1_gru_while_gru_cell_readvariableop_resource_0*
_output_shapes
:	А*
dtype0°
'sequential_1/gru/while/gru_cell/unstackUnpack6sequential_1/gru/while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numЈ
5sequential_1/gru/while/gru_cell/MatMul/ReadVariableOpReadVariableOp@sequential_1_gru_while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0е
&sequential_1/gru/while/gru_cell/MatMulMatMulAsequential_1/gru/while/TensorArrayV2Read/TensorListGetItem:item:0=sequential_1/gru/while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А…
'sequential_1/gru/while/gru_cell/BiasAddBiasAdd0sequential_1/gru/while/gru_cell/MatMul:product:00sequential_1/gru/while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аz
/sequential_1/gru/while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Ж
%sequential_1/gru/while/gru_cell/splitSplit8sequential_1/gru/while/gru_cell/split/split_dim:output:00sequential_1/gru/while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitЉ
7sequential_1/gru/while/gru_cell/MatMul_1/ReadVariableOpReadVariableOpBsequential_1_gru_while_gru_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0ћ
(sequential_1/gru/while/gru_cell/MatMul_1MatMul$sequential_1_gru_while_placeholder_2?sequential_1/gru/while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЌ
)sequential_1/gru/while/gru_cell/BiasAdd_1BiasAdd2sequential_1/gru/while/gru_cell/MatMul_1:product:00sequential_1/gru/while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аz
%sequential_1/gru/while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"А   А   €€€€|
1sequential_1/gru/while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€…
'sequential_1/gru/while/gru_cell/split_1SplitV2sequential_1/gru/while/gru_cell/BiasAdd_1:output:0.sequential_1/gru/while/gru_cell/Const:output:0:sequential_1/gru/while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitЅ
#sequential_1/gru/while/gru_cell/addAddV2.sequential_1/gru/while/gru_cell/split:output:00sequential_1/gru/while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АО
'sequential_1/gru/while/gru_cell/SigmoidSigmoid'sequential_1/gru/while/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А√
%sequential_1/gru/while/gru_cell/add_1AddV2.sequential_1/gru/while/gru_cell/split:output:10sequential_1/gru/while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:€€€€€€€€€АТ
)sequential_1/gru/while/gru_cell/Sigmoid_1Sigmoid)sequential_1/gru/while/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЊ
#sequential_1/gru/while/gru_cell/mulMul-sequential_1/gru/while/gru_cell/Sigmoid_1:y:00sequential_1/gru/while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:€€€€€€€€€АЇ
%sequential_1/gru/while/gru_cell/add_2AddV2.sequential_1/gru/while/gru_cell/split:output:2'sequential_1/gru/while/gru_cell/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€АК
$sequential_1/gru/while/gru_cell/ReluRelu)sequential_1/gru/while/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
%sequential_1/gru/while/gru_cell/mul_1Mul+sequential_1/gru/while/gru_cell/Sigmoid:y:0$sequential_1_gru_while_placeholder_2*
T0*(
_output_shapes
:€€€€€€€€€Аj
%sequential_1/gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ї
#sequential_1/gru/while/gru_cell/subSub.sequential_1/gru/while/gru_cell/sub/x:output:0+sequential_1/gru/while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€АЉ
%sequential_1/gru/while/gru_cell/mul_2Mul'sequential_1/gru/while/gru_cell/sub:z:02sequential_1/gru/while/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АЈ
%sequential_1/gru/while/gru_cell/add_3AddV2)sequential_1/gru/while/gru_cell/mul_1:z:0)sequential_1/gru/while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
;sequential_1/gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$sequential_1_gru_while_placeholder_1"sequential_1_gru_while_placeholder)sequential_1/gru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:йи“^
sequential_1/gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :П
sequential_1/gru/while/addAddV2"sequential_1_gru_while_placeholder%sequential_1/gru/while/add/y:output:0*
T0*
_output_shapes
: `
sequential_1/gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ђ
sequential_1/gru/while/add_1AddV2:sequential_1_gru_while_sequential_1_gru_while_loop_counter'sequential_1/gru/while/add_1/y:output:0*
T0*
_output_shapes
: М
sequential_1/gru/while/IdentityIdentity sequential_1/gru/while/add_1:z:0^sequential_1/gru/while/NoOp*
T0*
_output_shapes
: Ѓ
!sequential_1/gru/while/Identity_1Identity@sequential_1_gru_while_sequential_1_gru_while_maximum_iterations^sequential_1/gru/while/NoOp*
T0*
_output_shapes
: М
!sequential_1/gru/while/Identity_2Identitysequential_1/gru/while/add:z:0^sequential_1/gru/while/NoOp*
T0*
_output_shapes
: є
!sequential_1/gru/while/Identity_3IdentityKsequential_1/gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_1/gru/while/NoOp*
T0*
_output_shapes
: ©
!sequential_1/gru/while/Identity_4Identity)sequential_1/gru/while/gru_cell/add_3:z:0^sequential_1/gru/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€АА
sequential_1/gru/while/NoOpNoOp6^sequential_1/gru/while/gru_cell/MatMul/ReadVariableOp8^sequential_1/gru/while/gru_cell/MatMul_1/ReadVariableOp/^sequential_1/gru/while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Ж
@sequential_1_gru_while_gru_cell_matmul_1_readvariableop_resourceBsequential_1_gru_while_gru_cell_matmul_1_readvariableop_resource_0"В
>sequential_1_gru_while_gru_cell_matmul_readvariableop_resource@sequential_1_gru_while_gru_cell_matmul_readvariableop_resource_0"t
7sequential_1_gru_while_gru_cell_readvariableop_resource9sequential_1_gru_while_gru_cell_readvariableop_resource_0"K
sequential_1_gru_while_identity(sequential_1/gru/while/Identity:output:0"O
!sequential_1_gru_while_identity_1*sequential_1/gru/while/Identity_1:output:0"O
!sequential_1_gru_while_identity_2*sequential_1/gru/while/Identity_2:output:0"O
!sequential_1_gru_while_identity_3*sequential_1/gru/while/Identity_3:output:0"O
!sequential_1_gru_while_identity_4*sequential_1/gru/while/Identity_4:output:0"t
7sequential_1_gru_while_sequential_1_gru_strided_slice_19sequential_1_gru_while_sequential_1_gru_strided_slice_1_0"м
ssequential_1_gru_while_tensorarrayv2read_tensorlistgetitem_sequential_1_gru_tensorarrayunstack_tensorlistfromtensorusequential_1_gru_while_tensorarrayv2read_tensorlistgetitem_sequential_1_gru_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :€€€€€€€€€А: : : : : 2n
5sequential_1/gru/while/gru_cell/MatMul/ReadVariableOp5sequential_1/gru/while/gru_cell/MatMul/ReadVariableOp2r
7sequential_1/gru/while/gru_cell/MatMul_1/ReadVariableOp7sequential_1/gru/while/gru_cell/MatMul_1/ReadVariableOp2`
.sequential_1/gru/while/gru_cell/ReadVariableOp.sequential_1/gru/while/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
тD
Ш
__inference__traced_save_277994
file_prefix-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop2
.savev2_gru_gru_cell_kernel_read_readvariableop<
8savev2_gru_gru_cell_recurrent_kernel_read_readvariableop0
,savev2_gru_gru_cell_bias_read_readvariableop6
2savev2_gru_1_gru_cell_1_kernel_read_readvariableop@
<savev2_gru_1_gru_cell_1_recurrent_kernel_read_readvariableop4
0savev2_gru_1_gru_cell_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop9
5savev2_adam_gru_gru_cell_kernel_m_read_readvariableopC
?savev2_adam_gru_gru_cell_recurrent_kernel_m_read_readvariableop7
3savev2_adam_gru_gru_cell_bias_m_read_readvariableop=
9savev2_adam_gru_1_gru_cell_1_kernel_m_read_readvariableopG
Csavev2_adam_gru_1_gru_cell_1_recurrent_kernel_m_read_readvariableop;
7savev2_adam_gru_1_gru_cell_1_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop9
5savev2_adam_gru_gru_cell_kernel_v_read_readvariableopC
?savev2_adam_gru_gru_cell_recurrent_kernel_v_read_readvariableop7
3savev2_adam_gru_gru_cell_bias_v_read_readvariableop=
9savev2_adam_gru_1_gru_cell_1_kernel_v_read_readvariableopG
Csavev2_adam_gru_1_gru_cell_1_recurrent_kernel_v_read_readvariableop;
7savev2_adam_gru_1_gru_cell_1_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: µ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*ё
value‘B— B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH≠
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B €
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop.savev2_gru_gru_cell_kernel_read_readvariableop8savev2_gru_gru_cell_recurrent_kernel_read_readvariableop,savev2_gru_gru_cell_bias_read_readvariableop2savev2_gru_1_gru_cell_1_kernel_read_readvariableop<savev2_gru_1_gru_cell_1_recurrent_kernel_read_readvariableop0savev2_gru_1_gru_cell_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop5savev2_adam_gru_gru_cell_kernel_m_read_readvariableop?savev2_adam_gru_gru_cell_recurrent_kernel_m_read_readvariableop3savev2_adam_gru_gru_cell_bias_m_read_readvariableop9savev2_adam_gru_1_gru_cell_1_kernel_m_read_readvariableopCsavev2_adam_gru_1_gru_cell_1_recurrent_kernel_m_read_readvariableop7savev2_adam_gru_1_gru_cell_1_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop5savev2_adam_gru_gru_cell_kernel_v_read_readvariableop?savev2_adam_gru_gru_cell_recurrent_kernel_v_read_readvariableop3savev2_adam_gru_gru_cell_bias_v_read_readvariableop9savev2_adam_gru_1_gru_cell_1_kernel_v_read_readvariableopCsavev2_adam_gru_1_gru_cell_1_recurrent_kernel_v_read_readvariableop7savev2_adam_gru_1_gru_cell_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *.
dtypes$
"2 	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*£
_input_shapesС
О: :@::	А:
АА:	А:
Ај:	@ј:	ј: : : : : : : :@::	А:
АА:	А:
Ај:	@ј:	ј:@::	А:
АА:	А:
Ај:	@ј:	ј: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@: 

_output_shapes
::%!

_output_shapes
:	А:&"
 
_output_shapes
:
АА:%!

_output_shapes
:	А:&"
 
_output_shapes
:
Ај:%!

_output_shapes
:	@ј:%!

_output_shapes
:	ј:	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:@: 

_output_shapes
::%!

_output_shapes
:	А:&"
 
_output_shapes
:
АА:%!

_output_shapes
:	А:&"
 
_output_shapes
:
Ај:%!

_output_shapes
:	@ј:%!

_output_shapes
:	ј:$ 

_output_shapes

:@: 

_output_shapes
::%!

_output_shapes
:	А:&"
 
_output_shapes
:
АА:%!

_output_shapes
:	А:&"
 
_output_shapes
:
Ај:%!

_output_shapes
:	@ј:%!

_output_shapes
:	ј: 

_output_shapes
: 
№
У
$sequential_1_gru_1_while_cond_273861B
>sequential_1_gru_1_while_sequential_1_gru_1_while_loop_counterH
Dsequential_1_gru_1_while_sequential_1_gru_1_while_maximum_iterations(
$sequential_1_gru_1_while_placeholder*
&sequential_1_gru_1_while_placeholder_1*
&sequential_1_gru_1_while_placeholder_2D
@sequential_1_gru_1_while_less_sequential_1_gru_1_strided_slice_1Z
Vsequential_1_gru_1_while_sequential_1_gru_1_while_cond_273861___redundant_placeholder0Z
Vsequential_1_gru_1_while_sequential_1_gru_1_while_cond_273861___redundant_placeholder1Z
Vsequential_1_gru_1_while_sequential_1_gru_1_while_cond_273861___redundant_placeholder2Z
Vsequential_1_gru_1_while_sequential_1_gru_1_while_cond_273861___redundant_placeholder3%
!sequential_1_gru_1_while_identity
Ѓ
sequential_1/gru_1/while/LessLess$sequential_1_gru_1_while_placeholder@sequential_1_gru_1_while_less_sequential_1_gru_1_strided_slice_1*
T0*
_output_shapes
: q
!sequential_1/gru_1/while/IdentityIdentity!sequential_1/gru_1/while/Less:z:0*
T0
*
_output_shapes
: "O
!sequential_1_gru_1_while_identity*sequential_1/gru_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :€€€€€€€€€@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
ю
ґ
$__inference_gru_layer_call_fn_276306

inputs
unknown:	А
	unknown_0:	А
	unknown_1:
АА
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€
А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_274798t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:€€€€€€€€€
А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
В!
∞
while_body_274565
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_gru_cell_1_274587_0:	ј-
while_gru_cell_1_274589_0:
Ај,
while_gru_cell_1_274591_0:	@ј
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_gru_cell_1_274587:	ј+
while_gru_cell_1_274589:
Ај*
while_gru_cell_1_274591:	@јИҐ(while/gru_cell_1/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype0€
(while/gru_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_1_274587_0while_gru_cell_1_274589_0while_gru_cell_1_274591_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_gru_cell_1_layer_call_and_return_conditional_losses_274512r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : В
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:01while/gru_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: О
while/Identity_4Identity1while/gru_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€@w

while/NoOpNoOp)^while/gru_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "4
while_gru_cell_1_274587while_gru_cell_1_274587_0"4
while_gru_cell_1_274589while_gru_cell_1_274589_0"4
while_gru_cell_1_274591while_gru_cell_1_274591_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€@: : : : : 2T
(while/gru_cell_1/StatefulPartitionedCall(while/gru_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
№
™
while_cond_274708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_274708___redundant_placeholder04
0while_while_cond_274708___redundant_placeholder14
0while_while_cond_274708___redundant_placeholder24
0while_while_cond_274708___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
І

d
E__inference_dropout_2_layer_call_and_return_conditional_losses_276956

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:€€€€€€€€€
АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Э
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:€€€€€€€€€
А*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>Ђ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:€€€€€€€€€
Аt
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:€€€€€€€€€
Аn
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:€€€€€€€€€
А^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:€€€€€€€€€
А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€
А:T P
,
_output_shapes
:€€€€€€€€€
А
 
_user_specified_nameinputs
÷U
ї
$sequential_1_gru_1_while_body_273862B
>sequential_1_gru_1_while_sequential_1_gru_1_while_loop_counterH
Dsequential_1_gru_1_while_sequential_1_gru_1_while_maximum_iterations(
$sequential_1_gru_1_while_placeholder*
&sequential_1_gru_1_while_placeholder_1*
&sequential_1_gru_1_while_placeholder_2A
=sequential_1_gru_1_while_sequential_1_gru_1_strided_slice_1_0}
ysequential_1_gru_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_gru_1_tensorarrayunstack_tensorlistfromtensor_0P
=sequential_1_gru_1_while_gru_cell_1_readvariableop_resource_0:	јX
Dsequential_1_gru_1_while_gru_cell_1_matmul_readvariableop_resource_0:
АјY
Fsequential_1_gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0:	@ј%
!sequential_1_gru_1_while_identity'
#sequential_1_gru_1_while_identity_1'
#sequential_1_gru_1_while_identity_2'
#sequential_1_gru_1_while_identity_3'
#sequential_1_gru_1_while_identity_4?
;sequential_1_gru_1_while_sequential_1_gru_1_strided_slice_1{
wsequential_1_gru_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_gru_1_tensorarrayunstack_tensorlistfromtensorN
;sequential_1_gru_1_while_gru_cell_1_readvariableop_resource:	јV
Bsequential_1_gru_1_while_gru_cell_1_matmul_readvariableop_resource:
АјW
Dsequential_1_gru_1_while_gru_cell_1_matmul_1_readvariableop_resource:	@јИҐ9sequential_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOpҐ;sequential_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOpҐ2sequential_1/gru_1/while/gru_cell_1/ReadVariableOpЫ
Jsequential_1/gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   Ж
<sequential_1/gru_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemysequential_1_gru_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_gru_1_tensorarrayunstack_tensorlistfromtensor_0$sequential_1_gru_1_while_placeholderSsequential_1/gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype0±
2sequential_1/gru_1/while/gru_cell_1/ReadVariableOpReadVariableOp=sequential_1_gru_1_while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	ј*
dtype0©
+sequential_1/gru_1/while/gru_cell_1/unstackUnpack:sequential_1/gru_1/while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:ј:ј*	
numј
9sequential_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOpReadVariableOpDsequential_1_gru_1_while_gru_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
Ај*
dtype0п
*sequential_1/gru_1/while/gru_cell_1/MatMulMatMulCsequential_1/gru_1/while/TensorArrayV2Read/TensorListGetItem:item:0Asequential_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ј’
+sequential_1/gru_1/while/gru_cell_1/BiasAddBiasAdd4sequential_1/gru_1/while/gru_cell_1/MatMul:product:04sequential_1/gru_1/while/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј~
3sequential_1/gru_1/while/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€П
)sequential_1/gru_1/while/gru_cell_1/splitSplit<sequential_1/gru_1/while/gru_cell_1/split/split_dim:output:04sequential_1/gru_1/while/gru_cell_1/BiasAdd:output:0*
T0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split√
;sequential_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOpFsequential_1_gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	@ј*
dtype0÷
,sequential_1/gru_1/while/gru_cell_1/MatMul_1MatMul&sequential_1_gru_1_while_placeholder_2Csequential_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јў
-sequential_1/gru_1/while/gru_cell_1/BiasAdd_1BiasAdd6sequential_1/gru_1/while/gru_cell_1/MatMul_1:product:04sequential_1/gru_1/while/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€ј~
)sequential_1/gru_1/while/gru_cell_1/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   €€€€А
5sequential_1/gru_1/while/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€÷
+sequential_1/gru_1/while/gru_cell_1/split_1SplitV6sequential_1/gru_1/while/gru_cell_1/BiasAdd_1:output:02sequential_1/gru_1/while/gru_cell_1/Const:output:0>sequential_1/gru_1/while/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitћ
'sequential_1/gru_1/while/gru_cell_1/addAddV22sequential_1/gru_1/while/gru_cell_1/split:output:04sequential_1/gru_1/while/gru_cell_1/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Х
+sequential_1/gru_1/while/gru_cell_1/SigmoidSigmoid+sequential_1/gru_1/while/gru_cell_1/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@ќ
)sequential_1/gru_1/while/gru_cell_1/add_1AddV22sequential_1/gru_1/while/gru_cell_1/split:output:14sequential_1/gru_1/while/gru_cell_1/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€@Щ
-sequential_1/gru_1/while/gru_cell_1/Sigmoid_1Sigmoid-sequential_1/gru_1/while/gru_cell_1/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@…
'sequential_1/gru_1/while/gru_cell_1/mulMul1sequential_1/gru_1/while/gru_cell_1/Sigmoid_1:y:04sequential_1/gru_1/while/gru_cell_1/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€@≈
)sequential_1/gru_1/while/gru_cell_1/add_2AddV22sequential_1/gru_1/while/gru_cell_1/split:output:2+sequential_1/gru_1/while/gru_cell_1/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@С
(sequential_1/gru_1/while/gru_cell_1/ReluRelu-sequential_1/gru_1/while/gru_cell_1/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@ї
)sequential_1/gru_1/while/gru_cell_1/mul_1Mul/sequential_1/gru_1/while/gru_cell_1/Sigmoid:y:0&sequential_1_gru_1_while_placeholder_2*
T0*'
_output_shapes
:€€€€€€€€€@n
)sequential_1/gru_1/while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?≈
'sequential_1/gru_1/while/gru_cell_1/subSub2sequential_1/gru_1/while/gru_cell_1/sub/x:output:0/sequential_1/gru_1/while/gru_cell_1/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@«
)sequential_1/gru_1/while/gru_cell_1/mul_2Mul+sequential_1/gru_1/while/gru_cell_1/sub:z:06sequential_1/gru_1/while/gru_cell_1/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@¬
)sequential_1/gru_1/while/gru_cell_1/add_3AddV2-sequential_1/gru_1/while/gru_cell_1/mul_1:z:0-sequential_1/gru_1/while/gru_cell_1/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Е
Csequential_1/gru_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Ј
=sequential_1/gru_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem&sequential_1_gru_1_while_placeholder_1Lsequential_1/gru_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0-sequential_1/gru_1/while/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype0:йи“`
sequential_1/gru_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Х
sequential_1/gru_1/while/addAddV2$sequential_1_gru_1_while_placeholder'sequential_1/gru_1/while/add/y:output:0*
T0*
_output_shapes
: b
 sequential_1/gru_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :≥
sequential_1/gru_1/while/add_1AddV2>sequential_1_gru_1_while_sequential_1_gru_1_while_loop_counter)sequential_1/gru_1/while/add_1/y:output:0*
T0*
_output_shapes
: Т
!sequential_1/gru_1/while/IdentityIdentity"sequential_1/gru_1/while/add_1:z:0^sequential_1/gru_1/while/NoOp*
T0*
_output_shapes
: ґ
#sequential_1/gru_1/while/Identity_1IdentityDsequential_1_gru_1_while_sequential_1_gru_1_while_maximum_iterations^sequential_1/gru_1/while/NoOp*
T0*
_output_shapes
: Т
#sequential_1/gru_1/while/Identity_2Identity sequential_1/gru_1/while/add:z:0^sequential_1/gru_1/while/NoOp*
T0*
_output_shapes
: њ
#sequential_1/gru_1/while/Identity_3IdentityMsequential_1/gru_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_1/gru_1/while/NoOp*
T0*
_output_shapes
: ∞
#sequential_1/gru_1/while/Identity_4Identity-sequential_1/gru_1/while/gru_cell_1/add_3:z:0^sequential_1/gru_1/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€@О
sequential_1/gru_1/while/NoOpNoOp:^sequential_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp<^sequential_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp3^sequential_1/gru_1/while/gru_cell_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "О
Dsequential_1_gru_1_while_gru_cell_1_matmul_1_readvariableop_resourceFsequential_1_gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0"К
Bsequential_1_gru_1_while_gru_cell_1_matmul_readvariableop_resourceDsequential_1_gru_1_while_gru_cell_1_matmul_readvariableop_resource_0"|
;sequential_1_gru_1_while_gru_cell_1_readvariableop_resource=sequential_1_gru_1_while_gru_cell_1_readvariableop_resource_0"O
!sequential_1_gru_1_while_identity*sequential_1/gru_1/while/Identity:output:0"S
#sequential_1_gru_1_while_identity_1,sequential_1/gru_1/while/Identity_1:output:0"S
#sequential_1_gru_1_while_identity_2,sequential_1/gru_1/while/Identity_2:output:0"S
#sequential_1_gru_1_while_identity_3,sequential_1/gru_1/while/Identity_3:output:0"S
#sequential_1_gru_1_while_identity_4,sequential_1/gru_1/while/Identity_4:output:0"|
;sequential_1_gru_1_while_sequential_1_gru_1_strided_slice_1=sequential_1_gru_1_while_sequential_1_gru_1_strided_slice_1_0"ф
wsequential_1_gru_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_gru_1_tensorarrayunstack_tensorlistfromtensorysequential_1_gru_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_gru_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€@: : : : : 2v
9sequential_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp9sequential_1/gru_1/while/gru_cell_1/MatMul/ReadVariableOp2z
;sequential_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp;sequential_1/gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp2h
2sequential_1/gru_1/while/gru_cell_1/ReadVariableOp2sequential_1/gru_1/while/gru_cell_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
“M
В
A__inference_gru_1_layer_call_and_return_conditional_losses_275219

inputs5
"gru_cell_1_readvariableop_resource:	ј=
)gru_cell_1_matmul_readvariableop_resource:
Ај>
+gru_cell_1_matmul_1_readvariableop_resource:	@ј
identityИҐ gru_cell_1/MatMul/ReadVariableOpҐ"gru_cell_1/MatMul_1/ReadVariableOpҐgru_cell_1/ReadVariableOpҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:
€€€€€€€€€АD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask}
gru_cell_1/ReadVariableOpReadVariableOp"gru_cell_1_readvariableop_resource*
_output_shapes
:	ј*
dtype0w
gru_cell_1/unstackUnpack!gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:ј:ј*	
numМ
 gru_cell_1/MatMul/ReadVariableOpReadVariableOp)gru_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
Ај*
dtype0Т
gru_cell_1/MatMulMatMulstrided_slice_2:output:0(gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јК
gru_cell_1/BiasAddBiasAddgru_cell_1/MatMul:product:0gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€јe
gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ƒ
gru_cell_1/splitSplit#gru_cell_1/split/split_dim:output:0gru_cell_1/BiasAdd:output:0*
T0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitП
"gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	@ј*
dtype0М
gru_cell_1/MatMul_1MatMulzeros:output:0*gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јО
gru_cell_1/BiasAdd_1BiasAddgru_cell_1/MatMul_1:product:0gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€јe
gru_cell_1/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   €€€€g
gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€т
gru_cell_1/split_1SplitVgru_cell_1/BiasAdd_1:output:0gru_cell_1/Const:output:0%gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitБ
gru_cell_1/addAddV2gru_cell_1/split:output:0gru_cell_1/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
gru_cell_1/SigmoidSigmoidgru_cell_1/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Г
gru_cell_1/add_1AddV2gru_cell_1/split:output:1gru_cell_1/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€@g
gru_cell_1/Sigmoid_1Sigmoidgru_cell_1/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@~
gru_cell_1/mulMulgru_cell_1/Sigmoid_1:y:0gru_cell_1/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€@z
gru_cell_1/add_2AddV2gru_cell_1/split:output:2gru_cell_1/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@_
gru_cell_1/ReluRelugru_cell_1/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@q
gru_cell_1/mul_1Mulgru_cell_1/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:€€€€€€€€€@U
gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?z
gru_cell_1/subSubgru_cell_1/sub/x:output:0gru_cell_1/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@|
gru_cell_1/mul_2Mulgru_cell_1/sub:z:0gru_cell_1/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@w
gru_cell_1/add_3AddV2gru_cell_1/mul_1:z:0gru_cell_1/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ї
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_1_readvariableop_resource)gru_cell_1_matmul_readvariableop_resource+gru_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_275129*
condR
while_cond_275128*8
output_shapes'
%: : : : :€€€€€€€€€@: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@≤
NoOpNoOp!^gru_cell_1/MatMul/ReadVariableOp#^gru_cell_1/MatMul_1/ReadVariableOp^gru_cell_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€
А: : : 2D
 gru_cell_1/MatMul/ReadVariableOp gru_cell_1/MatMul/ReadVariableOp2H
"gru_cell_1/MatMul_1/ReadVariableOp"gru_cell_1/MatMul_1/ReadVariableOp26
gru_cell_1/ReadVariableOpgru_cell_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€
А
 
_user_specified_nameinputs
£;
п
while_body_275328
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	АB
/while_gru_cell_matmul_readvariableop_resource_0:	АE
1while_gru_cell_matmul_1_readvariableop_resource_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	А@
-while_gru_cell_matmul_readvariableop_resource:	АC
/while_gru_cell_matmul_1_readvariableop_resource:
ААИҐ$while/gru_cell/MatMul/ReadVariableOpҐ&while/gru_cell/MatMul_1/ReadVariableOpҐwhile/gru_cell/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0З
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	А*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numХ
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0≤
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЦ
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аi
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€”
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitЪ
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Щ
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЪ
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аi
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"А   А   €€€€k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Е
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitО
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аl
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€АР
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аp
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЛ
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:€€€€€€€€€АЗ
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аh
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:€€€€€€€€€АY
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?З
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АД
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€АЉ

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :€€€€€€€€€А: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
÷=
Б
while_body_277375
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_1_readvariableop_resource_0:	јE
1while_gru_cell_1_matmul_readvariableop_resource_0:
АјF
3while_gru_cell_1_matmul_1_readvariableop_resource_0:	@ј
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_1_readvariableop_resource:	јC
/while_gru_cell_1_matmul_readvariableop_resource:
АјD
1while_gru_cell_1_matmul_1_readvariableop_resource:	@јИҐ&while/gru_cell_1/MatMul/ReadVariableOpҐ(while/gru_cell_1/MatMul_1/ReadVariableOpҐwhile/gru_cell_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype0Л
while/gru_cell_1/ReadVariableOpReadVariableOp*while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	ј*
dtype0Г
while/gru_cell_1/unstackUnpack'while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:ј:ј*	
numЪ
&while/gru_cell_1/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
Ај*
dtype0ґ
while/gru_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јЬ
while/gru_cell_1/BiasAddBiasAdd!while/gru_cell_1/MatMul:product:0!while/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€јk
 while/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€÷
while/gru_cell_1/splitSplit)while/gru_cell_1/split/split_dim:output:0!while/gru_cell_1/BiasAdd:output:0*
T0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitЭ
(while/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	@ј*
dtype0Э
while/gru_cell_1/MatMul_1MatMulwhile_placeholder_20while/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ј†
while/gru_cell_1/BiasAdd_1BiasAdd#while/gru_cell_1/MatMul_1:product:0!while/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€јk
while/gru_cell_1/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   €€€€m
"while/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€К
while/gru_cell_1/split_1SplitV#while/gru_cell_1/BiasAdd_1:output:0while/gru_cell_1/Const:output:0+while/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitУ
while/gru_cell_1/addAddV2while/gru_cell_1/split:output:0!while/gru_cell_1/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@o
while/gru_cell_1/SigmoidSigmoidwhile/gru_cell_1/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Х
while/gru_cell_1/add_1AddV2while/gru_cell_1/split:output:1!while/gru_cell_1/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€@s
while/gru_cell_1/Sigmoid_1Sigmoidwhile/gru_cell_1/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Р
while/gru_cell_1/mulMulwhile/gru_cell_1/Sigmoid_1:y:0!while/gru_cell_1/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€@М
while/gru_cell_1/add_2AddV2while/gru_cell_1/split:output:2while/gru_cell_1/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@k
while/gru_cell_1/ReluReluwhile/gru_cell_1/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@В
while/gru_cell_1/mul_1Mulwhile/gru_cell_1/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:€€€€€€€€€@[
while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?М
while/gru_cell_1/subSubwhile/gru_cell_1/sub/x:output:0while/gru_cell_1/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@О
while/gru_cell_1/mul_2Mulwhile/gru_cell_1/sub:z:0#while/gru_cell_1/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@Й
while/gru_cell_1/add_3AddV2while/gru_cell_1/mul_1:z:0while/gru_cell_1/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : л
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/gru_cell_1/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€@¬

while/NoOpNoOp'^while/gru_cell_1/MatMul/ReadVariableOp)^while/gru_cell_1/MatMul_1/ReadVariableOp ^while/gru_cell_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_1_matmul_1_readvariableop_resource3while_gru_cell_1_matmul_1_readvariableop_resource_0"d
/while_gru_cell_1_matmul_readvariableop_resource1while_gru_cell_1_matmul_readvariableop_resource_0"V
(while_gru_cell_1_readvariableop_resource*while_gru_cell_1_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€@: : : : : 2P
&while/gru_cell_1/MatMul/ReadVariableOp&while/gru_cell_1/MatMul/ReadVariableOp2T
(while/gru_cell_1/MatMul_1/ReadVariableOp(while/gru_cell_1/MatMul_1/ReadVariableOp2B
while/gru_cell_1/ReadVariableOpwhile/gru_cell_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
£;
п
while_body_276381
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	АB
/while_gru_cell_matmul_readvariableop_resource_0:	АE
1while_gru_cell_matmul_1_readvariableop_resource_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	А@
-while_gru_cell_matmul_readvariableop_resource:	АC
/while_gru_cell_matmul_1_readvariableop_resource:
ААИҐ$while/gru_cell/MatMul/ReadVariableOpҐ&while/gru_cell/MatMul_1/ReadVariableOpҐwhile/gru_cell/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0З
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	А*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numХ
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0≤
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЦ
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аi
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€”
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitЪ
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Щ
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЪ
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аi
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"А   А   €€€€k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Е
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitО
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аl
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€АР
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аp
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЛ
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:€€€€€€€€€АЗ
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аh
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:€€€€€€€€€АY
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?З
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АД
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€АЉ

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :€€€€€€€€€А: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
№
™
while_cond_276533
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_276533___redundant_placeholder04
0while_while_cond_276533___redundant_placeholder14
0while_while_cond_276533___redundant_placeholder24
0while_while_cond_276533___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
∆	
ф
C__inference_dense_1_layer_call_and_return_conditional_losses_274992

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
£;
п
while_body_276840
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	АB
/while_gru_cell_matmul_readvariableop_resource_0:	АE
1while_gru_cell_matmul_1_readvariableop_resource_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	А@
-while_gru_cell_matmul_readvariableop_resource:	АC
/while_gru_cell_matmul_1_readvariableop_resource:
ААИҐ$while/gru_cell/MatMul/ReadVariableOpҐ&while/gru_cell/MatMul_1/ReadVariableOpҐwhile/gru_cell/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0З
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	А*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numХ
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0≤
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЦ
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аi
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€”
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitЪ
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Щ
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЪ
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аi
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"А   А   €€€€k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Е
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitО
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аl
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€АР
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аp
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЛ
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:€€€€€€€€€АЗ
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аh
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:€€€€€€€€€АY
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?З
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АД
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€АЉ

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :€€€€€€€€€А: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
Џ
™
while_cond_274380
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_274380___redundant_placeholder04
0while_while_cond_274380___redundant_placeholder14
0while_while_cond_274380___redundant_placeholder24
0while_while_cond_274380___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :€€€€€€€€€@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
в	
–
-__inference_sequential_1_layer_call_fn_275614

inputs
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	ј
	unknown_3:
Ај
	unknown_4:	@ј
	unknown_5:@
	unknown_6:
identityИҐStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_274999o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€
: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
ъ
Є
&__inference_gru_1_layer_call_fn_277000

inputs
unknown:	ј
	unknown_0:
Ај
	unknown_1:	@ј
identityИҐStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_275219o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€
А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:€€€€€€€€€
А
 
_user_specified_nameinputs
І

d
E__inference_dropout_2_layer_call_and_return_conditional_losses_275248

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:€€€€€€€€€
АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Э
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:€€€€€€€€€
А*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>Ђ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:€€€€€€€€€
Аt
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:€€€€€€€€€
Аn
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:€€€€€€€€€
А^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:€€€€€€€€€
А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€
А:T P
,
_output_shapes
:€€€€€€€€€
А
 
_user_specified_nameinputs
≥
F
*__inference_dropout_2_layer_call_fn_276934

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€
А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_274811e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:€€€€€€€€€
А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€
А:T P
,
_output_shapes
:€€€€€€€€€
А
 
_user_specified_nameinputs
¶
ў
D__inference_gru_cell_layer_call_and_return_conditional_losses_277772

inputs
states_0*
readvariableop_resource:	А1
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
АА
identity

identity_1ИҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpҐReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	А*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€АZ
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€АZ
ConstConst*
_output_shapes
:*
dtype0*!
valueB"А   А   €€€€\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€…
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:€€€€€€€€€АR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:€€€€€€€€€АZ
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€АJ
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€АV
mul_1MulSigmoid:y:0states_0*
T0*(
_output_shapes
:€€€€€€€€€АJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€А\
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АW
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АЙ
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€:€€€€€€€€€А: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/0
Ю
„
D__inference_gru_cell_layer_call_and_return_conditional_losses_274172

inputs

states*
readvariableop_resource:	А1
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
АА
identity

identity_1ИҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpҐReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	А*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€АZ
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€АZ
ConstConst*
_output_shapes
:*
dtype0*!
valueB"А   А   €€€€\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€…
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:€€€€€€€€€АR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:€€€€€€€€€АZ
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€АJ
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€АT
mul_1MulSigmoid:y:0states*
T0*(
_output_shapes
:€€€€€€€€€АJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€А\
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АW
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АЙ
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€:€€€€€€€€€А: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_namestates
¶@
з
gru_while_body_275699$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2#
gru_while_gru_strided_slice_1_0_
[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0?
,gru_while_gru_cell_readvariableop_resource_0:	АF
3gru_while_gru_cell_matmul_readvariableop_resource_0:	АI
5gru_while_gru_cell_matmul_1_readvariableop_resource_0:
АА
gru_while_identity
gru_while_identity_1
gru_while_identity_2
gru_while_identity_3
gru_while_identity_4!
gru_while_gru_strided_slice_1]
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor=
*gru_while_gru_cell_readvariableop_resource:	АD
1gru_while_gru_cell_matmul_readvariableop_resource:	АG
3gru_while_gru_cell_matmul_1_readvariableop_resource:
ААИҐ(gru/while/gru_cell/MatMul/ReadVariableOpҐ*gru/while/gru_cell/MatMul_1/ReadVariableOpҐ!gru/while/gru_cell/ReadVariableOpМ
;gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ї
-gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0gru_while_placeholderDgru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0П
!gru/while/gru_cell/ReadVariableOpReadVariableOp,gru_while_gru_cell_readvariableop_resource_0*
_output_shapes
:	А*
dtype0З
gru/while/gru_cell/unstackUnpack)gru/while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numЭ
(gru/while/gru_cell/MatMul/ReadVariableOpReadVariableOp3gru_while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0Њ
gru/while/gru_cell/MatMulMatMul4gru/while/TensorArrayV2Read/TensorListGetItem:item:00gru/while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АҐ
gru/while/gru_cell/BiasAddBiasAdd#gru/while/gru_cell/MatMul:product:0#gru/while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аm
"gru/while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€я
gru/while/gru_cell/splitSplit+gru/while/gru_cell/split/split_dim:output:0#gru/while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitҐ
*gru/while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp5gru_while_gru_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0•
gru/while/gru_cell/MatMul_1MatMulgru_while_placeholder_22gru/while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А¶
gru/while/gru_cell/BiasAdd_1BiasAdd%gru/while/gru_cell/MatMul_1:product:0#gru/while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аm
gru/while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"А   А   €€€€o
$gru/while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Х
gru/while/gru_cell/split_1SplitV%gru/while/gru_cell/BiasAdd_1:output:0!gru/while/gru_cell/Const:output:0-gru/while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitЪ
gru/while/gru_cell/addAddV2!gru/while/gru_cell/split:output:0#gru/while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аt
gru/while/gru_cell/SigmoidSigmoidgru/while/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
gru/while/gru_cell/add_1AddV2!gru/while/gru_cell/split:output:1#gru/while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аx
gru/while/gru_cell/Sigmoid_1Sigmoidgru/while/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЧ
gru/while/gru_cell/mulMul gru/while/gru_cell/Sigmoid_1:y:0#gru/while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:€€€€€€€€€АУ
gru/while/gru_cell/add_2AddV2!gru/while/gru_cell/split:output:2gru/while/gru_cell/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
gru/while/gru_cell/ReluRelugru/while/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЛ
gru/while/gru_cell/mul_1Mulgru/while/gru_cell/Sigmoid:y:0gru_while_placeholder_2*
T0*(
_output_shapes
:€€€€€€€€€А]
gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?У
gru/while/gru_cell/subSub!gru/while/gru_cell/sub/x:output:0gru/while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
gru/while/gru_cell/mul_2Mulgru/while/gru_cell/sub:z:0%gru/while/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АР
gru/while/gru_cell/add_3AddV2gru/while/gru_cell/mul_1:z:0gru/while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А—
.gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_while_placeholder_1gru_while_placeholdergru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:йи“Q
gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
gru/while/addAddV2gru_while_placeholdergru/while/add/y:output:0*
T0*
_output_shapes
: S
gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
gru/while/add_1AddV2 gru_while_gru_while_loop_countergru/while/add_1/y:output:0*
T0*
_output_shapes
: e
gru/while/IdentityIdentitygru/while/add_1:z:0^gru/while/NoOp*
T0*
_output_shapes
: z
gru/while/Identity_1Identity&gru_while_gru_while_maximum_iterations^gru/while/NoOp*
T0*
_output_shapes
: e
gru/while/Identity_2Identitygru/while/add:z:0^gru/while/NoOp*
T0*
_output_shapes
: Т
gru/while/Identity_3Identity>gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru/while/NoOp*
T0*
_output_shapes
: В
gru/while/Identity_4Identitygru/while/gru_cell/add_3:z:0^gru/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аћ
gru/while/NoOpNoOp)^gru/while/gru_cell/MatMul/ReadVariableOp+^gru/while/gru_cell/MatMul_1/ReadVariableOp"^gru/while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "l
3gru_while_gru_cell_matmul_1_readvariableop_resource5gru_while_gru_cell_matmul_1_readvariableop_resource_0"h
1gru_while_gru_cell_matmul_readvariableop_resource3gru_while_gru_cell_matmul_readvariableop_resource_0"Z
*gru_while_gru_cell_readvariableop_resource,gru_while_gru_cell_readvariableop_resource_0"@
gru_while_gru_strided_slice_1gru_while_gru_strided_slice_1_0"1
gru_while_identitygru/while/Identity:output:0"5
gru_while_identity_1gru/while/Identity_1:output:0"5
gru_while_identity_2gru/while/Identity_2:output:0"5
gru_while_identity_3gru/while/Identity_3:output:0"5
gru_while_identity_4gru/while/Identity_4:output:0"Є
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :€€€€€€€€€А: : : : : 2T
(gru/while/gru_cell/MatMul/ReadVariableOp(gru/while/gru_cell/MatMul/ReadVariableOp2X
*gru/while/gru_cell/MatMul_1/ReadVariableOp*gru/while/gru_cell/MatMul_1/ReadVariableOp2F
!gru/while/gru_cell/ReadVariableOp!gru/while/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
µ

ў
)__inference_gru_cell_layer_call_fn_277680

inputs
states_0
unknown:	А
	unknown_0:	А
	unknown_1:
АА
identity

identity_1ИҐStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_gru_cell_layer_call_and_return_conditional_losses_274029p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€:€€€€€€€€€А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/0
Џ
™
while_cond_277219
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_277219___redundant_placeholder04
0while_while_cond_277219___redundant_placeholder14
0while_while_cond_277219___redundant_placeholder24
0while_while_cond_277219___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :€€€€€€€€€@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
Џ
™
while_cond_277374
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_277374___redundant_placeholder04
0while_while_cond_277374___redundant_placeholder14
0while_while_cond_277374___redundant_placeholder24
0while_while_cond_277374___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :€€€€€€€€€@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
’
…
H__inference_sequential_1_layer_call_and_return_conditional_losses_274999

inputs

gru_274799:	А

gru_274801:	А

gru_274803:
АА
gru_1_274968:	ј 
gru_1_274970:
Ај
gru_1_274972:	@ј 
dense_1_274993:@
dense_1_274995:
identityИҐdense_1/StatefulPartitionedCallҐgru/StatefulPartitionedCallҐgru_1/StatefulPartitionedCallп
gru/StatefulPartitionedCallStatefulPartitionedCallinputs
gru_274799
gru_274801
gru_274803*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€
А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_274798Ё
dropout_2/PartitionedCallPartitionedCall$gru/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€
А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_274811Р
gru_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0gru_1_274968gru_1_274970gru_1_274972*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_274967Џ
dropout_3/PartitionedCallPartitionedCall&gru_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_274980И
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_1_274993dense_1_274995*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_274992w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€¶
NoOpNoOp ^dense_1/StatefulPartitionedCall^gru/StatefulPartitionedCall^gru_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€
: : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall2>
gru_1/StatefulPartitionedCallgru_1/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
Т
Ї
&__inference_gru_1_layer_call_fn_276967
inputs_0
unknown:	ј
	unknown_0:
Ај
	unknown_1:	@ј
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_274446o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€€€€€€€€€€А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs/0
“M
В
A__inference_gru_1_layer_call_and_return_conditional_losses_277465

inputs5
"gru_cell_1_readvariableop_resource:	ј=
)gru_cell_1_matmul_readvariableop_resource:
Ај>
+gru_cell_1_matmul_1_readvariableop_resource:	@ј
identityИҐ gru_cell_1/MatMul/ReadVariableOpҐ"gru_cell_1/MatMul_1/ReadVariableOpҐgru_cell_1/ReadVariableOpҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:
€€€€€€€€€АD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask}
gru_cell_1/ReadVariableOpReadVariableOp"gru_cell_1_readvariableop_resource*
_output_shapes
:	ј*
dtype0w
gru_cell_1/unstackUnpack!gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:ј:ј*	
numМ
 gru_cell_1/MatMul/ReadVariableOpReadVariableOp)gru_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
Ај*
dtype0Т
gru_cell_1/MatMulMatMulstrided_slice_2:output:0(gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јК
gru_cell_1/BiasAddBiasAddgru_cell_1/MatMul:product:0gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€јe
gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ƒ
gru_cell_1/splitSplit#gru_cell_1/split/split_dim:output:0gru_cell_1/BiasAdd:output:0*
T0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitП
"gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	@ј*
dtype0М
gru_cell_1/MatMul_1MatMulzeros:output:0*gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јО
gru_cell_1/BiasAdd_1BiasAddgru_cell_1/MatMul_1:product:0gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€јe
gru_cell_1/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   €€€€g
gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€т
gru_cell_1/split_1SplitVgru_cell_1/BiasAdd_1:output:0gru_cell_1/Const:output:0%gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitБ
gru_cell_1/addAddV2gru_cell_1/split:output:0gru_cell_1/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
gru_cell_1/SigmoidSigmoidgru_cell_1/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Г
gru_cell_1/add_1AddV2gru_cell_1/split:output:1gru_cell_1/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€@g
gru_cell_1/Sigmoid_1Sigmoidgru_cell_1/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@~
gru_cell_1/mulMulgru_cell_1/Sigmoid_1:y:0gru_cell_1/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€@z
gru_cell_1/add_2AddV2gru_cell_1/split:output:2gru_cell_1/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@_
gru_cell_1/ReluRelugru_cell_1/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@q
gru_cell_1/mul_1Mulgru_cell_1/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:€€€€€€€€€@U
gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?z
gru_cell_1/subSubgru_cell_1/sub/x:output:0gru_cell_1/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@|
gru_cell_1/mul_2Mulgru_cell_1/sub:z:0gru_cell_1/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@w
gru_cell_1/add_3AddV2gru_cell_1/mul_1:z:0gru_cell_1/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ї
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_1_readvariableop_resource)gru_cell_1_matmul_readvariableop_resource+gru_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_277375*
condR
while_cond_277374*8
output_shapes'
%: : : : :€€€€€€€€€@: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@≤
NoOpNoOp!^gru_cell_1/MatMul/ReadVariableOp#^gru_cell_1/MatMul_1/ReadVariableOp^gru_cell_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€
А: : : 2D
 gru_cell_1/MatMul/ReadVariableOp gru_cell_1/MatMul/ReadVariableOp2H
"gru_cell_1/MatMul_1/ReadVariableOp"gru_cell_1/MatMul_1/ReadVariableOp26
gru_cell_1/ReadVariableOpgru_cell_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€
А
 
_user_specified_nameinputs
Џ
™
while_cond_277529
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_277529___redundant_placeholder04
0while_while_cond_277529___redundant_placeholder14
0while_while_cond_277529___redundant_placeholder24
0while_while_cond_277529___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :€€€€€€€€€@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
≈K
ф
?__inference_gru_layer_call_and_return_conditional_losses_276929

inputs3
 gru_cell_readvariableop_resource:	А:
'gru_cell_matmul_readvariableop_resource:	А=
)gru_cell_matmul_1_readvariableop_resource:
АА
identityИҐgru_cell/MatMul/ReadVariableOpҐ gru_cell/MatMul_1/ReadVariableOpҐgru_cell/ReadVariableOpҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_masky
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	А*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numЗ
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0О
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АД
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Ѕ
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitМ
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0И
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АИ
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аc
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"А   А   €€€€e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€н
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аd
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:€€€€€€€€€Аu
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€А\
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:€€€€€€€€€АS
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_276840*
condR
while_cond_276839*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   √
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:
€€€€€€€€€А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€
А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:€€€€€€€€€
Ађ
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
≈K
ф
?__inference_gru_layer_call_and_return_conditional_losses_276776

inputs3
 gru_cell_readvariableop_resource:	А:
'gru_cell_matmul_readvariableop_resource:	А=
)gru_cell_matmul_1_readvariableop_resource:
АА
identityИҐgru_cell/MatMul/ReadVariableOpҐ gru_cell/MatMul_1/ReadVariableOpҐgru_cell/ReadVariableOpҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_masky
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	А*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numЗ
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0О
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АД
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Ѕ
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitМ
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0И
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АИ
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аc
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"А   А   €€€€e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€н
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аd
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:€€€€€€€€€Аu
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€А\
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:€€€€€€€€€АS
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_276687*
condR
while_cond_276686*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   √
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:
€€€€€€€€€А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€
А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:€€€€€€€€€
Ађ
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
ї	
 
$__inference_signature_wrapper_275593
	gru_input
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	ј
	unknown_3:
Ај
	unknown_4:	@ј
	unknown_5:@
	unknown_6:
identityИҐStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCall	gru_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_273959o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€
: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:€€€€€€€€€

#
_user_specified_name	gru_input
£;
п
while_body_276534
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	АB
/while_gru_cell_matmul_readvariableop_resource_0:	АE
1while_gru_cell_matmul_1_readvariableop_resource_0:
АА
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	А@
-while_gru_cell_matmul_readvariableop_resource:	АC
/while_gru_cell_matmul_1_readvariableop_resource:
ААИҐ$while/gru_cell/MatMul/ReadVariableOpҐ&while/gru_cell/MatMul_1/ReadVariableOpҐwhile/gru_cell/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0З
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	А*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numХ
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0≤
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЦ
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аi
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€”
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitЪ
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Щ
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЪ
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аi
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"А   А   €€€€k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Е
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitО
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аl
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€АР
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аp
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЛ
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:€€€€€€€€€АЗ
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аh
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:€€€€€€€€€АY
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?З
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АД
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€АЉ

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :€€€€€€€€€А: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
»
ц
gru_while_cond_275698$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2&
"gru_while_less_gru_strided_slice_1<
8gru_while_gru_while_cond_275698___redundant_placeholder0<
8gru_while_gru_while_cond_275698___redundant_placeholder1<
8gru_while_gru_while_cond_275698___redundant_placeholder2<
8gru_while_gru_while_cond_275698___redundant_placeholder3
gru_while_identity
r
gru/while/LessLessgru_while_placeholder"gru_while_less_gru_strided_slice_1*
T0*
_output_shapes
: S
gru/while/IdentityIdentitygru/while/Less:z:0*
T0
*
_output_shapes
: "1
gru_while_identitygru/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
№
™
while_cond_276839
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_276839___redundant_placeholder04
0while_while_cond_276839___redundant_placeholder14
0while_while_cond_276839___redundant_placeholder24
0while_while_cond_276839___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
’ѕ
Ё
!__inference__wrapped_model_273959
	gru_inputD
1sequential_1_gru_gru_cell_readvariableop_resource:	АK
8sequential_1_gru_gru_cell_matmul_readvariableop_resource:	АN
:sequential_1_gru_gru_cell_matmul_1_readvariableop_resource:
ААH
5sequential_1_gru_1_gru_cell_1_readvariableop_resource:	јP
<sequential_1_gru_1_gru_cell_1_matmul_readvariableop_resource:
АјQ
>sequential_1_gru_1_gru_cell_1_matmul_1_readvariableop_resource:	@јE
3sequential_1_dense_1_matmul_readvariableop_resource:@B
4sequential_1_dense_1_biasadd_readvariableop_resource:
identityИҐ+sequential_1/dense_1/BiasAdd/ReadVariableOpҐ*sequential_1/dense_1/MatMul/ReadVariableOpҐ/sequential_1/gru/gru_cell/MatMul/ReadVariableOpҐ1sequential_1/gru/gru_cell/MatMul_1/ReadVariableOpҐ(sequential_1/gru/gru_cell/ReadVariableOpҐsequential_1/gru/whileҐ3sequential_1/gru_1/gru_cell_1/MatMul/ReadVariableOpҐ5sequential_1/gru_1/gru_cell_1/MatMul_1/ReadVariableOpҐ,sequential_1/gru_1/gru_cell_1/ReadVariableOpҐsequential_1/gru_1/whileO
sequential_1/gru/ShapeShape	gru_input*
T0*
_output_shapes
:n
$sequential_1/gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&sequential_1/gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&sequential_1/gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¶
sequential_1/gru/strided_sliceStridedSlicesequential_1/gru/Shape:output:0-sequential_1/gru/strided_slice/stack:output:0/sequential_1/gru/strided_slice/stack_1:output:0/sequential_1/gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
sequential_1/gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А¶
sequential_1/gru/zeros/packedPack'sequential_1/gru/strided_slice:output:0(sequential_1/gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
sequential_1/gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    †
sequential_1/gru/zerosFill&sequential_1/gru/zeros/packed:output:0%sequential_1/gru/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аt
sequential_1/gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Т
sequential_1/gru/transpose	Transpose	gru_input(sequential_1/gru/transpose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€f
sequential_1/gru/Shape_1Shapesequential_1/gru/transpose:y:0*
T0*
_output_shapes
:p
&sequential_1/gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(sequential_1/gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(sequential_1/gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∞
 sequential_1/gru/strided_slice_1StridedSlice!sequential_1/gru/Shape_1:output:0/sequential_1/gru/strided_slice_1/stack:output:01sequential_1/gru/strided_slice_1/stack_1:output:01sequential_1/gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,sequential_1/gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€з
sequential_1/gru/TensorArrayV2TensorListReserve5sequential_1/gru/TensorArrayV2/element_shape:output:0)sequential_1/gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ч
Fsequential_1/gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   У
8sequential_1/gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential_1/gru/transpose:y:0Osequential_1/gru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“p
&sequential_1/gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(sequential_1/gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(sequential_1/gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Њ
 sequential_1/gru/strided_slice_2StridedSlicesequential_1/gru/transpose:y:0/sequential_1/gru/strided_slice_2/stack:output:01sequential_1/gru/strided_slice_2/stack_1:output:01sequential_1/gru/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЫ
(sequential_1/gru/gru_cell/ReadVariableOpReadVariableOp1sequential_1_gru_gru_cell_readvariableop_resource*
_output_shapes
:	А*
dtype0Х
!sequential_1/gru/gru_cell/unstackUnpack0sequential_1/gru/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
num©
/sequential_1/gru/gru_cell/MatMul/ReadVariableOpReadVariableOp8sequential_1_gru_gru_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Ѕ
 sequential_1/gru/gru_cell/MatMulMatMul)sequential_1/gru/strided_slice_2:output:07sequential_1/gru/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЈ
!sequential_1/gru/gru_cell/BiasAddBiasAdd*sequential_1/gru/gru_cell/MatMul:product:0*sequential_1/gru/gru_cell/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аt
)sequential_1/gru/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ф
sequential_1/gru/gru_cell/splitSplit2sequential_1/gru/gru_cell/split/split_dim:output:0*sequential_1/gru/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitЃ
1sequential_1/gru/gru_cell/MatMul_1/ReadVariableOpReadVariableOp:sequential_1_gru_gru_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0ї
"sequential_1/gru/gru_cell/MatMul_1MatMulsequential_1/gru/zeros:output:09sequential_1/gru/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аї
#sequential_1/gru/gru_cell/BiasAdd_1BiasAdd,sequential_1/gru/gru_cell/MatMul_1:product:0*sequential_1/gru/gru_cell/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аt
sequential_1/gru/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"А   А   €€€€v
+sequential_1/gru/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€±
!sequential_1/gru/gru_cell/split_1SplitV,sequential_1/gru/gru_cell/BiasAdd_1:output:0(sequential_1/gru/gru_cell/Const:output:04sequential_1/gru/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitѓ
sequential_1/gru/gru_cell/addAddV2(sequential_1/gru/gru_cell/split:output:0*sequential_1/gru/gru_cell/split_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АВ
!sequential_1/gru/gru_cell/SigmoidSigmoid!sequential_1/gru/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А±
sequential_1/gru/gru_cell/add_1AddV2(sequential_1/gru/gru_cell/split:output:1*sequential_1/gru/gru_cell/split_1:output:1*
T0*(
_output_shapes
:€€€€€€€€€АЖ
#sequential_1/gru/gru_cell/Sigmoid_1Sigmoid#sequential_1/gru/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ађ
sequential_1/gru/gru_cell/mulMul'sequential_1/gru/gru_cell/Sigmoid_1:y:0*sequential_1/gru/gru_cell/split_1:output:2*
T0*(
_output_shapes
:€€€€€€€€€А®
sequential_1/gru/gru_cell/add_2AddV2(sequential_1/gru/gru_cell/split:output:2!sequential_1/gru/gru_cell/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€А~
sequential_1/gru/gru_cell/ReluRelu#sequential_1/gru/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А°
sequential_1/gru/gru_cell/mul_1Mul%sequential_1/gru/gru_cell/Sigmoid:y:0sequential_1/gru/zeros:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аd
sequential_1/gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?®
sequential_1/gru/gru_cell/subSub(sequential_1/gru/gru_cell/sub/x:output:0%sequential_1/gru/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€А™
sequential_1/gru/gru_cell/mul_2Mul!sequential_1/gru/gru_cell/sub:z:0,sequential_1/gru/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А•
sequential_1/gru/gru_cell/add_3AddV2#sequential_1/gru/gru_cell/mul_1:z:0#sequential_1/gru/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А
.sequential_1/gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   л
 sequential_1/gru/TensorArrayV2_1TensorListReserve7sequential_1/gru/TensorArrayV2_1/element_shape:output:0)sequential_1/gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“W
sequential_1/gru/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)sequential_1/gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€e
#sequential_1/gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ф
sequential_1/gru/whileWhile,sequential_1/gru/while/loop_counter:output:02sequential_1/gru/while/maximum_iterations:output:0sequential_1/gru/time:output:0)sequential_1/gru/TensorArrayV2_1:handle:0sequential_1/gru/zeros:output:0)sequential_1/gru/strided_slice_1:output:0Hsequential_1/gru/TensorArrayUnstack/TensorListFromTensor:output_handle:01sequential_1_gru_gru_cell_readvariableop_resource8sequential_1_gru_gru_cell_matmul_readvariableop_resource:sequential_1_gru_gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *.
body&R$
"sequential_1_gru_while_body_273711*.
cond&R$
"sequential_1_gru_while_cond_273710*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations Т
Asequential_1/gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   ц
3sequential_1/gru/TensorArrayV2Stack/TensorListStackTensorListStacksequential_1/gru/while:output:3Jsequential_1/gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:
€€€€€€€€€А*
element_dtype0y
&sequential_1/gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€r
(sequential_1/gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(sequential_1/gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
 sequential_1/gru/strided_slice_3StridedSlice<sequential_1/gru/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_1/gru/strided_slice_3/stack:output:01sequential_1/gru/strided_slice_3/stack_1:output:01sequential_1/gru/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maskv
!sequential_1/gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
sequential_1/gru/transpose_1	Transpose<sequential_1/gru/TensorArrayV2Stack/TensorListStack:tensor:0*sequential_1/gru/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€
Аl
sequential_1/gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Д
sequential_1/dropout_2/IdentityIdentity sequential_1/gru/transpose_1:y:0*
T0*,
_output_shapes
:€€€€€€€€€
Аp
sequential_1/gru_1/ShapeShape(sequential_1/dropout_2/Identity:output:0*
T0*
_output_shapes
:p
&sequential_1/gru_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(sequential_1/gru_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(sequential_1/gru_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∞
 sequential_1/gru_1/strided_sliceStridedSlice!sequential_1/gru_1/Shape:output:0/sequential_1/gru_1/strided_slice/stack:output:01sequential_1/gru_1/strided_slice/stack_1:output:01sequential_1/gru_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!sequential_1/gru_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@ђ
sequential_1/gru_1/zeros/packedPack)sequential_1/gru_1/strided_slice:output:0*sequential_1/gru_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:c
sequential_1/gru_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    •
sequential_1/gru_1/zerosFill(sequential_1/gru_1/zeros/packed:output:0'sequential_1/gru_1/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@v
!sequential_1/gru_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ґ
sequential_1/gru_1/transpose	Transpose(sequential_1/dropout_2/Identity:output:0*sequential_1/gru_1/transpose/perm:output:0*
T0*,
_output_shapes
:
€€€€€€€€€Аj
sequential_1/gru_1/Shape_1Shape sequential_1/gru_1/transpose:y:0*
T0*
_output_shapes
:r
(sequential_1/gru_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_1/gru_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_1/gru_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
"sequential_1/gru_1/strided_slice_1StridedSlice#sequential_1/gru_1/Shape_1:output:01sequential_1/gru_1/strided_slice_1/stack:output:03sequential_1/gru_1/strided_slice_1/stack_1:output:03sequential_1/gru_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
.sequential_1/gru_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€н
 sequential_1/gru_1/TensorArrayV2TensorListReserve7sequential_1/gru_1/TensorArrayV2/element_shape:output:0+sequential_1/gru_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Щ
Hsequential_1/gru_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   Щ
:sequential_1/gru_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor sequential_1/gru_1/transpose:y:0Qsequential_1/gru_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“r
(sequential_1/gru_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_1/gru_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_1/gru_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:…
"sequential_1/gru_1/strided_slice_2StridedSlice sequential_1/gru_1/transpose:y:01sequential_1/gru_1/strided_slice_2/stack:output:03sequential_1/gru_1/strided_slice_2/stack_1:output:03sequential_1/gru_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask£
,sequential_1/gru_1/gru_cell_1/ReadVariableOpReadVariableOp5sequential_1_gru_1_gru_cell_1_readvariableop_resource*
_output_shapes
:	ј*
dtype0Э
%sequential_1/gru_1/gru_cell_1/unstackUnpack4sequential_1/gru_1/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:ј:ј*	
num≤
3sequential_1/gru_1/gru_cell_1/MatMul/ReadVariableOpReadVariableOp<sequential_1_gru_1_gru_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
Ај*
dtype0Ћ
$sequential_1/gru_1/gru_cell_1/MatMulMatMul+sequential_1/gru_1/strided_slice_2:output:0;sequential_1/gru_1/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ј√
%sequential_1/gru_1/gru_cell_1/BiasAddBiasAdd.sequential_1/gru_1/gru_cell_1/MatMul:product:0.sequential_1/gru_1/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€јx
-sequential_1/gru_1/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€э
#sequential_1/gru_1/gru_cell_1/splitSplit6sequential_1/gru_1/gru_cell_1/split/split_dim:output:0.sequential_1/gru_1/gru_cell_1/BiasAdd:output:0*
T0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitµ
5sequential_1/gru_1/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp>sequential_1_gru_1_gru_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	@ј*
dtype0≈
&sequential_1/gru_1/gru_cell_1/MatMul_1MatMul!sequential_1/gru_1/zeros:output:0=sequential_1/gru_1/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ј«
'sequential_1/gru_1/gru_cell_1/BiasAdd_1BiasAdd0sequential_1/gru_1/gru_cell_1/MatMul_1:product:0.sequential_1/gru_1/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€јx
#sequential_1/gru_1/gru_cell_1/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   €€€€z
/sequential_1/gru_1/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Њ
%sequential_1/gru_1/gru_cell_1/split_1SplitV0sequential_1/gru_1/gru_cell_1/BiasAdd_1:output:0,sequential_1/gru_1/gru_cell_1/Const:output:08sequential_1/gru_1/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitЇ
!sequential_1/gru_1/gru_cell_1/addAddV2,sequential_1/gru_1/gru_cell_1/split:output:0.sequential_1/gru_1/gru_cell_1/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Й
%sequential_1/gru_1/gru_cell_1/SigmoidSigmoid%sequential_1/gru_1/gru_cell_1/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Љ
#sequential_1/gru_1/gru_cell_1/add_1AddV2,sequential_1/gru_1/gru_cell_1/split:output:1.sequential_1/gru_1/gru_cell_1/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€@Н
'sequential_1/gru_1/gru_cell_1/Sigmoid_1Sigmoid'sequential_1/gru_1/gru_cell_1/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Ј
!sequential_1/gru_1/gru_cell_1/mulMul+sequential_1/gru_1/gru_cell_1/Sigmoid_1:y:0.sequential_1/gru_1/gru_cell_1/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€@≥
#sequential_1/gru_1/gru_cell_1/add_2AddV2,sequential_1/gru_1/gru_cell_1/split:output:2%sequential_1/gru_1/gru_cell_1/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Е
"sequential_1/gru_1/gru_cell_1/ReluRelu'sequential_1/gru_1/gru_cell_1/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@™
#sequential_1/gru_1/gru_cell_1/mul_1Mul)sequential_1/gru_1/gru_cell_1/Sigmoid:y:0!sequential_1/gru_1/zeros:output:0*
T0*'
_output_shapes
:€€€€€€€€€@h
#sequential_1/gru_1/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?≥
!sequential_1/gru_1/gru_cell_1/subSub,sequential_1/gru_1/gru_cell_1/sub/x:output:0)sequential_1/gru_1/gru_cell_1/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@µ
#sequential_1/gru_1/gru_cell_1/mul_2Mul%sequential_1/gru_1/gru_cell_1/sub:z:00sequential_1/gru_1/gru_cell_1/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@∞
#sequential_1/gru_1/gru_cell_1/add_3AddV2'sequential_1/gru_1/gru_cell_1/mul_1:z:0'sequential_1/gru_1/gru_cell_1/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Б
0sequential_1/gru_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   q
/sequential_1/gru_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ю
"sequential_1/gru_1/TensorArrayV2_1TensorListReserve9sequential_1/gru_1/TensorArrayV2_1/element_shape:output:08sequential_1/gru_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Y
sequential_1/gru_1/timeConst*
_output_shapes
: *
dtype0*
value	B : v
+sequential_1/gru_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€g
%sequential_1/gru_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ≤
sequential_1/gru_1/whileWhile.sequential_1/gru_1/while/loop_counter:output:04sequential_1/gru_1/while/maximum_iterations:output:0 sequential_1/gru_1/time:output:0+sequential_1/gru_1/TensorArrayV2_1:handle:0!sequential_1/gru_1/zeros:output:0+sequential_1/gru_1/strided_slice_1:output:0Jsequential_1/gru_1/TensorArrayUnstack/TensorListFromTensor:output_handle:05sequential_1_gru_1_gru_cell_1_readvariableop_resource<sequential_1_gru_1_gru_cell_1_matmul_readvariableop_resource>sequential_1_gru_1_gru_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *0
body(R&
$sequential_1_gru_1_while_body_273862*0
cond(R&
$sequential_1_gru_1_while_cond_273861*8
output_shapes'
%: : : : :€€€€€€€€€@: : : : : *
parallel_iterations Ф
Csequential_1/gru_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   П
5sequential_1/gru_1/TensorArrayV2Stack/TensorListStackTensorListStack!sequential_1/gru_1/while:output:3Lsequential_1/gru_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€@*
element_dtype0*
num_elements{
(sequential_1/gru_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€t
*sequential_1/gru_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: t
*sequential_1/gru_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
"sequential_1/gru_1/strided_slice_3StridedSlice>sequential_1/gru_1/TensorArrayV2Stack/TensorListStack:tensor:01sequential_1/gru_1/strided_slice_3/stack:output:03sequential_1/gru_1/strided_slice_3/stack_1:output:03sequential_1/gru_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_maskx
#sequential_1/gru_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ѕ
sequential_1/gru_1/transpose_1	Transpose>sequential_1/gru_1/TensorArrayV2Stack/TensorListStack:tensor:0,sequential_1/gru_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€@n
sequential_1/gru_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    К
sequential_1/dropout_3/IdentityIdentity+sequential_1/gru_1/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Ю
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0µ
sequential_1/dense_1/MatMulMatMul(sequential_1/dropout_3/Identity:output:02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€t
IdentityIdentity%sequential_1/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Г
NoOpNoOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp0^sequential_1/gru/gru_cell/MatMul/ReadVariableOp2^sequential_1/gru/gru_cell/MatMul_1/ReadVariableOp)^sequential_1/gru/gru_cell/ReadVariableOp^sequential_1/gru/while4^sequential_1/gru_1/gru_cell_1/MatMul/ReadVariableOp6^sequential_1/gru_1/gru_cell_1/MatMul_1/ReadVariableOp-^sequential_1/gru_1/gru_cell_1/ReadVariableOp^sequential_1/gru_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€
: : : : : : : : 2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp2b
/sequential_1/gru/gru_cell/MatMul/ReadVariableOp/sequential_1/gru/gru_cell/MatMul/ReadVariableOp2f
1sequential_1/gru/gru_cell/MatMul_1/ReadVariableOp1sequential_1/gru/gru_cell/MatMul_1/ReadVariableOp2T
(sequential_1/gru/gru_cell/ReadVariableOp(sequential_1/gru/gru_cell/ReadVariableOp20
sequential_1/gru/whilesequential_1/gru/while2j
3sequential_1/gru_1/gru_cell_1/MatMul/ReadVariableOp3sequential_1/gru_1/gru_cell_1/MatMul/ReadVariableOp2n
5sequential_1/gru_1/gru_cell_1/MatMul_1/ReadVariableOp5sequential_1/gru_1/gru_cell_1/MatMul_1/ReadVariableOp2\
,sequential_1/gru_1/gru_cell_1/ReadVariableOp,sequential_1/gru_1/gru_cell_1/ReadVariableOp24
sequential_1/gru_1/whilesequential_1/gru_1/while:V R
+
_output_shapes
:€€€€€€€€€

#
_user_specified_name	gru_input
л	
”
-__inference_sequential_1_layer_call_fn_275514
	gru_input
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	ј
	unknown_3:
Ај
	unknown_4:	@ј
	unknown_5:@
	unknown_6:
identityИҐStatefulPartitionedCallЃ
StatefulPartitionedCallStatefulPartitionedCall	gru_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_275474o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€
: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:€€€€€€€€€

#
_user_specified_name	gru_input
…
С
H__inference_sequential_1_layer_call_and_return_conditional_losses_275474

inputs

gru_275452:	А

gru_275454:	А

gru_275456:
АА
gru_1_275460:	ј 
gru_1_275462:
Ај
gru_1_275464:	@ј 
dense_1_275468:@
dense_1_275470:
identityИҐdense_1/StatefulPartitionedCallҐ!dropout_2/StatefulPartitionedCallҐ!dropout_3/StatefulPartitionedCallҐgru/StatefulPartitionedCallҐgru_1/StatefulPartitionedCallп
gru/StatefulPartitionedCallStatefulPartitionedCallinputs
gru_275452
gru_275454
gru_275456*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€
А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_275417н
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€
А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_275248Ш
gru_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0gru_1_275460gru_1_275462gru_1_275464*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_275219О
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall&gru_1/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_275048Р
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_1_275468dense_1_275470*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_274992w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€о
NoOpNoOp ^dense_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^gru/StatefulPartitionedCall^gru_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€
: : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall2>
gru_1/StatefulPartitionedCallgru_1/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
хM
Д
A__inference_gru_1_layer_call_and_return_conditional_losses_277155
inputs_05
"gru_cell_1_readvariableop_resource:	ј=
)gru_cell_1_matmul_readvariableop_resource:
Ај>
+gru_cell_1_matmul_1_readvariableop_resource:	@ј
identityИҐ gru_cell_1/MatMul/ReadVariableOpҐ"gru_cell_1/MatMul_1/ReadVariableOpҐgru_cell_1/ReadVariableOpҐwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask}
gru_cell_1/ReadVariableOpReadVariableOp"gru_cell_1_readvariableop_resource*
_output_shapes
:	ј*
dtype0w
gru_cell_1/unstackUnpack!gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:ј:ј*	
numМ
 gru_cell_1/MatMul/ReadVariableOpReadVariableOp)gru_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
Ај*
dtype0Т
gru_cell_1/MatMulMatMulstrided_slice_2:output:0(gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јК
gru_cell_1/BiasAddBiasAddgru_cell_1/MatMul:product:0gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€јe
gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ƒ
gru_cell_1/splitSplit#gru_cell_1/split/split_dim:output:0gru_cell_1/BiasAdd:output:0*
T0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitП
"gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	@ј*
dtype0М
gru_cell_1/MatMul_1MatMulzeros:output:0*gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јО
gru_cell_1/BiasAdd_1BiasAddgru_cell_1/MatMul_1:product:0gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€јe
gru_cell_1/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   €€€€g
gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€т
gru_cell_1/split_1SplitVgru_cell_1/BiasAdd_1:output:0gru_cell_1/Const:output:0%gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitБ
gru_cell_1/addAddV2gru_cell_1/split:output:0gru_cell_1/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
gru_cell_1/SigmoidSigmoidgru_cell_1/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Г
gru_cell_1/add_1AddV2gru_cell_1/split:output:1gru_cell_1/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€@g
gru_cell_1/Sigmoid_1Sigmoidgru_cell_1/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@~
gru_cell_1/mulMulgru_cell_1/Sigmoid_1:y:0gru_cell_1/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€@z
gru_cell_1/add_2AddV2gru_cell_1/split:output:2gru_cell_1/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@_
gru_cell_1/ReluRelugru_cell_1/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@q
gru_cell_1/mul_1Mulgru_cell_1/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:€€€€€€€€€@U
gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?z
gru_cell_1/subSubgru_cell_1/sub/x:output:0gru_cell_1/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@|
gru_cell_1/mul_2Mulgru_cell_1/sub:z:0gru_cell_1/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@w
gru_cell_1/add_3AddV2gru_cell_1/mul_1:z:0gru_cell_1/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ї
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_1_readvariableop_resource)gru_cell_1_matmul_readvariableop_resource+gru_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_277065*
condR
while_cond_277064*8
output_shapes'
%: : : : :€€€€€€€€€@: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@≤
NoOpNoOp!^gru_cell_1/MatMul/ReadVariableOp#^gru_cell_1/MatMul_1/ReadVariableOp^gru_cell_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€€€€€€€€€€А: : : 2D
 gru_cell_1/MatMul/ReadVariableOp gru_cell_1/MatMul/ReadVariableOp2H
"gru_cell_1/MatMul_1/ReadVariableOp"gru_cell_1/MatMul_1/ReadVariableOp26
gru_cell_1/ReadVariableOpgru_cell_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs/0
€}
і
"__inference__traced_restore_278097
file_prefix1
assignvariableop_dense_1_kernel:@-
assignvariableop_1_dense_1_bias:9
&assignvariableop_2_gru_gru_cell_kernel:	АD
0assignvariableop_3_gru_gru_cell_recurrent_kernel:
АА7
$assignvariableop_4_gru_gru_cell_bias:	А>
*assignvariableop_5_gru_1_gru_cell_1_kernel:
АјG
4assignvariableop_6_gru_1_gru_cell_1_recurrent_kernel:	@ј;
(assignvariableop_7_gru_1_gru_cell_1_bias:	ј&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: ;
)assignvariableop_15_adam_dense_1_kernel_m:@5
'assignvariableop_16_adam_dense_1_bias_m:A
.assignvariableop_17_adam_gru_gru_cell_kernel_m:	АL
8assignvariableop_18_adam_gru_gru_cell_recurrent_kernel_m:
АА?
,assignvariableop_19_adam_gru_gru_cell_bias_m:	АF
2assignvariableop_20_adam_gru_1_gru_cell_1_kernel_m:
АјO
<assignvariableop_21_adam_gru_1_gru_cell_1_recurrent_kernel_m:	@јC
0assignvariableop_22_adam_gru_1_gru_cell_1_bias_m:	ј;
)assignvariableop_23_adam_dense_1_kernel_v:@5
'assignvariableop_24_adam_dense_1_bias_v:A
.assignvariableop_25_adam_gru_gru_cell_kernel_v:	АL
8assignvariableop_26_adam_gru_gru_cell_recurrent_kernel_v:
АА?
,assignvariableop_27_adam_gru_gru_cell_bias_v:	АF
2assignvariableop_28_adam_gru_1_gru_cell_1_kernel_v:
АјO
<assignvariableop_29_adam_gru_1_gru_cell_1_recurrent_kernel_v:	@јC
0assignvariableop_30_adam_gru_1_gru_cell_1_bias_v:	ј
identity_32ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Є
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*ё
value‘B— B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH∞
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ѕ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ц
_output_shapesГ
А::::::::::::::::::::::::::::::::*.
dtypes$
"2 	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOpAssignVariableOpassignvariableop_dense_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_2AssignVariableOp&assignvariableop_2_gru_gru_cell_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_3AssignVariableOp0assignvariableop_3_gru_gru_cell_recurrent_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_4AssignVariableOp$assignvariableop_4_gru_gru_cell_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_5AssignVariableOp*assignvariableop_5_gru_1_gru_cell_1_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_6AssignVariableOp4assignvariableop_6_gru_1_gru_cell_1_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_7AssignVariableOp(assignvariableop_7_gru_1_gru_cell_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:Л
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_1_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_dense_1_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_17AssignVariableOp.assignvariableop_17_adam_gru_gru_cell_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_18AssignVariableOp8assignvariableop_18_adam_gru_gru_cell_recurrent_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_gru_gru_cell_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_gru_1_gru_cell_1_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:≠
AssignVariableOp_21AssignVariableOp<assignvariableop_21_adam_gru_1_gru_cell_1_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_22AssignVariableOp0assignvariableop_22_adam_gru_1_gru_cell_1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_1_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_1_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_25AssignVariableOp.assignvariableop_25_adam_gru_gru_cell_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_gru_gru_cell_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_27AssignVariableOp,assignvariableop_27_adam_gru_gru_cell_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_28AssignVariableOp2assignvariableop_28_adam_gru_1_gru_cell_1_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:≠
AssignVariableOp_29AssignVariableOp<assignvariableop_29_adam_gru_1_gru_cell_1_recurrent_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_30AssignVariableOp0assignvariableop_30_adam_gru_1_gru_cell_1_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 щ
Identity_31Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_32IdentityIdentity_31:output:0^NoOp_1*
T0*
_output_shapes
: ж
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_32Identity_32:output:0*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
“M
В
A__inference_gru_1_layer_call_and_return_conditional_losses_274967

inputs5
"gru_cell_1_readvariableop_resource:	ј=
)gru_cell_1_matmul_readvariableop_resource:
Ај>
+gru_cell_1_matmul_1_readvariableop_resource:	@ј
identityИҐ gru_cell_1/MatMul/ReadVariableOpҐ"gru_cell_1/MatMul_1/ReadVariableOpҐgru_cell_1/ReadVariableOpҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:
€€€€€€€€€АD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask}
gru_cell_1/ReadVariableOpReadVariableOp"gru_cell_1_readvariableop_resource*
_output_shapes
:	ј*
dtype0w
gru_cell_1/unstackUnpack!gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:ј:ј*	
numМ
 gru_cell_1/MatMul/ReadVariableOpReadVariableOp)gru_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
Ај*
dtype0Т
gru_cell_1/MatMulMatMulstrided_slice_2:output:0(gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јК
gru_cell_1/BiasAddBiasAddgru_cell_1/MatMul:product:0gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€јe
gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ƒ
gru_cell_1/splitSplit#gru_cell_1/split/split_dim:output:0gru_cell_1/BiasAdd:output:0*
T0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitП
"gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	@ј*
dtype0М
gru_cell_1/MatMul_1MatMulzeros:output:0*gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јО
gru_cell_1/BiasAdd_1BiasAddgru_cell_1/MatMul_1:product:0gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€јe
gru_cell_1/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   €€€€g
gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€т
gru_cell_1/split_1SplitVgru_cell_1/BiasAdd_1:output:0gru_cell_1/Const:output:0%gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitБ
gru_cell_1/addAddV2gru_cell_1/split:output:0gru_cell_1/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
gru_cell_1/SigmoidSigmoidgru_cell_1/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Г
gru_cell_1/add_1AddV2gru_cell_1/split:output:1gru_cell_1/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€@g
gru_cell_1/Sigmoid_1Sigmoidgru_cell_1/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@~
gru_cell_1/mulMulgru_cell_1/Sigmoid_1:y:0gru_cell_1/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€@z
gru_cell_1/add_2AddV2gru_cell_1/split:output:2gru_cell_1/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@_
gru_cell_1/ReluRelugru_cell_1/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@q
gru_cell_1/mul_1Mulgru_cell_1/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:€€€€€€€€€@U
gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?z
gru_cell_1/subSubgru_cell_1/sub/x:output:0gru_cell_1/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@|
gru_cell_1/mul_2Mulgru_cell_1/sub:z:0gru_cell_1/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@w
gru_cell_1/add_3AddV2gru_cell_1/mul_1:z:0gru_cell_1/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ї
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_1_readvariableop_resource)gru_cell_1_matmul_readvariableop_resource+gru_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_274877*
condR
while_cond_274876*8
output_shapes'
%: : : : :€€€€€€€€€@: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@≤
NoOpNoOp!^gru_cell_1/MatMul/ReadVariableOp#^gru_cell_1/MatMul_1/ReadVariableOp^gru_cell_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€
А: : : 2D
 gru_cell_1/MatMul/ReadVariableOp gru_cell_1/MatMul/ReadVariableOp2H
"gru_cell_1/MatMul_1/ReadVariableOp"gru_cell_1/MatMul_1/ReadVariableOp26
gru_cell_1/ReadVariableOpgru_cell_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€
А
 
_user_specified_nameinputs
№
™
while_cond_275327
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_275327___redundant_placeholder04
0while_while_cond_275327___redundant_placeholder14
0while_while_cond_275327___redundant_placeholder24
0while_while_cond_275327___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
ЮE
µ	
gru_1_while_body_276169(
$gru_1_while_gru_1_while_loop_counter.
*gru_1_while_gru_1_while_maximum_iterations
gru_1_while_placeholder
gru_1_while_placeholder_1
gru_1_while_placeholder_2'
#gru_1_while_gru_1_strided_slice_1_0c
_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0C
0gru_1_while_gru_cell_1_readvariableop_resource_0:	јK
7gru_1_while_gru_cell_1_matmul_readvariableop_resource_0:
АјL
9gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0:	@ј
gru_1_while_identity
gru_1_while_identity_1
gru_1_while_identity_2
gru_1_while_identity_3
gru_1_while_identity_4%
!gru_1_while_gru_1_strided_slice_1a
]gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensorA
.gru_1_while_gru_cell_1_readvariableop_resource:	јI
5gru_1_while_gru_cell_1_matmul_readvariableop_resource:
АјJ
7gru_1_while_gru_cell_1_matmul_1_readvariableop_resource:	@јИҐ,gru_1/while/gru_cell_1/MatMul/ReadVariableOpҐ.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOpҐ%gru_1/while/gru_cell_1/ReadVariableOpО
=gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   ≈
/gru_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0gru_1_while_placeholderFgru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype0Ч
%gru_1/while/gru_cell_1/ReadVariableOpReadVariableOp0gru_1_while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	ј*
dtype0П
gru_1/while/gru_cell_1/unstackUnpack-gru_1/while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:ј:ј*	
num¶
,gru_1/while/gru_cell_1/MatMul/ReadVariableOpReadVariableOp7gru_1_while_gru_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
Ај*
dtype0»
gru_1/while/gru_cell_1/MatMulMatMul6gru_1/while/TensorArrayV2Read/TensorListGetItem:item:04gru_1/while/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јЃ
gru_1/while/gru_cell_1/BiasAddBiasAdd'gru_1/while/gru_cell_1/MatMul:product:0'gru_1/while/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€јq
&gru_1/while/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€и
gru_1/while/gru_cell_1/splitSplit/gru_1/while/gru_cell_1/split/split_dim:output:0'gru_1/while/gru_cell_1/BiasAdd:output:0*
T0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split©
.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp9gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	@ј*
dtype0ѓ
gru_1/while/gru_cell_1/MatMul_1MatMulgru_1_while_placeholder_26gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ј≤
 gru_1/while/gru_cell_1/BiasAdd_1BiasAdd)gru_1/while/gru_cell_1/MatMul_1:product:0'gru_1/while/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€јq
gru_1/while/gru_cell_1/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   €€€€s
(gru_1/while/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Ґ
gru_1/while/gru_cell_1/split_1SplitV)gru_1/while/gru_cell_1/BiasAdd_1:output:0%gru_1/while/gru_cell_1/Const:output:01gru_1/while/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split•
gru_1/while/gru_cell_1/addAddV2%gru_1/while/gru_cell_1/split:output:0'gru_1/while/gru_cell_1/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@{
gru_1/while/gru_cell_1/SigmoidSigmoidgru_1/while/gru_cell_1/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@І
gru_1/while/gru_cell_1/add_1AddV2%gru_1/while/gru_cell_1/split:output:1'gru_1/while/gru_cell_1/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€@
 gru_1/while/gru_cell_1/Sigmoid_1Sigmoid gru_1/while/gru_cell_1/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Ґ
gru_1/while/gru_cell_1/mulMul$gru_1/while/gru_cell_1/Sigmoid_1:y:0'gru_1/while/gru_cell_1/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€@Ю
gru_1/while/gru_cell_1/add_2AddV2%gru_1/while/gru_cell_1/split:output:2gru_1/while/gru_cell_1/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@w
gru_1/while/gru_cell_1/ReluRelu gru_1/while/gru_cell_1/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Ф
gru_1/while/gru_cell_1/mul_1Mul"gru_1/while/gru_cell_1/Sigmoid:y:0gru_1_while_placeholder_2*
T0*'
_output_shapes
:€€€€€€€€€@a
gru_1/while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ю
gru_1/while/gru_cell_1/subSub%gru_1/while/gru_cell_1/sub/x:output:0"gru_1/while/gru_cell_1/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@†
gru_1/while/gru_cell_1/mul_2Mulgru_1/while/gru_cell_1/sub:z:0)gru_1/while/gru_cell_1/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@Ы
gru_1/while/gru_cell_1/add_3AddV2 gru_1/while/gru_cell_1/mul_1:z:0 gru_1/while/gru_cell_1/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@x
6gru_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Г
0gru_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_1_while_placeholder_1?gru_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0 gru_1/while/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype0:йи“S
gru_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
gru_1/while/addAddV2gru_1_while_placeholdergru_1/while/add/y:output:0*
T0*
_output_shapes
: U
gru_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
gru_1/while/add_1AddV2$gru_1_while_gru_1_while_loop_countergru_1/while/add_1/y:output:0*
T0*
_output_shapes
: k
gru_1/while/IdentityIdentitygru_1/while/add_1:z:0^gru_1/while/NoOp*
T0*
_output_shapes
: В
gru_1/while/Identity_1Identity*gru_1_while_gru_1_while_maximum_iterations^gru_1/while/NoOp*
T0*
_output_shapes
: k
gru_1/while/Identity_2Identitygru_1/while/add:z:0^gru_1/while/NoOp*
T0*
_output_shapes
: Ш
gru_1/while/Identity_3Identity@gru_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru_1/while/NoOp*
T0*
_output_shapes
: Й
gru_1/while/Identity_4Identity gru_1/while/gru_cell_1/add_3:z:0^gru_1/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€@Џ
gru_1/while/NoOpNoOp-^gru_1/while/gru_cell_1/MatMul/ReadVariableOp/^gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp&^gru_1/while/gru_cell_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "H
!gru_1_while_gru_1_strided_slice_1#gru_1_while_gru_1_strided_slice_1_0"t
7gru_1_while_gru_cell_1_matmul_1_readvariableop_resource9gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0"p
5gru_1_while_gru_cell_1_matmul_readvariableop_resource7gru_1_while_gru_cell_1_matmul_readvariableop_resource_0"b
.gru_1_while_gru_cell_1_readvariableop_resource0gru_1_while_gru_cell_1_readvariableop_resource_0"5
gru_1_while_identitygru_1/while/Identity:output:0"9
gru_1_while_identity_1gru_1/while/Identity_1:output:0"9
gru_1_while_identity_2gru_1/while/Identity_2:output:0"9
gru_1_while_identity_3gru_1/while/Identity_3:output:0"9
gru_1_while_identity_4gru_1/while/Identity_4:output:0"ј
]gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€@: : : : : 2\
,gru_1/while/gru_cell_1/MatMul/ReadVariableOp,gru_1/while/gru_cell_1/MatMul/ReadVariableOp2`
.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp2N
%gru_1/while/gru_cell_1/ReadVariableOp%gru_1/while/gru_cell_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
с
c
*__inference_dropout_3_layer_call_fn_277630

inputs
identityИҐStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_275048o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ЮE
µ	
gru_1_while_body_275850(
$gru_1_while_gru_1_while_loop_counter.
*gru_1_while_gru_1_while_maximum_iterations
gru_1_while_placeholder
gru_1_while_placeholder_1
gru_1_while_placeholder_2'
#gru_1_while_gru_1_strided_slice_1_0c
_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0C
0gru_1_while_gru_cell_1_readvariableop_resource_0:	јK
7gru_1_while_gru_cell_1_matmul_readvariableop_resource_0:
АјL
9gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0:	@ј
gru_1_while_identity
gru_1_while_identity_1
gru_1_while_identity_2
gru_1_while_identity_3
gru_1_while_identity_4%
!gru_1_while_gru_1_strided_slice_1a
]gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensorA
.gru_1_while_gru_cell_1_readvariableop_resource:	јI
5gru_1_while_gru_cell_1_matmul_readvariableop_resource:
АјJ
7gru_1_while_gru_cell_1_matmul_1_readvariableop_resource:	@јИҐ,gru_1/while/gru_cell_1/MatMul/ReadVariableOpҐ.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOpҐ%gru_1/while/gru_cell_1/ReadVariableOpО
=gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   ≈
/gru_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0gru_1_while_placeholderFgru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype0Ч
%gru_1/while/gru_cell_1/ReadVariableOpReadVariableOp0gru_1_while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	ј*
dtype0П
gru_1/while/gru_cell_1/unstackUnpack-gru_1/while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:ј:ј*	
num¶
,gru_1/while/gru_cell_1/MatMul/ReadVariableOpReadVariableOp7gru_1_while_gru_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
Ај*
dtype0»
gru_1/while/gru_cell_1/MatMulMatMul6gru_1/while/TensorArrayV2Read/TensorListGetItem:item:04gru_1/while/gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јЃ
gru_1/while/gru_cell_1/BiasAddBiasAdd'gru_1/while/gru_cell_1/MatMul:product:0'gru_1/while/gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€јq
&gru_1/while/gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€и
gru_1/while/gru_cell_1/splitSplit/gru_1/while/gru_cell_1/split/split_dim:output:0'gru_1/while/gru_cell_1/BiasAdd:output:0*
T0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split©
.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp9gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	@ј*
dtype0ѓ
gru_1/while/gru_cell_1/MatMul_1MatMulgru_1_while_placeholder_26gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ј≤
 gru_1/while/gru_cell_1/BiasAdd_1BiasAdd)gru_1/while/gru_cell_1/MatMul_1:product:0'gru_1/while/gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€јq
gru_1/while/gru_cell_1/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   €€€€s
(gru_1/while/gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Ґ
gru_1/while/gru_cell_1/split_1SplitV)gru_1/while/gru_cell_1/BiasAdd_1:output:0%gru_1/while/gru_cell_1/Const:output:01gru_1/while/gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split•
gru_1/while/gru_cell_1/addAddV2%gru_1/while/gru_cell_1/split:output:0'gru_1/while/gru_cell_1/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@{
gru_1/while/gru_cell_1/SigmoidSigmoidgru_1/while/gru_cell_1/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@І
gru_1/while/gru_cell_1/add_1AddV2%gru_1/while/gru_cell_1/split:output:1'gru_1/while/gru_cell_1/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€@
 gru_1/while/gru_cell_1/Sigmoid_1Sigmoid gru_1/while/gru_cell_1/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Ґ
gru_1/while/gru_cell_1/mulMul$gru_1/while/gru_cell_1/Sigmoid_1:y:0'gru_1/while/gru_cell_1/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€@Ю
gru_1/while/gru_cell_1/add_2AddV2%gru_1/while/gru_cell_1/split:output:2gru_1/while/gru_cell_1/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@w
gru_1/while/gru_cell_1/ReluRelu gru_1/while/gru_cell_1/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Ф
gru_1/while/gru_cell_1/mul_1Mul"gru_1/while/gru_cell_1/Sigmoid:y:0gru_1_while_placeholder_2*
T0*'
_output_shapes
:€€€€€€€€€@a
gru_1/while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ю
gru_1/while/gru_cell_1/subSub%gru_1/while/gru_cell_1/sub/x:output:0"gru_1/while/gru_cell_1/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@†
gru_1/while/gru_cell_1/mul_2Mulgru_1/while/gru_cell_1/sub:z:0)gru_1/while/gru_cell_1/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@Ы
gru_1/while/gru_cell_1/add_3AddV2 gru_1/while/gru_cell_1/mul_1:z:0 gru_1/while/gru_cell_1/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@x
6gru_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Г
0gru_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_1_while_placeholder_1?gru_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0 gru_1/while/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype0:йи“S
gru_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
gru_1/while/addAddV2gru_1_while_placeholdergru_1/while/add/y:output:0*
T0*
_output_shapes
: U
gru_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
gru_1/while/add_1AddV2$gru_1_while_gru_1_while_loop_countergru_1/while/add_1/y:output:0*
T0*
_output_shapes
: k
gru_1/while/IdentityIdentitygru_1/while/add_1:z:0^gru_1/while/NoOp*
T0*
_output_shapes
: В
gru_1/while/Identity_1Identity*gru_1_while_gru_1_while_maximum_iterations^gru_1/while/NoOp*
T0*
_output_shapes
: k
gru_1/while/Identity_2Identitygru_1/while/add:z:0^gru_1/while/NoOp*
T0*
_output_shapes
: Ш
gru_1/while/Identity_3Identity@gru_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru_1/while/NoOp*
T0*
_output_shapes
: Й
gru_1/while/Identity_4Identity gru_1/while/gru_cell_1/add_3:z:0^gru_1/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€@Џ
gru_1/while/NoOpNoOp-^gru_1/while/gru_cell_1/MatMul/ReadVariableOp/^gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp&^gru_1/while/gru_cell_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "H
!gru_1_while_gru_1_strided_slice_1#gru_1_while_gru_1_strided_slice_1_0"t
7gru_1_while_gru_cell_1_matmul_1_readvariableop_resource9gru_1_while_gru_cell_1_matmul_1_readvariableop_resource_0"p
5gru_1_while_gru_cell_1_matmul_readvariableop_resource7gru_1_while_gru_cell_1_matmul_readvariableop_resource_0"b
.gru_1_while_gru_cell_1_readvariableop_resource0gru_1_while_gru_cell_1_readvariableop_resource_0"5
gru_1_while_identitygru_1/while/Identity:output:0"9
gru_1_while_identity_1gru_1/while/Identity_1:output:0"9
gru_1_while_identity_2gru_1/while/Identity_2:output:0"9
gru_1_while_identity_3gru_1/while/Identity_3:output:0"9
gru_1_while_identity_4gru_1/while/Identity_4:output:0"ј
]gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€@: : : : : 2\
,gru_1/while/gru_cell_1/MatMul/ReadVariableOp,gru_1/while/gru_cell_1/MatMul/ReadVariableOp2`
.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp.gru_1/while/gru_cell_1/MatMul_1/ReadVariableOp2N
%gru_1/while/gru_cell_1/ReadVariableOp%gru_1/while/gru_cell_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
ГL
ц
?__inference_gru_layer_call_and_return_conditional_losses_276623
inputs_03
 gru_cell_readvariableop_resource:	А:
'gru_cell_matmul_readvariableop_resource:	А=
)gru_cell_matmul_1_readvariableop_resource:
АА
identityИҐgru_cell/MatMul/ReadVariableOpҐ gru_cell/MatMul_1/ReadVariableOpҐgru_cell/ReadVariableOpҐwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_masky
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	А*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:А:А*	
numЗ
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0О
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АД
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Ѕ
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitМ
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0И
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АИ
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аc
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"А   А   €€€€e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€н
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аd
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:€€€€€€€€€Аu
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€А\
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:€€€€€€€€€АS
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_276534*
condR
while_cond_276533*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          †
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ађ
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
В!
∞
while_body_274381
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_gru_cell_1_274403_0:	ј-
while_gru_cell_1_274405_0:
Ај,
while_gru_cell_1_274407_0:	@ј
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_gru_cell_1_274403:	ј+
while_gru_cell_1_274405:
Ај*
while_gru_cell_1_274407:	@јИҐ(while/gru_cell_1/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype0€
(while/gru_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_1_274403_0while_gru_cell_1_274405_0while_gru_cell_1_274407_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_gru_cell_1_layer_call_and_return_conditional_losses_274367r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : В
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:01while/gru_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: О
while/Identity_4Identity1while/gru_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€@w

while/NoOpNoOp)^while/gru_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "4
while_gru_cell_1_274403while_gru_cell_1_274403_0"4
while_gru_cell_1_274405while_gru_cell_1_274405_0"4
while_gru_cell_1_274407while_gru_cell_1_274407_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€@: : : : : 2T
(while/gru_cell_1/StatefulPartitionedCall(while/gru_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
µ

ў
)__inference_gru_cell_layer_call_fn_277694

inputs
states_0
unknown:	А
	unknown_0:	А
	unknown_1:
АА
identity

identity_1ИҐStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_gru_cell_layer_call_and_return_conditional_losses_274172p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€:€€€€€€€€€А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/0
Т
Ї
&__inference_gru_1_layer_call_fn_276978
inputs_0
unknown:	ј
	unknown_0:
Ај
	unknown_1:	@ј
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_274630o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€€€€€€€€€€А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs/0
∆	
ф
C__inference_dense_1_layer_call_and_return_conditional_losses_277666

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
“M
В
A__inference_gru_1_layer_call_and_return_conditional_losses_277620

inputs5
"gru_cell_1_readvariableop_resource:	ј=
)gru_cell_1_matmul_readvariableop_resource:
Ај>
+gru_cell_1_matmul_1_readvariableop_resource:	@ј
identityИҐ gru_cell_1/MatMul/ReadVariableOpҐ"gru_cell_1/MatMul_1/ReadVariableOpҐgru_cell_1/ReadVariableOpҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:
€€€€€€€€€АD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask}
gru_cell_1/ReadVariableOpReadVariableOp"gru_cell_1_readvariableop_resource*
_output_shapes
:	ј*
dtype0w
gru_cell_1/unstackUnpack!gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:ј:ј*	
numМ
 gru_cell_1/MatMul/ReadVariableOpReadVariableOp)gru_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
Ај*
dtype0Т
gru_cell_1/MatMulMatMulstrided_slice_2:output:0(gru_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јК
gru_cell_1/BiasAddBiasAddgru_cell_1/MatMul:product:0gru_cell_1/unstack:output:0*
T0*(
_output_shapes
:€€€€€€€€€јe
gru_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ƒ
gru_cell_1/splitSplit#gru_cell_1/split/split_dim:output:0gru_cell_1/BiasAdd:output:0*
T0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitП
"gru_cell_1/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	@ј*
dtype0М
gru_cell_1/MatMul_1MatMulzeros:output:0*gru_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јО
gru_cell_1/BiasAdd_1BiasAddgru_cell_1/MatMul_1:product:0gru_cell_1/unstack:output:1*
T0*(
_output_shapes
:€€€€€€€€€јe
gru_cell_1/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   €€€€g
gru_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€т
gru_cell_1/split_1SplitVgru_cell_1/BiasAdd_1:output:0gru_cell_1/Const:output:0%gru_cell_1/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_splitБ
gru_cell_1/addAddV2gru_cell_1/split:output:0gru_cell_1/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@c
gru_cell_1/SigmoidSigmoidgru_cell_1/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@Г
gru_cell_1/add_1AddV2gru_cell_1/split:output:1gru_cell_1/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€@g
gru_cell_1/Sigmoid_1Sigmoidgru_cell_1/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@~
gru_cell_1/mulMulgru_cell_1/Sigmoid_1:y:0gru_cell_1/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€@z
gru_cell_1/add_2AddV2gru_cell_1/split:output:2gru_cell_1/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@_
gru_cell_1/ReluRelugru_cell_1/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@q
gru_cell_1/mul_1Mulgru_cell_1/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:€€€€€€€€€@U
gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?z
gru_cell_1/subSubgru_cell_1/sub/x:output:0gru_cell_1/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@|
gru_cell_1/mul_2Mulgru_cell_1/sub:z:0gru_cell_1/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@w
gru_cell_1/add_3AddV2gru_cell_1/mul_1:z:0gru_cell_1/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ї
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_1_readvariableop_resource)gru_cell_1_matmul_readvariableop_resource+gru_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_277530*
condR
while_cond_277529*8
output_shapes'
%: : : : :€€€€€€€€€@: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@≤
NoOpNoOp!^gru_cell_1/MatMul/ReadVariableOp#^gru_cell_1/MatMul_1/ReadVariableOp^gru_cell_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€
А: : : 2D
 gru_cell_1/MatMul/ReadVariableOp gru_cell_1/MatMul/ReadVariableOp2H
"gru_cell_1/MatMul_1/ReadVariableOp"gru_cell_1/MatMul_1/ReadVariableOp26
gru_cell_1/ReadVariableOpgru_cell_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€
А
 
_user_specified_nameinputs"њL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*≤
serving_defaultЮ
C
	gru_input6
serving_default_gru_input:0€€€€€€€€€
;
dense_10
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:вФ
х
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Џ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
Љ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
Џ
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%_random_generator
&cell
'
state_spec"
_tf_keras_rnn_layer
Љ
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses
._random_generator"
_tf_keras_layer
ї
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias"
_tf_keras_layer
X
70
81
92
:3
;4
<5
56
67"
trackable_list_wrapper
X
70
81
92
:3
;4
<5
56
67"
trackable_list_wrapper
 "
trackable_list_wrapper
 
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
к
Btrace_0
Ctrace_1
Dtrace_2
Etrace_32€
-__inference_sequential_1_layer_call_fn_275018
-__inference_sequential_1_layer_call_fn_275614
-__inference_sequential_1_layer_call_fn_275635
-__inference_sequential_1_layer_call_fn_275514ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zBtrace_0zCtrace_1zDtrace_2zEtrace_3
÷
Ftrace_0
Gtrace_1
Htrace_2
Itrace_32л
H__inference_sequential_1_layer_call_and_return_conditional_losses_275947
H__inference_sequential_1_layer_call_and_return_conditional_losses_276273
H__inference_sequential_1_layer_call_and_return_conditional_losses_275539
H__inference_sequential_1_layer_call_and_return_conditional_losses_275564ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zFtrace_0zGtrace_1zHtrace_2zItrace_3
ќBЋ
!__inference__wrapped_model_273959	gru_input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
у
Jiter

Kbeta_1

Lbeta_2
	Mdecay
Nlearning_rate5m™6mЂ7mђ8m≠9mЃ:mѓ;m∞<m±5v≤6v≥7vі8vµ9vґ:vЈ;vЄ<vє"
	optimizer
,
Oserving_default"
signature_map
5
70
81
92"
trackable_list_wrapper
5
70
81
92"
trackable_list_wrapper
 "
trackable_list_wrapper
є

Pstates
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
џ
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_32р
$__inference_gru_layer_call_fn_276284
$__inference_gru_layer_call_fn_276295
$__inference_gru_layer_call_fn_276306
$__inference_gru_layer_call_fn_276317’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zVtrace_0zWtrace_1zXtrace_2zYtrace_3
«
Ztrace_0
[trace_1
\trace_2
]trace_32№
?__inference_gru_layer_call_and_return_conditional_losses_276470
?__inference_gru_layer_call_and_return_conditional_losses_276623
?__inference_gru_layer_call_and_return_conditional_losses_276776
?__inference_gru_layer_call_and_return_conditional_losses_276929’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zZtrace_0z[trace_1z\trace_2z]trace_3
"
_generic_user_object
и
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses
d_random_generator

7kernel
8recurrent_kernel
9bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
∆
jtrace_0
ktrace_12П
*__inference_dropout_2_layer_call_fn_276934
*__inference_dropout_2_layer_call_fn_276939і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zjtrace_0zktrace_1
ь
ltrace_0
mtrace_12≈
E__inference_dropout_2_layer_call_and_return_conditional_losses_276944
E__inference_dropout_2_layer_call_and_return_conditional_losses_276956і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zltrace_0zmtrace_1
"
_generic_user_object
5
:0
;1
<2"
trackable_list_wrapper
5
:0
;1
<2"
trackable_list_wrapper
 "
trackable_list_wrapper
є

nstates
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
г
ttrace_0
utrace_1
vtrace_2
wtrace_32ш
&__inference_gru_1_layer_call_fn_276967
&__inference_gru_1_layer_call_fn_276978
&__inference_gru_1_layer_call_fn_276989
&__inference_gru_1_layer_call_fn_277000’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zttrace_0zutrace_1zvtrace_2zwtrace_3
ѕ
xtrace_0
ytrace_1
ztrace_2
{trace_32д
A__inference_gru_1_layer_call_and_return_conditional_losses_277155
A__inference_gru_1_layer_call_and_return_conditional_losses_277310
A__inference_gru_1_layer_call_and_return_conditional_losses_277465
A__inference_gru_1_layer_call_and_return_conditional_losses_277620’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zxtrace_0zytrace_1zztrace_2z{trace_3
"
_generic_user_object
л
|	variables
}trainable_variables
~regularization_losses
	keras_api
А__call__
+Б&call_and_return_all_conditional_losses
В_random_generator

:kernel
;recurrent_kernel
<bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Гnon_trainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
 
Иtrace_0
Йtrace_12П
*__inference_dropout_3_layer_call_fn_277625
*__inference_dropout_3_layer_call_fn_277630і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zИtrace_0zЙtrace_1
А
Кtrace_0
Лtrace_12≈
E__inference_dropout_3_layer_call_and_return_conditional_losses_277635
E__inference_dropout_3_layer_call_and_return_conditional_losses_277647і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zКtrace_0zЛtrace_1
"
_generic_user_object
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
о
Сtrace_02ѕ
(__inference_dense_1_layer_call_fn_277656Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zСtrace_0
Й
Тtrace_02к
C__inference_dense_1_layer_call_and_return_conditional_losses_277666Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zТtrace_0
 :@2dense_1/kernel
:2dense_1/bias
&:$	А2gru/gru_cell/kernel
1:/
АА2gru/gru_cell/recurrent_kernel
$:"	А2gru/gru_cell/bias
+:)
Ај2gru_1/gru_cell_1/kernel
4:2	@ј2!gru_1/gru_cell_1/recurrent_kernel
(:&	ј2gru_1/gru_cell_1/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
(
У0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ВB€
-__inference_sequential_1_layer_call_fn_275018	gru_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
€Bь
-__inference_sequential_1_layer_call_fn_275614inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
€Bь
-__inference_sequential_1_layer_call_fn_275635inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ВB€
-__inference_sequential_1_layer_call_fn_275514	gru_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЪBЧ
H__inference_sequential_1_layer_call_and_return_conditional_losses_275947inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЪBЧ
H__inference_sequential_1_layer_call_and_return_conditional_losses_276273inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЭBЪ
H__inference_sequential_1_layer_call_and_return_conditional_losses_275539	gru_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЭBЪ
H__inference_sequential_1_layer_call_and_return_conditional_losses_275564	gru_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ЌB 
$__inference_signature_wrapper_275593	gru_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
НBК
$__inference_gru_layer_call_fn_276284inputs/0"’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
НBК
$__inference_gru_layer_call_fn_276295inputs/0"’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЛBИ
$__inference_gru_layer_call_fn_276306inputs"’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЛBИ
$__inference_gru_layer_call_fn_276317inputs"’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
®B•
?__inference_gru_layer_call_and_return_conditional_losses_276470inputs/0"’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
®B•
?__inference_gru_layer_call_and_return_conditional_losses_276623inputs/0"’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
¶B£
?__inference_gru_layer_call_and_return_conditional_losses_276776inputs"’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
¶B£
?__inference_gru_layer_call_and_return_conditional_losses_276929inputs"’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
5
70
81
92"
trackable_list_wrapper
5
70
81
92"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
“
Щtrace_0
Ъtrace_12Ч
)__inference_gru_cell_layer_call_fn_277680
)__inference_gru_cell_layer_call_fn_277694Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zЩtrace_0zЪtrace_1
И
Ыtrace_0
Ьtrace_12Ќ
D__inference_gru_cell_layer_call_and_return_conditional_losses_277733
D__inference_gru_cell_layer_call_and_return_conditional_losses_277772Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zЫtrace_0zЬtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
*__inference_dropout_2_layer_call_fn_276934inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
рBн
*__inference_dropout_2_layer_call_fn_276939inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЛBИ
E__inference_dropout_2_layer_call_and_return_conditional_losses_276944inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЛBИ
E__inference_dropout_2_layer_call_and_return_conditional_losses_276956inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
&0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ПBМ
&__inference_gru_1_layer_call_fn_276967inputs/0"’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ПBМ
&__inference_gru_1_layer_call_fn_276978inputs/0"’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
НBК
&__inference_gru_1_layer_call_fn_276989inputs"’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
НBК
&__inference_gru_1_layer_call_fn_277000inputs"’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
™BІ
A__inference_gru_1_layer_call_and_return_conditional_losses_277155inputs/0"’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
™BІ
A__inference_gru_1_layer_call_and_return_conditional_losses_277310inputs/0"’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
®B•
A__inference_gru_1_layer_call_and_return_conditional_losses_277465inputs"’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
®B•
A__inference_gru_1_layer_call_and_return_conditional_losses_277620inputs"’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
5
:0
;1
<2"
trackable_list_wrapper
5
:0
;1
<2"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Эnon_trainable_variables
Юlayers
Яmetrics
 †layer_regularization_losses
°layer_metrics
|	variables
}trainable_variables
~regularization_losses
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses"
_generic_user_object
÷
Ґtrace_0
£trace_12Ы
+__inference_gru_cell_1_layer_call_fn_277786
+__inference_gru_cell_1_layer_call_fn_277800Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zҐtrace_0z£trace_1
М
§trace_0
•trace_12—
F__inference_gru_cell_1_layer_call_and_return_conditional_losses_277839
F__inference_gru_cell_1_layer_call_and_return_conditional_losses_277878Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 z§trace_0z•trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
*__inference_dropout_3_layer_call_fn_277625inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
рBн
*__inference_dropout_3_layer_call_fn_277630inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЛBИ
E__inference_dropout_3_layer_call_and_return_conditional_losses_277635inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЛBИ
E__inference_dropout_3_layer_call_and_return_conditional_losses_277647inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
№Bў
(__inference_dense_1_layer_call_fn_277656inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
чBф
C__inference_dense_1_layer_call_and_return_conditional_losses_277666inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
¶	variables
І	keras_api

®total

©count"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ГBА
)__inference_gru_cell_layer_call_fn_277680inputsstates/0"Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ГBА
)__inference_gru_cell_layer_call_fn_277694inputsstates/0"Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЮBЫ
D__inference_gru_cell_layer_call_and_return_conditional_losses_277733inputsstates/0"Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЮBЫ
D__inference_gru_cell_layer_call_and_return_conditional_losses_277772inputsstates/0"Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЕBВ
+__inference_gru_cell_1_layer_call_fn_277786inputsstates/0"Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЕBВ
+__inference_gru_cell_1_layer_call_fn_277800inputsstates/0"Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
†BЭ
F__inference_gru_cell_1_layer_call_and_return_conditional_losses_277839inputsstates/0"Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
†BЭ
F__inference_gru_cell_1_layer_call_and_return_conditional_losses_277878inputsstates/0"Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
0
®0
©1"
trackable_list_wrapper
.
¶	variables"
_generic_user_object
:  (2total
:  (2count
%:#@2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
+:)	А2Adam/gru/gru_cell/kernel/m
6:4
АА2$Adam/gru/gru_cell/recurrent_kernel/m
):'	А2Adam/gru/gru_cell/bias/m
0:.
Ај2Adam/gru_1/gru_cell_1/kernel/m
9:7	@ј2(Adam/gru_1/gru_cell_1/recurrent_kernel/m
-:+	ј2Adam/gru_1/gru_cell_1/bias/m
%:#@2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
+:)	А2Adam/gru/gru_cell/kernel/v
6:4
АА2$Adam/gru/gru_cell/recurrent_kernel/v
):'	А2Adam/gru/gru_cell/bias/v
0:.
Ај2Adam/gru_1/gru_cell_1/kernel/v
9:7	@ј2(Adam/gru_1/gru_cell_1/recurrent_kernel/v
-:+	ј2Adam/gru_1/gru_cell_1/bias/vЪ
!__inference__wrapped_model_273959u978<:;566Ґ3
,Ґ)
'К$
	gru_input€€€€€€€€€

™ "1™.
,
dense_1!К
dense_1€€€€€€€€€£
C__inference_dense_1_layer_call_and_return_conditional_losses_277666\56/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "%Ґ"
К
0€€€€€€€€€
Ъ {
(__inference_dense_1_layer_call_fn_277656O56/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "К€€€€€€€€€ѓ
E__inference_dropout_2_layer_call_and_return_conditional_losses_276944f8Ґ5
.Ґ+
%К"
inputs€€€€€€€€€
А
p 
™ "*Ґ'
 К
0€€€€€€€€€
А
Ъ ѓ
E__inference_dropout_2_layer_call_and_return_conditional_losses_276956f8Ґ5
.Ґ+
%К"
inputs€€€€€€€€€
А
p
™ "*Ґ'
 К
0€€€€€€€€€
А
Ъ З
*__inference_dropout_2_layer_call_fn_276934Y8Ґ5
.Ґ+
%К"
inputs€€€€€€€€€
А
p 
™ "К€€€€€€€€€
АЗ
*__inference_dropout_2_layer_call_fn_276939Y8Ґ5
.Ґ+
%К"
inputs€€€€€€€€€
А
p
™ "К€€€€€€€€€
А•
E__inference_dropout_3_layer_call_and_return_conditional_losses_277635\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€@
p 
™ "%Ґ"
К
0€€€€€€€€€@
Ъ •
E__inference_dropout_3_layer_call_and_return_conditional_losses_277647\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€@
p
™ "%Ґ"
К
0€€€€€€€€€@
Ъ }
*__inference_dropout_3_layer_call_fn_277625O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€@
p 
™ "К€€€€€€€€€@}
*__inference_dropout_3_layer_call_fn_277630O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€@
p
™ "К€€€€€€€€€@√
A__inference_gru_1_layer_call_and_return_conditional_losses_277155~<:;PҐM
FҐC
5Ъ2
0К-
inputs/0€€€€€€€€€€€€€€€€€€А

 
p 

 
™ "%Ґ"
К
0€€€€€€€€€@
Ъ √
A__inference_gru_1_layer_call_and_return_conditional_losses_277310~<:;PҐM
FҐC
5Ъ2
0К-
inputs/0€€€€€€€€€€€€€€€€€€А

 
p

 
™ "%Ґ"
К
0€€€€€€€€€@
Ъ ≥
A__inference_gru_1_layer_call_and_return_conditional_losses_277465n<:;@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€
А

 
p 

 
™ "%Ґ"
К
0€€€€€€€€€@
Ъ ≥
A__inference_gru_1_layer_call_and_return_conditional_losses_277620n<:;@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€
А

 
p

 
™ "%Ґ"
К
0€€€€€€€€€@
Ъ Ы
&__inference_gru_1_layer_call_fn_276967q<:;PҐM
FҐC
5Ъ2
0К-
inputs/0€€€€€€€€€€€€€€€€€€А

 
p 

 
™ "К€€€€€€€€€@Ы
&__inference_gru_1_layer_call_fn_276978q<:;PҐM
FҐC
5Ъ2
0К-
inputs/0€€€€€€€€€€€€€€€€€€А

 
p

 
™ "К€€€€€€€€€@Л
&__inference_gru_1_layer_call_fn_276989a<:;@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€
А

 
p 

 
™ "К€€€€€€€€€@Л
&__inference_gru_1_layer_call_fn_277000a<:;@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€
А

 
p

 
™ "К€€€€€€€€€@Г
F__inference_gru_cell_1_layer_call_and_return_conditional_losses_277839Є<:;]ҐZ
SҐP
!К
inputs€€€€€€€€€А
'Ґ$
"К
states/0€€€€€€€€€@
p 
™ "RҐO
HҐE
К
0/0€€€€€€€€€@
$Ъ!
К
0/1/0€€€€€€€€€@
Ъ Г
F__inference_gru_cell_1_layer_call_and_return_conditional_losses_277878Є<:;]ҐZ
SҐP
!К
inputs€€€€€€€€€А
'Ґ$
"К
states/0€€€€€€€€€@
p
™ "RҐO
HҐE
К
0/0€€€€€€€€€@
$Ъ!
К
0/1/0€€€€€€€€€@
Ъ Џ
+__inference_gru_cell_1_layer_call_fn_277786™<:;]ҐZ
SҐP
!К
inputs€€€€€€€€€А
'Ґ$
"К
states/0€€€€€€€€€@
p 
™ "DҐA
К
0€€€€€€€€€@
"Ъ
К
1/0€€€€€€€€€@Џ
+__inference_gru_cell_1_layer_call_fn_277800™<:;]ҐZ
SҐP
!К
inputs€€€€€€€€€А
'Ґ$
"К
states/0€€€€€€€€€@
p
™ "DҐA
К
0€€€€€€€€€@
"Ъ
К
1/0€€€€€€€€€@Г
D__inference_gru_cell_layer_call_and_return_conditional_losses_277733Ї978]ҐZ
SҐP
 К
inputs€€€€€€€€€
(Ґ%
#К 
states/0€€€€€€€€€А
p 
™ "TҐQ
JҐG
К
0/0€€€€€€€€€А
%Ъ"
 К
0/1/0€€€€€€€€€А
Ъ Г
D__inference_gru_cell_layer_call_and_return_conditional_losses_277772Ї978]ҐZ
SҐP
 К
inputs€€€€€€€€€
(Ґ%
#К 
states/0€€€€€€€€€А
p
™ "TҐQ
JҐG
К
0/0€€€€€€€€€А
%Ъ"
 К
0/1/0€€€€€€€€€А
Ъ Џ
)__inference_gru_cell_layer_call_fn_277680ђ978]ҐZ
SҐP
 К
inputs€€€€€€€€€
(Ґ%
#К 
states/0€€€€€€€€€А
p 
™ "FҐC
К
0€€€€€€€€€А
#Ъ 
К
1/0€€€€€€€€€АЏ
)__inference_gru_cell_layer_call_fn_277694ђ978]ҐZ
SҐP
 К
inputs€€€€€€€€€
(Ґ%
#К 
states/0€€€€€€€€€А
p
™ "FҐC
К
0€€€€€€€€€А
#Ъ 
К
1/0€€€€€€€€€Аѕ
?__inference_gru_layer_call_and_return_conditional_losses_276470Л978OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "3Ґ0
)К&
0€€€€€€€€€€€€€€€€€€А
Ъ ѕ
?__inference_gru_layer_call_and_return_conditional_losses_276623Л978OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p

 
™ "3Ґ0
)К&
0€€€€€€€€€€€€€€€€€€А
Ъ µ
?__inference_gru_layer_call_and_return_conditional_losses_276776r978?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p 

 
™ "*Ґ'
 К
0€€€€€€€€€
А
Ъ µ
?__inference_gru_layer_call_and_return_conditional_losses_276929r978?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p

 
™ "*Ґ'
 К
0€€€€€€€€€
А
Ъ ¶
$__inference_gru_layer_call_fn_276284~978OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "&К#€€€€€€€€€€€€€€€€€€А¶
$__inference_gru_layer_call_fn_276295~978OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p

 
™ "&К#€€€€€€€€€€€€€€€€€€АН
$__inference_gru_layer_call_fn_276306e978?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p 

 
™ "К€€€€€€€€€
АН
$__inference_gru_layer_call_fn_276317e978?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p

 
™ "К€€€€€€€€€
Аљ
H__inference_sequential_1_layer_call_and_return_conditional_losses_275539q978<:;56>Ґ;
4Ґ1
'К$
	gru_input€€€€€€€€€

p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ љ
H__inference_sequential_1_layer_call_and_return_conditional_losses_275564q978<:;56>Ґ;
4Ґ1
'К$
	gru_input€€€€€€€€€

p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ї
H__inference_sequential_1_layer_call_and_return_conditional_losses_275947n978<:;56;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€

p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ї
H__inference_sequential_1_layer_call_and_return_conditional_losses_276273n978<:;56;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€

p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Х
-__inference_sequential_1_layer_call_fn_275018d978<:;56>Ґ;
4Ґ1
'К$
	gru_input€€€€€€€€€

p 

 
™ "К€€€€€€€€€Х
-__inference_sequential_1_layer_call_fn_275514d978<:;56>Ґ;
4Ґ1
'К$
	gru_input€€€€€€€€€

p

 
™ "К€€€€€€€€€Т
-__inference_sequential_1_layer_call_fn_275614a978<:;56;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€

p 

 
™ "К€€€€€€€€€Т
-__inference_sequential_1_layer_call_fn_275635a978<:;56;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€

p

 
™ "К€€€€€€€€€Ђ
$__inference_signature_wrapper_275593В978<:;56CҐ@
Ґ 
9™6
4
	gru_input'К$
	gru_input€€€€€€€€€
"1™.
,
dense_1!К
dense_1€€€€€€€€€