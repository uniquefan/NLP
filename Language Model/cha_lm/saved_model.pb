Рг+
Лџ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
:
Less
x"T
y"T
z
"
Ttype:
2	
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
•
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
Њ
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
-
Tanh
x"T
y"T"
Ttype:

2
Т
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
Б
TensorListReserve
element_shape"
shape_type
num_elements

handle"
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
И"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718“Л*
Д
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*%
shared_nameembedding/embeddings
}
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes

:2*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ц*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	Ц*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
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
Г
gru/gru_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2¬*$
shared_namegru/gru_cell/kernel
|
'gru/gru_cell/kernel/Read/ReadVariableOpReadVariableOpgru/gru_cell/kernel*
_output_shapes
:	2¬*
dtype0
Ш
gru/gru_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ц¬*.
shared_namegru/gru_cell/recurrent_kernel
С
1gru/gru_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpgru/gru_cell/recurrent_kernel* 
_output_shapes
:
Ц¬*
dtype0

gru/gru_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¬*"
shared_namegru/gru_cell/bias
x
%gru/gru_cell/bias/Read/ReadVariableOpReadVariableOpgru/gru_cell/bias*
_output_shapes
:	¬*
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
Т
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*,
shared_nameAdam/embedding/embeddings/m
Л
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m*
_output_shapes

:2*
dtype0
Г
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ц*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	Ц*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
С
Adam/gru/gru_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2¬*+
shared_nameAdam/gru/gru_cell/kernel/m
К
.Adam/gru/gru_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/kernel/m*
_output_shapes
:	2¬*
dtype0
¶
$Adam/gru/gru_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ц¬*5
shared_name&$Adam/gru/gru_cell/recurrent_kernel/m
Я
8Adam/gru/gru_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp$Adam/gru/gru_cell/recurrent_kernel/m* 
_output_shapes
:
Ц¬*
dtype0
Н
Adam/gru/gru_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¬*)
shared_nameAdam/gru/gru_cell/bias/m
Ж
,Adam/gru/gru_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/bias/m*
_output_shapes
:	¬*
dtype0
Т
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*,
shared_nameAdam/embedding/embeddings/v
Л
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v*
_output_shapes

:2*
dtype0
Г
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ц*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	Ц*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0
С
Adam/gru/gru_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2¬*+
shared_nameAdam/gru/gru_cell/kernel/v
К
.Adam/gru/gru_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/kernel/v*
_output_shapes
:	2¬*
dtype0
¶
$Adam/gru/gru_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ц¬*5
shared_name&$Adam/gru/gru_cell/recurrent_kernel/v
Я
8Adam/gru/gru_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp$Adam/gru/gru_cell/recurrent_kernel/v* 
_output_shapes
:
Ц¬*
dtype0
Н
Adam/gru/gru_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¬*)
shared_nameAdam/gru/gru_cell/bias/v
Ж
,Adam/gru/gru_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/bias/v*
_output_shapes
:	¬*
dtype0

NoOpNoOp
 (
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Е(
valueы'Bш' Bс'
ж
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api
	
signatures
b


embeddings
trainable_variables
regularization_losses
	variables
	keras_api
l
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
ђ
iter

beta_1

beta_2
	decay
learning_rate
mLmMmN mO!mP"mQ
vRvSvT vU!vV"vW
*

0
 1
!2
"3
4
5
 
*

0
 1
!2
"3
4
5
≠
#metrics
$non_trainable_variables
%layer_metrics

&layers
'layer_regularization_losses
trainable_variables
regularization_losses
	variables
 
db
VARIABLE_VALUEembedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE


0
 


0
≠
(metrics
)non_trainable_variables
*layer_metrics

+layers
,layer_regularization_losses
trainable_variables
regularization_losses
	variables
~

 kernel
!recurrent_kernel
"bias
-trainable_variables
.regularization_losses
/	variables
0	keras_api
 

 0
!1
"2
 

 0
!1
"2
є
1metrics
2non_trainable_variables
3layer_metrics

4states

5layers
6layer_regularization_losses
trainable_variables
regularization_losses
	variables
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
≠
7metrics
8non_trainable_variables
9layer_metrics

:layers
;layer_regularization_losses
trainable_variables
regularization_losses
	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEgru/gru_cell/kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEgru/gru_cell/recurrent_kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEgru/gru_cell/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE

<0
=1
 
 

0
1
2
 
 
 
 
 
 

 0
!1
"2
 

 0
!1
"2
≠
>metrics
?non_trainable_variables
@layer_metrics

Alayers
Blayer_regularization_losses
-trainable_variables
.regularization_losses
/	variables
 
 
 
 

0
 
 
 
 
 
 
4
	Ctotal
	Dcount
E	variables
F	keras_api
D
	Gtotal
	Hcount
I
_fn_kwargs
J	variables
K	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

C0
D1

E	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

G0
H1

J	variables
ИЕ
VARIABLE_VALUEAdam/embedding/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/gru/gru_cell/kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUE$Adam/gru/gru_cell/recurrent_kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/gru/gru_cell/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUEAdam/embedding/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/gru/gru_cell/kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUE$Adam/gru/gru_cell/recurrent_kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/gru/gru_cell/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
В
serving_default_embedding_inputPlaceholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
Љ
StatefulPartitionedCallStatefulPartitionedCallserving_default_embedding_inputembedding/embeddingsgru/gru_cell/biasgru/gru_cell/kernelgru/gru_cell/recurrent_kerneldense/kernel
dense/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_58223
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
п

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp'gru/gru_cell/kernel/Read/ReadVariableOp1gru/gru_cell/recurrent_kernel/Read/ReadVariableOp%gru/gru_cell/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp.Adam/gru/gru_cell/kernel/m/Read/ReadVariableOp8Adam/gru/gru_cell/recurrent_kernel/m/Read/ReadVariableOp,Adam/gru/gru_cell/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp.Adam/gru/gru_cell/kernel/v/Read/ReadVariableOp8Adam/gru/gru_cell/recurrent_kernel/v/Read/ReadVariableOp,Adam/gru/gru_cell/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
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
GPU 2J 8В *'
f"R 
__inference__traced_save_60734
ќ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rategru/gru_cell/kernelgru/gru_cell/recurrent_kernelgru/gru_cell/biastotalcounttotal_1count_1Adam/embedding/embeddings/mAdam/dense/kernel/mAdam/dense/bias/mAdam/gru/gru_cell/kernel/m$Adam/gru/gru_cell/recurrent_kernel/mAdam/gru/gru_cell/bias/mAdam/embedding/embeddings/vAdam/dense/kernel/vAdam/dense/bias/vAdam/gru/gru_cell/kernel/v$Adam/gru/gru_cell/recurrent_kernel/vAdam/gru/gru_cell/bias/v*'
Tin 
2*
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
GPU 2J 8В **
f%R#
!__inference__traced_restore_60825—Ч)
Ќ
µ
#__inference_gru_layer_call_fn_59006

inputs
unknown:	¬
	unknown_0:	2¬
	unknown_1:
Ц¬
identityИҐStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Ц*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *G
fBR@
>__inference_gru_layer_call_and_return_conditional_losses_580732
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€Ц2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
ч
•
while_cond_57872
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_57872___redundant_placeholder03
/while_while_cond_57872___redundant_placeholder13
/while_while_cond_57872___redundant_placeholder23
/while_while_cond_57872___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :€€€€€€€€€Ц: ::::: 
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
:€€€€€€€€€Ц:

_output_shapes
: :

_output_shapes
:
ч
•
while_cond_60129
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_60129___redundant_placeholder03
/while_while_cond_60129___redundant_placeholder13
/while_while_cond_60129___redundant_placeholder23
/while_while_cond_60129___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :€€€€€€€€€Ц: ::::: 
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
:€€€€€€€€€Ц:

_output_shapes
: :

_output_shapes
:
Кn
К
C__inference_gru_cell_layer_call_and_return_conditional_losses_56708

inputs

states*
readvariableop_resource:	¬,
readvariableop_1_resource:	2¬-
readvariableop_4_resource:
Ц¬
identity

identity_1ИҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2ҐReadVariableOp_3ҐReadVariableOp_4ҐReadVariableOp_5ҐReadVariableOp_6X
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
ones_like/ConstД
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
	ones_like\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
ones_like_1/ConstН
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
ones_like_1y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	¬*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:¬:¬*	
num2	
unstack_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
mulc
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
mul_1c
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
mul_2
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
ReadVariableOp_1{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2€
strided_sliceStridedSliceReadVariableOp_1:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
strided_slicen
MatMulMatMulmul:z:0strided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
MatMul
ReadVariableOp_2ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
ReadVariableOp_2
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2
strided_slice_1/stackГ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_1/stack_1Г
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2Й
strided_slice_1StridedSliceReadVariableOp_2:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
strided_slice_1v
MatMul_1MatMul	mul_1:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2

MatMul_1
ReadVariableOp_3ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
ReadVariableOp_3
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_2/stackГ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stack_1Г
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2Й
strided_slice_2StridedSliceReadVariableOp_3:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
strided_slice_2v
MatMul_2MatMul	mul_2:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2

MatMul_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack}
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2н
strided_slice_3StridedSliceunstack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
strided_slice_3|
BiasAddBiasAddMatMul:product:0strided_slice_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2	
BiasAddy
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2
strided_slice_4/stack}
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
strided_slice_4/stack_1|
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_2џ
strided_slice_4StridedSliceunstack:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
strided_slice_4В
	BiasAdd_1BiasAddMatMul_1:product:0strided_slice_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	BiasAdd_1y
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2
strided_slice_5/stack|
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_5/stack_1|
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_2л
strided_slice_5StridedSliceunstack:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
strided_slice_5В
	BiasAdd_2BiasAddMatMul_2:product:0strided_slice_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	BiasAdd_2f
mul_3Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_3f
mul_4Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_4f
mul_5Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_5А
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
ReadVariableOp_4
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stackГ
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2
strided_slice_6/stack_1Г
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2К
strided_slice_6StridedSliceReadVariableOp_4:value:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
strided_slice_6v
MatMul_3MatMul	mul_3:z:0strided_slice_6:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2

MatMul_3А
ReadVariableOp_5ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
ReadVariableOp_5
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2
strided_slice_7/stackГ
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_7/stack_1Г
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2К
strided_slice_7StridedSliceReadVariableOp_5:value:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
strided_slice_7v
MatMul_4MatMul	mul_4:z:0strided_slice_7:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2

MatMul_4x
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_8/stack}
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2
strided_slice_8/stack_1|
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_8/stack_2н
strided_slice_8StridedSliceunstack:output:1strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
strided_slice_8В
	BiasAdd_3BiasAddMatMul_3:product:0strided_slice_8:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	BiasAdd_3y
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2
strided_slice_9/stack}
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
strided_slice_9/stack_1|
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_9/stack_2џ
strided_slice_9StridedSliceunstack:output:1strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
strided_slice_9В
	BiasAdd_4BiasAddMatMul_4:product:0strided_slice_9:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	BiasAdd_4l
addAddV2BiasAdd:output:0BiasAdd_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2	
Sigmoidr
add_1AddV2BiasAdd_1:output:0BiasAdd_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	Sigmoid_1А
ReadVariableOp_6ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
ReadVariableOp_6Б
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_10/stackЕ
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_10/stack_1Е
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_10/stack_2П
strided_slice_10StridedSliceReadVariableOp_6:value:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
strided_slice_10w
MatMul_5MatMul	mul_5:z:0strided_slice_10:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2

MatMul_5{
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2
strided_slice_11/stack~
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_11/stack_1~
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_11/stack_2р
strided_slice_11StridedSliceunstack:output:1strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
strided_slice_11Г
	BiasAdd_5BiasAddMatMul_5:product:0strided_slice_11:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	BiasAdd_5k
mul_6MulSigmoid_1:y:0BiasAdd_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_6i
add_2AddV2BiasAdd_2:output:0	mul_6:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
Tanh]
mul_7MulSigmoid:y:0states*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_7S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
sub[
mul_8Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_8`
add_3AddV2	mul_7:z:0	mul_8:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
add_3б
IdentityIdentity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6*
T0*(
_output_shapes
:€€€€€€€€€Ц2

Identityе

Identity_1Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6*
T0*(
_output_shapes
:€€€€€€€€€Ц2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€2:€€€€€€€€€Ц: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52$
ReadVariableOp_6ReadVariableOp_6:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€Ц
 
_user_specified_namestates
ƒъ
“
while_body_59468
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	¬=
*while_gru_cell_readvariableop_1_resource_0:	2¬>
*while_gru_cell_readvariableop_4_resource_0:
Ц¬
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	¬;
(while_gru_cell_readvariableop_1_resource:	2¬<
(while_gru_cell_readvariableop_4_resource:
Ц¬ИҐwhile/gru_cell/ReadVariableOpҐwhile/gru_cell/ReadVariableOp_1Ґwhile/gru_cell/ReadVariableOp_2Ґwhile/gru_cell/ReadVariableOp_3Ґwhile/gru_cell/ReadVariableOp_4Ґwhile/gru_cell/ReadVariableOp_5Ґwhile/gru_cell/ReadVariableOp_6√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem†
while/gru_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2 
while/gru_cell/ones_like/ShapeЕ
while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2 
while/gru_cell/ones_like/Constј
while/gru_cell/ones_likeFill'while/gru_cell/ones_like/Shape:output:0'while/gru_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/ones_likeБ
while/gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
while/gru_cell/dropout/Constї
while/gru_cell/dropout/MulMul!while/gru_cell/ones_like:output:0%while/gru_cell/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/dropout/MulН
while/gru_cell/dropout/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2
while/gru_cell/dropout/ShapeА
3while/gru_cell/dropout/random_uniform/RandomUniformRandomUniform%while/gru_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2€€™25
3while/gru_cell/dropout/random_uniform/RandomUniformУ
%while/gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2'
%while/gru_cell/dropout/GreaterEqual/yъ
#while/gru_cell/dropout/GreaterEqualGreaterEqual<while/gru_cell/dropout/random_uniform/RandomUniform:output:0.while/gru_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22%
#while/gru_cell/dropout/GreaterEqualђ
while/gru_cell/dropout/CastCast'while/gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/dropout/Castґ
while/gru_cell/dropout/Mul_1Mulwhile/gru_cell/dropout/Mul:z:0while/gru_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/dropout/Mul_1Е
while/gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2 
while/gru_cell/dropout_1/ConstЅ
while/gru_cell/dropout_1/MulMul!while/gru_cell/ones_like:output:0'while/gru_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/dropout_1/MulС
while/gru_cell/dropout_1/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_1/ShapeЖ
5while/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2ў√Й27
5while/gru_cell/dropout_1/random_uniform/RandomUniformЧ
'while/gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2)
'while/gru_cell/dropout_1/GreaterEqual/yВ
%while/gru_cell/dropout_1/GreaterEqualGreaterEqual>while/gru_cell/dropout_1/random_uniform/RandomUniform:output:00while/gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22'
%while/gru_cell/dropout_1/GreaterEqual≤
while/gru_cell/dropout_1/CastCast)while/gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/dropout_1/CastЊ
while/gru_cell/dropout_1/Mul_1Mul while/gru_cell/dropout_1/Mul:z:0!while/gru_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22 
while/gru_cell/dropout_1/Mul_1Е
while/gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2 
while/gru_cell/dropout_2/ConstЅ
while/gru_cell/dropout_2/MulMul!while/gru_cell/ones_like:output:0'while/gru_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/dropout_2/MulС
while/gru_cell/dropout_2/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_2/ShapeЖ
5while/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2ЦэН27
5while/gru_cell/dropout_2/random_uniform/RandomUniformЧ
'while/gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2)
'while/gru_cell/dropout_2/GreaterEqual/yВ
%while/gru_cell/dropout_2/GreaterEqualGreaterEqual>while/gru_cell/dropout_2/random_uniform/RandomUniform:output:00while/gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22'
%while/gru_cell/dropout_2/GreaterEqual≤
while/gru_cell/dropout_2/CastCast)while/gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/dropout_2/CastЊ
while/gru_cell/dropout_2/Mul_1Mul while/gru_cell/dropout_2/Mul:z:0!while/gru_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22 
while/gru_cell/dropout_2/Mul_1З
 while/gru_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2"
 while/gru_cell/ones_like_1/ShapeЙ
 while/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2"
 while/gru_cell/ones_like_1/Const…
while/gru_cell/ones_like_1Fill)while/gru_cell/ones_like_1/Shape:output:0)while/gru_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/ones_like_1Е
while/gru_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2 
while/gru_cell/dropout_3/Constƒ
while/gru_cell/dropout_3/MulMul#while/gru_cell/ones_like_1:output:0'while/gru_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/dropout_3/MulУ
while/gru_cell/dropout_3/ShapeShape#while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_3/ShapeЖ
5while/gru_cell/dropout_3/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2џА27
5while/gru_cell/dropout_3/random_uniform/RandomUniformЧ
'while/gru_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2)
'while/gru_cell/dropout_3/GreaterEqual/yГ
%while/gru_cell/dropout_3/GreaterEqualGreaterEqual>while/gru_cell/dropout_3/random_uniform/RandomUniform:output:00while/gru_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2'
%while/gru_cell/dropout_3/GreaterEqual≥
while/gru_cell/dropout_3/CastCast)while/gru_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/dropout_3/Castњ
while/gru_cell/dropout_3/Mul_1Mul while/gru_cell/dropout_3/Mul:z:0!while/gru_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2 
while/gru_cell/dropout_3/Mul_1Е
while/gru_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2 
while/gru_cell/dropout_4/Constƒ
while/gru_cell/dropout_4/MulMul#while/gru_cell/ones_like_1:output:0'while/gru_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/dropout_4/MulУ
while/gru_cell/dropout_4/ShapeShape#while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_4/ShapeЗ
5while/gru_cell/dropout_4/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2ЪтБ27
5while/gru_cell/dropout_4/random_uniform/RandomUniformЧ
'while/gru_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2)
'while/gru_cell/dropout_4/GreaterEqual/yГ
%while/gru_cell/dropout_4/GreaterEqualGreaterEqual>while/gru_cell/dropout_4/random_uniform/RandomUniform:output:00while/gru_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2'
%while/gru_cell/dropout_4/GreaterEqual≥
while/gru_cell/dropout_4/CastCast)while/gru_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/dropout_4/Castњ
while/gru_cell/dropout_4/Mul_1Mul while/gru_cell/dropout_4/Mul:z:0!while/gru_cell/dropout_4/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2 
while/gru_cell/dropout_4/Mul_1Е
while/gru_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2 
while/gru_cell/dropout_5/Constƒ
while/gru_cell/dropout_5/MulMul#while/gru_cell/ones_like_1:output:0'while/gru_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/dropout_5/MulУ
while/gru_cell/dropout_5/ShapeShape#while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_5/ShapeЗ
5while/gru_cell/dropout_5/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2„Юь27
5while/gru_cell/dropout_5/random_uniform/RandomUniformЧ
'while/gru_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2)
'while/gru_cell/dropout_5/GreaterEqual/yГ
%while/gru_cell/dropout_5/GreaterEqualGreaterEqual>while/gru_cell/dropout_5/random_uniform/RandomUniform:output:00while/gru_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2'
%while/gru_cell/dropout_5/GreaterEqual≥
while/gru_cell/dropout_5/CastCast)while/gru_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/dropout_5/Castњ
while/gru_cell/dropout_5/Mul_1Mul while/gru_cell/dropout_5/Mul:z:0!while/gru_cell/dropout_5/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2 
while/gru_cell/dropout_5/Mul_1®
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	¬*
dtype02
while/gru_cell/ReadVariableOpЩ
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:¬:¬*	
num2
while/gru_cell/unstackµ
while/gru_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/gru_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/mulї
while/gru_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/gru_cell/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/mul_1ї
while/gru_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/gru_cell/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/mul_2Ѓ
while/gru_cell/ReadVariableOp_1ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02!
while/gru_cell/ReadVariableOp_1Щ
"while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"while/gru_cell/strided_slice/stackЭ
$while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2&
$while/gru_cell/strided_slice/stack_1Э
$while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$while/gru_cell/strided_slice/stack_2ў
while/gru_cell/strided_sliceStridedSlice'while/gru_cell/ReadVariableOp_1:value:0+while/gru_cell/strided_slice/stack:output:0-while/gru_cell/strided_slice/stack_1:output:0-while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
while/gru_cell/strided_slice™
while/gru_cell/MatMulMatMulwhile/gru_cell/mul:z:0%while/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMulЃ
while/gru_cell/ReadVariableOp_2ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02!
while/gru_cell/ReadVariableOp_2Э
$while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2&
$while/gru_cell/strided_slice_1/stack°
&while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2(
&while/gru_cell/strided_slice_1/stack_1°
&while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_1/stack_2г
while/gru_cell/strided_slice_1StridedSlice'while/gru_cell/ReadVariableOp_2:value:0-while/gru_cell/strided_slice_1/stack:output:0/while/gru_cell/strided_slice_1/stack_1:output:0/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_1≤
while/gru_cell/MatMul_1MatMulwhile/gru_cell/mul_1:z:0'while/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_1Ѓ
while/gru_cell/ReadVariableOp_3ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02!
while/gru_cell/ReadVariableOp_3Э
$while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2&
$while/gru_cell/strided_slice_2/stack°
&while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell/strided_slice_2/stack_1°
&while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_2/stack_2г
while/gru_cell/strided_slice_2StridedSlice'while/gru_cell/ReadVariableOp_3:value:0-while/gru_cell/strided_slice_2/stack:output:0/while/gru_cell/strided_slice_2/stack_1:output:0/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_2≤
while/gru_cell/MatMul_2MatMulwhile/gru_cell/mul_2:z:0'while/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_2Ц
$while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_3/stackЫ
&while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2(
&while/gru_cell/strided_slice_3/stack_1Ъ
&while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_3/stack_2«
while/gru_cell/strided_slice_3StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_3/stack:output:0/while/gru_cell/strided_slice_3/stack_1:output:0/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2 
while/gru_cell/strided_slice_3Є
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0'while/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAddЧ
$while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2&
$while/gru_cell/strided_slice_4/stackЫ
&while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2(
&while/gru_cell/strided_slice_4/stack_1Ъ
&while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_4/stack_2µ
while/gru_cell/strided_slice_4StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_4/stack:output:0/while/gru_cell/strided_slice_4/stack_1:output:0/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2 
while/gru_cell/strided_slice_4Њ
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0'while/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_1Ч
$while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2&
$while/gru_cell/strided_slice_5/stackЪ
&while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell/strided_slice_5/stack_1Ъ
&while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_5/stack_2≈
while/gru_cell/strided_slice_5StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_5/stack:output:0/while/gru_cell/strided_slice_5/stack_1:output:0/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2 
while/gru_cell/strided_slice_5Њ
while/gru_cell/BiasAdd_2BiasAdd!while/gru_cell/MatMul_2:product:0'while/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_2Я
while/gru_cell/mul_3Mulwhile_placeholder_2"while/gru_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_3Я
while/gru_cell/mul_4Mulwhile_placeholder_2"while/gru_cell/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_4Я
while/gru_cell/mul_5Mulwhile_placeholder_2"while/gru_cell/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_5ѓ
while/gru_cell/ReadVariableOp_4ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02!
while/gru_cell/ReadVariableOp_4Э
$while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell/strided_slice_6/stack°
&while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2(
&while/gru_cell/strided_slice_6/stack_1°
&while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_6/stack_2д
while/gru_cell/strided_slice_6StridedSlice'while/gru_cell/ReadVariableOp_4:value:0-while/gru_cell/strided_slice_6/stack:output:0/while/gru_cell/strided_slice_6/stack_1:output:0/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_6≤
while/gru_cell/MatMul_3MatMulwhile/gru_cell/mul_3:z:0'while/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_3ѓ
while/gru_cell/ReadVariableOp_5ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02!
while/gru_cell/ReadVariableOp_5Э
$while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2&
$while/gru_cell/strided_slice_7/stack°
&while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2(
&while/gru_cell/strided_slice_7/stack_1°
&while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_7/stack_2д
while/gru_cell/strided_slice_7StridedSlice'while/gru_cell/ReadVariableOp_5:value:0-while/gru_cell/strided_slice_7/stack:output:0/while/gru_cell/strided_slice_7/stack_1:output:0/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_7≤
while/gru_cell/MatMul_4MatMulwhile/gru_cell/mul_4:z:0'while/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_4Ц
$while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_8/stackЫ
&while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2(
&while/gru_cell/strided_slice_8/stack_1Ъ
&while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_8/stack_2«
while/gru_cell/strided_slice_8StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_8/stack:output:0/while/gru_cell/strided_slice_8/stack_1:output:0/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2 
while/gru_cell/strided_slice_8Њ
while/gru_cell/BiasAdd_3BiasAdd!while/gru_cell/MatMul_3:product:0'while/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_3Ч
$while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2&
$while/gru_cell/strided_slice_9/stackЫ
&while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2(
&while/gru_cell/strided_slice_9/stack_1Ъ
&while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_9/stack_2µ
while/gru_cell/strided_slice_9StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_9/stack:output:0/while/gru_cell/strided_slice_9/stack_1:output:0/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2 
while/gru_cell/strided_slice_9Њ
while/gru_cell/BiasAdd_4BiasAdd!while/gru_cell/MatMul_4:product:0'while/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_4®
while/gru_cell/addAddV2while/gru_cell/BiasAdd:output:0!while/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/addЖ
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/SigmoidЃ
while/gru_cell/add_1AddV2!while/gru_cell/BiasAdd_1:output:0!while/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/add_1М
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/Sigmoid_1ѓ
while/gru_cell/ReadVariableOp_6ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02!
while/gru_cell/ReadVariableOp_6Я
%while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2'
%while/gru_cell/strided_slice_10/stack£
'while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/gru_cell/strided_slice_10/stack_1£
'while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell/strided_slice_10/stack_2й
while/gru_cell/strided_slice_10StridedSlice'while/gru_cell/ReadVariableOp_6:value:0.while/gru_cell/strided_slice_10/stack:output:00while/gru_cell/strided_slice_10/stack_1:output:00while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2!
while/gru_cell/strided_slice_10≥
while/gru_cell/MatMul_5MatMulwhile/gru_cell/mul_5:z:0(while/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_5Щ
%while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2'
%while/gru_cell/strided_slice_11/stackЬ
'while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'while/gru_cell/strided_slice_11/stack_1Ь
'while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'while/gru_cell/strided_slice_11/stack_2 
while/gru_cell/strided_slice_11StridedSlicewhile/gru_cell/unstack:output:1.while/gru_cell/strided_slice_11/stack:output:00while/gru_cell/strided_slice_11/stack_1:output:00while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2!
while/gru_cell/strided_slice_11њ
while/gru_cell/BiasAdd_5BiasAdd!while/gru_cell/MatMul_5:product:0(while/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_5І
while/gru_cell/mul_6Mulwhile/gru_cell/Sigmoid_1:y:0!while/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_6•
while/gru_cell/add_2AddV2!while/gru_cell/BiasAdd_2:output:0while/gru_cell/mul_6:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/add_2
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/TanhЧ
while/gru_cell/mul_7Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_7q
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/gru_cell/sub/xЭ
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/subЧ
while/gru_cell/mul_8Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_8Ь
while/gru_cell/add_3AddV2while/gru_cell/mul_7:z:0while/gru_cell/mul_8:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/add_3№
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1 
while/IdentityIdentitywhile/add_1:z:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/IdentityЁ
while/Identity_1Identitywhile_while_maximum_iterations^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/Identity_1ћ
while/Identity_2Identitywhile/add:z:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/Identity_2щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/Identity_3й
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/Identity_4"V
(while_gru_cell_readvariableop_1_resource*while_gru_cell_readvariableop_1_resource_0"V
(while_gru_cell_readvariableop_4_resource*while_gru_cell_readvariableop_4_resource_0"R
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
&: : : : :€€€€€€€€€Ц: : : : : 2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp2B
while/gru_cell/ReadVariableOp_1while/gru_cell/ReadVariableOp_12B
while/gru_cell/ReadVariableOp_2while/gru_cell/ReadVariableOp_22B
while/gru_cell/ReadVariableOp_3while/gru_cell/ReadVariableOp_32B
while/gru_cell/ReadVariableOp_4while/gru_cell/ReadVariableOp_42B
while/gru_cell/ReadVariableOp_5while/gru_cell/ReadVariableOp_52B
while/gru_cell/ReadVariableOp_6while/gru_cell/ReadVariableOp_6: 
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
:€€€€€€€€€Ц:

_output_shapes
: :

_output_shapes
: 
ч
•
while_cond_57477
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_57477___redundant_placeholder03
/while_while_cond_57477___redundant_placeholder13
/while_while_cond_57477___redundant_placeholder23
/while_while_cond_57477___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :€€€€€€€€€Ц: ::::: 
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
:€€€€€€€€€Ц:

_output_shapes
: :

_output_shapes
:
е
Ј
#__inference_gru_layer_call_fn_58984
inputs_0
unknown:	¬
	unknown_0:	2¬
	unknown_1:
Ц¬
identityИҐStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Ц*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *G
fBR@
>__inference_gru_layer_call_and_return_conditional_losses_570932
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€Ц2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
"
_user_specified_name
inputs/0
О"
Ы
while_body_57029
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0)
while_gru_cell_57051_0:	¬)
while_gru_cell_57053_0:	2¬*
while_gru_cell_57055_0:
Ц¬
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor'
while_gru_cell_57051:	¬'
while_gru_cell_57053:	2¬(
while_gru_cell_57055:
Ц¬ИҐ&while/gru_cell/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЭ
&while/gru_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_57051_0while_gru_cell_57053_0while_gru_cell_57055_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€Ц:€€€€€€€€€Ц*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_gru_cell_layer_call_and_return_conditional_losses_569622(
&while/gru_cell/StatefulPartitionedCallу
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder/while/gru_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1З
while/IdentityIdentitywhile/add_1:z:0'^while/gru_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЪ
while/Identity_1Identitywhile_while_maximum_iterations'^while/gru_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Й
while/Identity_2Identitywhile/add:z:0'^while/gru_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2ґ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/gru_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3љ
while/Identity_4Identity/while/gru_cell/StatefulPartitionedCall:output:1'^while/gru_cell/StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/Identity_4".
while_gru_cell_57051while_gru_cell_57051_0".
while_gru_cell_57053while_gru_cell_57053_0".
while_gru_cell_57055while_gru_cell_57055_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :€€€€€€€€€Ц: : : : : 2P
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
:€€€€€€€€€Ц:

_output_shapes
: :

_output_shapes
: 
м
с
gru_while_cond_58737$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2&
"gru_while_less_gru_strided_slice_1;
7gru_while_gru_while_cond_58737___redundant_placeholder0;
7gru_while_gru_while_cond_58737___redundant_placeholder1;
7gru_while_gru_while_cond_58737___redundant_placeholder2;
7gru_while_gru_while_cond_58737___redundant_placeholder3
gru_while_identity
Д
gru/while/LessLessgru_while_placeholder"gru_while_less_gru_strided_slice_1*
T0*
_output_shapes
: 2
gru/while/Lessi
gru/while/IdentityIdentitygru/while/Less:z:0*
T0
*
_output_shapes
: 2
gru/while/Identity"1
gru_while_identitygru/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :€€€€€€€€€Ц: ::::: 
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
:€€€€€€€€€Ц:

_output_shapes
: :

_output_shapes
:
¶Ј
Ћ
>__inference_gru_layer_call_and_return_conditional_losses_59951

inputs3
 gru_cell_readvariableop_resource:	¬5
"gru_cell_readvariableop_1_resource:	2¬6
"gru_cell_readvariableop_4_resource:
Ц¬
identityИҐgru_cell/ReadVariableOpҐgru_cell/ReadVariableOp_1Ґgru_cell/ReadVariableOp_2Ґgru_cell/ReadVariableOp_3Ґgru_cell/ReadVariableOp_4Ґgru_cell/ReadVariableOp_5Ґgru_cell/ReadVariableOp_6ҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ц2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ц2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_mask2
strided_slice_2|
gru_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like/Shapey
gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru_cell/ones_like/Const®
gru_cell/ones_likeFill!gru_cell/ones_like/Shape:output:0!gru_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/ones_likev
gru_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like_1/Shape}
gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru_cell/ones_like_1/Const±
gru_cell/ones_like_1Fill#gru_cell/ones_like_1/Shape:output:0#gru_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/ones_like_1Ф
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	¬*
dtype02
gru_cell/ReadVariableOpЗ
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:¬:¬*	
num2
gru_cell/unstackМ
gru_cell/mulMulstrided_slice_2:output:0gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/mulР
gru_cell/mul_1Mulstrided_slice_2:output:0gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/mul_1Р
gru_cell/mul_2Mulstrided_slice_2:output:0gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/mul_2Ъ
gru_cell/ReadVariableOp_1ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru_cell/ReadVariableOp_1Н
gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
gru_cell/strided_slice/stackС
gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2 
gru_cell/strided_slice/stack_1С
gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2 
gru_cell/strided_slice/stack_2µ
gru_cell/strided_sliceStridedSlice!gru_cell/ReadVariableOp_1:value:0%gru_cell/strided_slice/stack:output:0'gru_cell/strided_slice/stack_1:output:0'gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru_cell/strided_sliceТ
gru_cell/MatMulMatMulgru_cell/mul:z:0gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMulЪ
gru_cell/ReadVariableOp_2ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru_cell/ReadVariableOp_2С
gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2 
gru_cell/strided_slice_1/stackХ
 gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2"
 gru_cell/strided_slice_1/stack_1Х
 gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_1/stack_2њ
gru_cell/strided_slice_1StridedSlice!gru_cell/ReadVariableOp_2:value:0'gru_cell/strided_slice_1/stack:output:0)gru_cell/strided_slice_1/stack_1:output:0)gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru_cell/strided_slice_1Ъ
gru_cell/MatMul_1MatMulgru_cell/mul_1:z:0!gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_1Ъ
gru_cell/ReadVariableOp_3ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru_cell/ReadVariableOp_3С
gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2 
gru_cell/strided_slice_2/stackХ
 gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell/strided_slice_2/stack_1Х
 gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_2/stack_2њ
gru_cell/strided_slice_2StridedSlice!gru_cell/ReadVariableOp_3:value:0'gru_cell/strided_slice_2/stack:output:0)gru_cell/strided_slice_2/stack_1:output:0)gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru_cell/strided_slice_2Ъ
gru_cell/MatMul_2MatMulgru_cell/mul_2:z:0!gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_2К
gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_3/stackП
 gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2"
 gru_cell/strided_slice_3/stack_1О
 gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_3/stack_2£
gru_cell/strided_slice_3StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_3/stack:output:0)gru_cell/strided_slice_3/stack_1:output:0)gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
gru_cell/strided_slice_3†
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0!gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAddЛ
gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2 
gru_cell/strided_slice_4/stackП
 gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gru_cell/strided_slice_4/stack_1О
 gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_4/stack_2С
gru_cell/strided_slice_4StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_4/stack:output:0)gru_cell/strided_slice_4/stack_1:output:0)gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
gru_cell/strided_slice_4¶
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0!gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_1Л
gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gru_cell/strided_slice_5/stackО
 gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell/strided_slice_5/stack_1О
 gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_5/stack_2°
gru_cell/strided_slice_5StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_5/stack:output:0)gru_cell/strided_slice_5/stack_1:output:0)gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
gru_cell/strided_slice_5¶
gru_cell/BiasAdd_2BiasAddgru_cell/MatMul_2:product:0!gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_2Й
gru_cell/mul_3Mulzeros:output:0gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_3Й
gru_cell/mul_4Mulzeros:output:0gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_4Й
gru_cell/mul_5Mulzeros:output:0gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_5Ы
gru_cell/ReadVariableOp_4ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru_cell/ReadVariableOp_4С
gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell/strided_slice_6/stackХ
 gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2"
 gru_cell/strided_slice_6/stack_1Х
 gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_6/stack_2ј
gru_cell/strided_slice_6StridedSlice!gru_cell/ReadVariableOp_4:value:0'gru_cell/strided_slice_6/stack:output:0)gru_cell/strided_slice_6/stack_1:output:0)gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru_cell/strided_slice_6Ъ
gru_cell/MatMul_3MatMulgru_cell/mul_3:z:0!gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_3Ы
gru_cell/ReadVariableOp_5ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru_cell/ReadVariableOp_5С
gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2 
gru_cell/strided_slice_7/stackХ
 gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2"
 gru_cell/strided_slice_7/stack_1Х
 gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_7/stack_2ј
gru_cell/strided_slice_7StridedSlice!gru_cell/ReadVariableOp_5:value:0'gru_cell/strided_slice_7/stack:output:0)gru_cell/strided_slice_7/stack_1:output:0)gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru_cell/strided_slice_7Ъ
gru_cell/MatMul_4MatMulgru_cell/mul_4:z:0!gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_4К
gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_8/stackП
 gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2"
 gru_cell/strided_slice_8/stack_1О
 gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_8/stack_2£
gru_cell/strided_slice_8StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_8/stack:output:0)gru_cell/strided_slice_8/stack_1:output:0)gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
gru_cell/strided_slice_8¶
gru_cell/BiasAdd_3BiasAddgru_cell/MatMul_3:product:0!gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_3Л
gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2 
gru_cell/strided_slice_9/stackП
 gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gru_cell/strided_slice_9/stack_1О
 gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_9/stack_2С
gru_cell/strided_slice_9StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_9/stack:output:0)gru_cell/strided_slice_9/stack_1:output:0)gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
gru_cell/strided_slice_9¶
gru_cell/BiasAdd_4BiasAddgru_cell/MatMul_4:product:0!gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_4Р
gru_cell/addAddV2gru_cell/BiasAdd:output:0gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/addt
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/SigmoidЦ
gru_cell/add_1AddV2gru_cell/BiasAdd_1:output:0gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/add_1z
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/Sigmoid_1Ы
gru_cell/ReadVariableOp_6ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru_cell/ReadVariableOp_6У
gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2!
gru_cell/strided_slice_10/stackЧ
!gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!gru_cell/strided_slice_10/stack_1Ч
!gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell/strided_slice_10/stack_2≈
gru_cell/strided_slice_10StridedSlice!gru_cell/ReadVariableOp_6:value:0(gru_cell/strided_slice_10/stack:output:0*gru_cell/strided_slice_10/stack_1:output:0*gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru_cell/strided_slice_10Ы
gru_cell/MatMul_5MatMulgru_cell/mul_5:z:0"gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_5Н
gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gru_cell/strided_slice_11/stackР
!gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2#
!gru_cell/strided_slice_11/stack_1Р
!gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!gru_cell/strided_slice_11/stack_2¶
gru_cell/strided_slice_11StridedSlicegru_cell/unstack:output:1(gru_cell/strided_slice_11/stack:output:0*gru_cell/strided_slice_11/stack_1:output:0*gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
gru_cell/strided_slice_11І
gru_cell/BiasAdd_5BiasAddgru_cell/MatMul_5:product:0"gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_5П
gru_cell/mul_6Mulgru_cell/Sigmoid_1:y:0gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_6Н
gru_cell/add_2AddV2gru_cell/BiasAdd_2:output:0gru_cell/mul_6:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/add_2m
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/TanhА
gru_cell/mul_7Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_7e
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru_cell/sub/xЕ
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/sub
gru_cell/mul_8Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_8Д
gru_cell/add_3AddV2gru_cell/mul_7:z:0gru_cell/mul_8:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€Ц   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterХ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource"gru_cell_readvariableop_1_resource"gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€Ц: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_59799*
condR
while_cond_59798*9
output_shapes(
&: : : : :€€€€€€€€€Ц: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€Ц   22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€Ц*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€Ц2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЈ
IdentityIdentitystrided_slice_3:output:0^gru_cell/ReadVariableOp^gru_cell/ReadVariableOp_1^gru_cell/ReadVariableOp_2^gru_cell/ReadVariableOp_3^gru_cell/ReadVariableOp_4^gru_cell/ReadVariableOp_5^gru_cell/ReadVariableOp_6^while*
T0*(
_output_shapes
:€€€€€€€€€Ц2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€2: : : 22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp26
gru_cell/ReadVariableOp_1gru_cell/ReadVariableOp_126
gru_cell/ReadVariableOp_2gru_cell/ReadVariableOp_226
gru_cell/ReadVariableOp_3gru_cell/ReadVariableOp_326
gru_cell/ReadVariableOp_4gru_cell/ReadVariableOp_426
gru_cell/ReadVariableOp_5gru_cell/ReadVariableOp_526
gru_cell/ReadVariableOp_6gru_cell/ReadVariableOp_62
whilewhile:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
і

т
@__inference_dense_layer_call_and_return_conditional_losses_60350

inputs1
matmul_readvariableop_resource:	Ц-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ц*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€Ц: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€Ц
 
_user_specified_nameinputs
Ќ
€
E__inference_sequential_layer_call_and_return_conditional_losses_57656

inputs!
embedding_57345:2
	gru_57631:	¬
	gru_57633:	2¬
	gru_57635:
Ц¬
dense_57650:	Ц
dense_57652:
identityИҐdense/StatefulPartitionedCallҐ!embedding/StatefulPartitionedCallҐgru/StatefulPartitionedCallЗ
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_57345*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_573442#
!embedding/StatefulPartitionedCall™
gru/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0	gru_57631	gru_57633	gru_57635*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Ц*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *G
fBR@
>__inference_gru_layer_call_and_return_conditional_losses_576302
gru/StatefulPartitionedCall†
dense/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_57650dense_57652*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_576492
dense/StatefulPartitionedCall№
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^gru/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Шn
М
C__inference_gru_cell_layer_call_and_return_conditional_losses_60480

inputs
states_0*
readvariableop_resource:	¬,
readvariableop_1_resource:	2¬-
readvariableop_4_resource:
Ц¬
identity

identity_1ИҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2ҐReadVariableOp_3ҐReadVariableOp_4ҐReadVariableOp_5ҐReadVariableOp_6X
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
ones_like/ConstД
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
	ones_like^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
ones_like_1/ConstН
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
ones_like_1y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	¬*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:¬:¬*	
num2	
unstack_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
mulc
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
mul_1c
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
mul_2
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
ReadVariableOp_1{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2€
strided_sliceStridedSliceReadVariableOp_1:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
strided_slicen
MatMulMatMulmul:z:0strided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
MatMul
ReadVariableOp_2ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
ReadVariableOp_2
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2
strided_slice_1/stackГ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_1/stack_1Г
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2Й
strided_slice_1StridedSliceReadVariableOp_2:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
strided_slice_1v
MatMul_1MatMul	mul_1:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2

MatMul_1
ReadVariableOp_3ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
ReadVariableOp_3
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_2/stackГ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stack_1Г
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2Й
strided_slice_2StridedSliceReadVariableOp_3:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
strided_slice_2v
MatMul_2MatMul	mul_2:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2

MatMul_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack}
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2н
strided_slice_3StridedSliceunstack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
strided_slice_3|
BiasAddBiasAddMatMul:product:0strided_slice_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2	
BiasAddy
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2
strided_slice_4/stack}
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
strided_slice_4/stack_1|
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_2џ
strided_slice_4StridedSliceunstack:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
strided_slice_4В
	BiasAdd_1BiasAddMatMul_1:product:0strided_slice_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	BiasAdd_1y
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2
strided_slice_5/stack|
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_5/stack_1|
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_2л
strided_slice_5StridedSliceunstack:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
strided_slice_5В
	BiasAdd_2BiasAddMatMul_2:product:0strided_slice_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	BiasAdd_2h
mul_3Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_3h
mul_4Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_4h
mul_5Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_5А
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
ReadVariableOp_4
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stackГ
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2
strided_slice_6/stack_1Г
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2К
strided_slice_6StridedSliceReadVariableOp_4:value:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
strided_slice_6v
MatMul_3MatMul	mul_3:z:0strided_slice_6:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2

MatMul_3А
ReadVariableOp_5ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
ReadVariableOp_5
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2
strided_slice_7/stackГ
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_7/stack_1Г
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2К
strided_slice_7StridedSliceReadVariableOp_5:value:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
strided_slice_7v
MatMul_4MatMul	mul_4:z:0strided_slice_7:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2

MatMul_4x
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_8/stack}
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2
strided_slice_8/stack_1|
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_8/stack_2н
strided_slice_8StridedSliceunstack:output:1strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
strided_slice_8В
	BiasAdd_3BiasAddMatMul_3:product:0strided_slice_8:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	BiasAdd_3y
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2
strided_slice_9/stack}
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
strided_slice_9/stack_1|
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_9/stack_2џ
strided_slice_9StridedSliceunstack:output:1strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
strided_slice_9В
	BiasAdd_4BiasAddMatMul_4:product:0strided_slice_9:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	BiasAdd_4l
addAddV2BiasAdd:output:0BiasAdd_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2	
Sigmoidr
add_1AddV2BiasAdd_1:output:0BiasAdd_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	Sigmoid_1А
ReadVariableOp_6ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
ReadVariableOp_6Б
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_10/stackЕ
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_10/stack_1Е
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_10/stack_2П
strided_slice_10StridedSliceReadVariableOp_6:value:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
strided_slice_10w
MatMul_5MatMul	mul_5:z:0strided_slice_10:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2

MatMul_5{
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2
strided_slice_11/stack~
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_11/stack_1~
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_11/stack_2р
strided_slice_11StridedSliceunstack:output:1strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
strided_slice_11Г
	BiasAdd_5BiasAddMatMul_5:product:0strided_slice_11:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	BiasAdd_5k
mul_6MulSigmoid_1:y:0BiasAdd_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_6i
add_2AddV2BiasAdd_2:output:0	mul_6:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
Tanh_
mul_7MulSigmoid:y:0states_0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_7S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
sub[
mul_8Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_8`
add_3AddV2	mul_7:z:0	mul_8:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
add_3б
IdentityIdentity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6*
T0*(
_output_shapes
:€€€€€€€€€Ц2

Identityе

Identity_1Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6*
T0*(
_output_shapes
:€€€€€€€€€Ц2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€2:€€€€€€€€€Ц: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52$
ReadVariableOp_6ReadVariableOp_6:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€Ц
"
_user_specified_name
states/0
Ёu
Ё
!__inference__traced_restore_60825
file_prefix7
%assignvariableop_embedding_embeddings:22
assignvariableop_1_dense_kernel:	Ц+
assignvariableop_2_dense_bias:&
assignvariableop_3_adam_iter:	 (
assignvariableop_4_adam_beta_1: (
assignvariableop_5_adam_beta_2: '
assignvariableop_6_adam_decay: /
%assignvariableop_7_adam_learning_rate: 9
&assignvariableop_8_gru_gru_cell_kernel:	2¬D
0assignvariableop_9_gru_gru_cell_recurrent_kernel:
Ц¬8
%assignvariableop_10_gru_gru_cell_bias:	¬#
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: A
/assignvariableop_15_adam_embedding_embeddings_m:2:
'assignvariableop_16_adam_dense_kernel_m:	Ц3
%assignvariableop_17_adam_dense_bias_m:A
.assignvariableop_18_adam_gru_gru_cell_kernel_m:	2¬L
8assignvariableop_19_adam_gru_gru_cell_recurrent_kernel_m:
Ц¬?
,assignvariableop_20_adam_gru_gru_cell_bias_m:	¬A
/assignvariableop_21_adam_embedding_embeddings_v:2:
'assignvariableop_22_adam_dense_kernel_v:	Ц3
%assignvariableop_23_adam_dense_bias_v:A
.assignvariableop_24_adam_gru_gru_cell_kernel_v:	2¬L
8assignvariableop_25_adam_gru_gru_cell_recurrent_kernel_v:
Ц¬?
,assignvariableop_26_adam_gru_gru_cell_bias_v:	¬
identity_28ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9ф
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*А
valueцBуB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names∆
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЄ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Д
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity§
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1§
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ґ
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_3°
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4£
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5£
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ґ
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7™
AssignVariableOp_7AssignVariableOp%assignvariableop_7_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ђ
AssignVariableOp_8AssignVariableOp&assignvariableop_8_gru_gru_cell_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9µ
AssignVariableOp_9AssignVariableOp0assignvariableop_9_gru_gru_cell_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10≠
AssignVariableOp_10AssignVariableOp%assignvariableop_10_gru_gru_cell_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11°
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12°
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13£
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14£
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ј
AssignVariableOp_15AssignVariableOp/assignvariableop_15_adam_embedding_embeddings_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16ѓ
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_dense_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17≠
AssignVariableOp_17AssignVariableOp%assignvariableop_17_adam_dense_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18ґ
AssignVariableOp_18AssignVariableOp.assignvariableop_18_adam_gru_gru_cell_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19ј
AssignVariableOp_19AssignVariableOp8assignvariableop_19_adam_gru_gru_cell_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20і
AssignVariableOp_20AssignVariableOp,assignvariableop_20_adam_gru_gru_cell_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Ј
AssignVariableOp_21AssignVariableOp/assignvariableop_21_adam_embedding_embeddings_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22ѓ
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23≠
AssignVariableOp_23AssignVariableOp%assignvariableop_23_adam_dense_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24ґ
AssignVariableOp_24AssignVariableOp.assignvariableop_24_adam_gru_gru_cell_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25ј
AssignVariableOp_25AssignVariableOp8assignvariableop_25_adam_gru_gru_cell_recurrent_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26і
AssignVariableOp_26AssignVariableOp,assignvariableop_26_adam_gru_gru_cell_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp∞
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27£
Identity_28IdentityIdentity_27:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_28"#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
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
Ќ
€
E__inference_sequential_layer_call_and_return_conditional_losses_58128

inputs!
embedding_58112:2
	gru_58115:	¬
	gru_58117:	2¬
	gru_58119:
Ц¬
dense_58122:	Ц
dense_58124:
identityИҐdense/StatefulPartitionedCallҐ!embedding/StatefulPartitionedCallҐgru/StatefulPartitionedCallЗ
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_58112*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_573442#
!embedding/StatefulPartitionedCall™
gru/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0	gru_58115	gru_58117	gru_58119*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Ц*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *G
fBR@
>__inference_gru_layer_call_and_return_conditional_losses_580732
gru/StatefulPartitionedCall†
dense/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_58122dense_58124*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_576492
dense/StatefulPartitionedCall№
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^gru/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ѓ

Ў
(__inference_gru_cell_layer_call_fn_60364

inputs
states_0
unknown:	¬
	unknown_0:	2¬
	unknown_1:
Ц¬
identity

identity_1ИҐStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€Ц:€€€€€€€€€Ц*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_gru_cell_layer_call_and_return_conditional_losses_567082
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€Ц2

IdentityУ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€Ц2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€2:€€€€€€€€€Ц: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€Ц
"
_user_specified_name
states/0
Ѓ

Ў
(__inference_gru_cell_layer_call_fn_60378

inputs
states_0
unknown:	¬
	unknown_0:	2¬
	unknown_1:
Ц¬
identity

identity_1ИҐStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€Ц:€€€€€€€€€Ц*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_gru_cell_layer_call_and_return_conditional_losses_569622
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€Ц2

IdentityУ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€Ц2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€2:€€€€€€€€€Ц: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€Ц
"
_user_specified_name
states/0
ж≤
“
while_body_59799
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	¬=
*while_gru_cell_readvariableop_1_resource_0:	2¬>
*while_gru_cell_readvariableop_4_resource_0:
Ц¬
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	¬;
(while_gru_cell_readvariableop_1_resource:	2¬<
(while_gru_cell_readvariableop_4_resource:
Ц¬ИҐwhile/gru_cell/ReadVariableOpҐwhile/gru_cell/ReadVariableOp_1Ґwhile/gru_cell/ReadVariableOp_2Ґwhile/gru_cell/ReadVariableOp_3Ґwhile/gru_cell/ReadVariableOp_4Ґwhile/gru_cell/ReadVariableOp_5Ґwhile/gru_cell/ReadVariableOp_6√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem†
while/gru_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2 
while/gru_cell/ones_like/ShapeЕ
while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2 
while/gru_cell/ones_like/Constј
while/gru_cell/ones_likeFill'while/gru_cell/ones_like/Shape:output:0'while/gru_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/ones_likeЗ
 while/gru_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2"
 while/gru_cell/ones_like_1/ShapeЙ
 while/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2"
 while/gru_cell/ones_like_1/Const…
while/gru_cell/ones_like_1Fill)while/gru_cell/ones_like_1/Shape:output:0)while/gru_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/ones_like_1®
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	¬*
dtype02
while/gru_cell/ReadVariableOpЩ
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:¬:¬*	
num2
while/gru_cell/unstackґ
while/gru_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/mulЇ
while/gru_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/mul_1Ї
while/gru_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/mul_2Ѓ
while/gru_cell/ReadVariableOp_1ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02!
while/gru_cell/ReadVariableOp_1Щ
"while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"while/gru_cell/strided_slice/stackЭ
$while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2&
$while/gru_cell/strided_slice/stack_1Э
$while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$while/gru_cell/strided_slice/stack_2ў
while/gru_cell/strided_sliceStridedSlice'while/gru_cell/ReadVariableOp_1:value:0+while/gru_cell/strided_slice/stack:output:0-while/gru_cell/strided_slice/stack_1:output:0-while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
while/gru_cell/strided_slice™
while/gru_cell/MatMulMatMulwhile/gru_cell/mul:z:0%while/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMulЃ
while/gru_cell/ReadVariableOp_2ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02!
while/gru_cell/ReadVariableOp_2Э
$while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2&
$while/gru_cell/strided_slice_1/stack°
&while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2(
&while/gru_cell/strided_slice_1/stack_1°
&while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_1/stack_2г
while/gru_cell/strided_slice_1StridedSlice'while/gru_cell/ReadVariableOp_2:value:0-while/gru_cell/strided_slice_1/stack:output:0/while/gru_cell/strided_slice_1/stack_1:output:0/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_1≤
while/gru_cell/MatMul_1MatMulwhile/gru_cell/mul_1:z:0'while/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_1Ѓ
while/gru_cell/ReadVariableOp_3ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02!
while/gru_cell/ReadVariableOp_3Э
$while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2&
$while/gru_cell/strided_slice_2/stack°
&while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell/strided_slice_2/stack_1°
&while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_2/stack_2г
while/gru_cell/strided_slice_2StridedSlice'while/gru_cell/ReadVariableOp_3:value:0-while/gru_cell/strided_slice_2/stack:output:0/while/gru_cell/strided_slice_2/stack_1:output:0/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_2≤
while/gru_cell/MatMul_2MatMulwhile/gru_cell/mul_2:z:0'while/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_2Ц
$while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_3/stackЫ
&while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2(
&while/gru_cell/strided_slice_3/stack_1Ъ
&while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_3/stack_2«
while/gru_cell/strided_slice_3StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_3/stack:output:0/while/gru_cell/strided_slice_3/stack_1:output:0/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2 
while/gru_cell/strided_slice_3Є
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0'while/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAddЧ
$while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2&
$while/gru_cell/strided_slice_4/stackЫ
&while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2(
&while/gru_cell/strided_slice_4/stack_1Ъ
&while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_4/stack_2µ
while/gru_cell/strided_slice_4StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_4/stack:output:0/while/gru_cell/strided_slice_4/stack_1:output:0/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2 
while/gru_cell/strided_slice_4Њ
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0'while/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_1Ч
$while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2&
$while/gru_cell/strided_slice_5/stackЪ
&while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell/strided_slice_5/stack_1Ъ
&while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_5/stack_2≈
while/gru_cell/strided_slice_5StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_5/stack:output:0/while/gru_cell/strided_slice_5/stack_1:output:0/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2 
while/gru_cell/strided_slice_5Њ
while/gru_cell/BiasAdd_2BiasAdd!while/gru_cell/MatMul_2:product:0'while/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_2†
while/gru_cell/mul_3Mulwhile_placeholder_2#while/gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_3†
while/gru_cell/mul_4Mulwhile_placeholder_2#while/gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_4†
while/gru_cell/mul_5Mulwhile_placeholder_2#while/gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_5ѓ
while/gru_cell/ReadVariableOp_4ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02!
while/gru_cell/ReadVariableOp_4Э
$while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell/strided_slice_6/stack°
&while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2(
&while/gru_cell/strided_slice_6/stack_1°
&while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_6/stack_2д
while/gru_cell/strided_slice_6StridedSlice'while/gru_cell/ReadVariableOp_4:value:0-while/gru_cell/strided_slice_6/stack:output:0/while/gru_cell/strided_slice_6/stack_1:output:0/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_6≤
while/gru_cell/MatMul_3MatMulwhile/gru_cell/mul_3:z:0'while/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_3ѓ
while/gru_cell/ReadVariableOp_5ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02!
while/gru_cell/ReadVariableOp_5Э
$while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2&
$while/gru_cell/strided_slice_7/stack°
&while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2(
&while/gru_cell/strided_slice_7/stack_1°
&while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_7/stack_2д
while/gru_cell/strided_slice_7StridedSlice'while/gru_cell/ReadVariableOp_5:value:0-while/gru_cell/strided_slice_7/stack:output:0/while/gru_cell/strided_slice_7/stack_1:output:0/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_7≤
while/gru_cell/MatMul_4MatMulwhile/gru_cell/mul_4:z:0'while/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_4Ц
$while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_8/stackЫ
&while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2(
&while/gru_cell/strided_slice_8/stack_1Ъ
&while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_8/stack_2«
while/gru_cell/strided_slice_8StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_8/stack:output:0/while/gru_cell/strided_slice_8/stack_1:output:0/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2 
while/gru_cell/strided_slice_8Њ
while/gru_cell/BiasAdd_3BiasAdd!while/gru_cell/MatMul_3:product:0'while/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_3Ч
$while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2&
$while/gru_cell/strided_slice_9/stackЫ
&while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2(
&while/gru_cell/strided_slice_9/stack_1Ъ
&while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_9/stack_2µ
while/gru_cell/strided_slice_9StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_9/stack:output:0/while/gru_cell/strided_slice_9/stack_1:output:0/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2 
while/gru_cell/strided_slice_9Њ
while/gru_cell/BiasAdd_4BiasAdd!while/gru_cell/MatMul_4:product:0'while/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_4®
while/gru_cell/addAddV2while/gru_cell/BiasAdd:output:0!while/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/addЖ
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/SigmoidЃ
while/gru_cell/add_1AddV2!while/gru_cell/BiasAdd_1:output:0!while/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/add_1М
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/Sigmoid_1ѓ
while/gru_cell/ReadVariableOp_6ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02!
while/gru_cell/ReadVariableOp_6Я
%while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2'
%while/gru_cell/strided_slice_10/stack£
'while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/gru_cell/strided_slice_10/stack_1£
'while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell/strided_slice_10/stack_2й
while/gru_cell/strided_slice_10StridedSlice'while/gru_cell/ReadVariableOp_6:value:0.while/gru_cell/strided_slice_10/stack:output:00while/gru_cell/strided_slice_10/stack_1:output:00while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2!
while/gru_cell/strided_slice_10≥
while/gru_cell/MatMul_5MatMulwhile/gru_cell/mul_5:z:0(while/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_5Щ
%while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2'
%while/gru_cell/strided_slice_11/stackЬ
'while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'while/gru_cell/strided_slice_11/stack_1Ь
'while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'while/gru_cell/strided_slice_11/stack_2 
while/gru_cell/strided_slice_11StridedSlicewhile/gru_cell/unstack:output:1.while/gru_cell/strided_slice_11/stack:output:00while/gru_cell/strided_slice_11/stack_1:output:00while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2!
while/gru_cell/strided_slice_11њ
while/gru_cell/BiasAdd_5BiasAdd!while/gru_cell/MatMul_5:product:0(while/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_5І
while/gru_cell/mul_6Mulwhile/gru_cell/Sigmoid_1:y:0!while/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_6•
while/gru_cell/add_2AddV2!while/gru_cell/BiasAdd_2:output:0while/gru_cell/mul_6:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/add_2
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/TanhЧ
while/gru_cell/mul_7Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_7q
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/gru_cell/sub/xЭ
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/subЧ
while/gru_cell/mul_8Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_8Ь
while/gru_cell/add_3AddV2while/gru_cell/mul_7:z:0while/gru_cell/mul_8:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/add_3№
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1 
while/IdentityIdentitywhile/add_1:z:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/IdentityЁ
while/Identity_1Identitywhile_while_maximum_iterations^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/Identity_1ћ
while/Identity_2Identitywhile/add:z:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/Identity_2щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/Identity_3й
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/Identity_4"V
(while_gru_cell_readvariableop_1_resource*while_gru_cell_readvariableop_1_resource_0"V
(while_gru_cell_readvariableop_4_resource*while_gru_cell_readvariableop_4_resource_0"R
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
&: : : : :€€€€€€€€€Ц: : : : : 2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp2B
while/gru_cell/ReadVariableOp_1while/gru_cell/ReadVariableOp_12B
while/gru_cell/ReadVariableOp_2while/gru_cell/ReadVariableOp_22B
while/gru_cell/ReadVariableOp_3while/gru_cell/ReadVariableOp_32B
while/gru_cell/ReadVariableOp_4while/gru_cell/ReadVariableOp_42B
while/gru_cell/ReadVariableOp_5while/gru_cell/ReadVariableOp_52B
while/gru_cell/ReadVariableOp_6while/gru_cell/ReadVariableOp_6: 
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
:€€€€€€€€€Ц:

_output_shapes
: :

_output_shapes
: 
З§
К
C__inference_gru_cell_layer_call_and_return_conditional_losses_56962

inputs

states*
readvariableop_resource:	¬,
readvariableop_1_resource:	2¬-
readvariableop_4_resource:
Ц¬
identity

identity_1ИҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2ҐReadVariableOp_3ҐReadVariableOp_4ҐReadVariableOp_5ҐReadVariableOp_6X
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
ones_like/ConstД
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape“
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2ЫЇ	2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_1/ConstЕ
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/ShapeЎ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2афO2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout_1/GreaterEqual/y∆
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
dropout_1/GreaterEqualЕ
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
dropout_1/CastВ
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_2/ConstЕ
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/ShapeЎ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2±§*2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout_2/GreaterEqual/y∆
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
dropout_2/GreaterEqualЕ
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
dropout_2/CastВ
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
dropout_2/Mul_1\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
ones_like_1/ConstН
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
ones_like_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_3/ConstИ
dropout_3/MulMulones_like_1:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
dropout_3/Mulf
dropout_3/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_3/ShapeЏ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2ГѓШ2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout_3/GreaterEqual/y«
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
dropout_3/GreaterEqualЖ
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
dropout_3/CastГ
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
dropout_3/Mul_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_4/ConstИ
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/ShapeЏ
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2ЉѓЂ2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout_4/GreaterEqual/y«
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
dropout_4/GreaterEqualЖ
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
dropout_4/CastГ
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_5/ConstИ
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/ShapeЏ
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2≤ЌЎ2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout_5/GreaterEqual/y«
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
dropout_5/GreaterEqualЖ
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
dropout_5/CastГ
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
dropout_5/Mul_1y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	¬*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:¬:¬*	
num2	
unstack^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
muld
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
mul_1d
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
mul_2
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
ReadVariableOp_1{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2€
strided_sliceStridedSliceReadVariableOp_1:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
strided_slicen
MatMulMatMulmul:z:0strided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
MatMul
ReadVariableOp_2ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
ReadVariableOp_2
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2
strided_slice_1/stackГ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_1/stack_1Г
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2Й
strided_slice_1StridedSliceReadVariableOp_2:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
strided_slice_1v
MatMul_1MatMul	mul_1:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2

MatMul_1
ReadVariableOp_3ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
ReadVariableOp_3
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_2/stackГ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stack_1Г
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2Й
strided_slice_2StridedSliceReadVariableOp_3:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
strided_slice_2v
MatMul_2MatMul	mul_2:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2

MatMul_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack}
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2н
strided_slice_3StridedSliceunstack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
strided_slice_3|
BiasAddBiasAddMatMul:product:0strided_slice_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2	
BiasAddy
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2
strided_slice_4/stack}
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
strided_slice_4/stack_1|
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_2џ
strided_slice_4StridedSliceunstack:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
strided_slice_4В
	BiasAdd_1BiasAddMatMul_1:product:0strided_slice_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	BiasAdd_1y
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2
strided_slice_5/stack|
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_5/stack_1|
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_2л
strided_slice_5StridedSliceunstack:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
strided_slice_5В
	BiasAdd_2BiasAddMatMul_2:product:0strided_slice_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	BiasAdd_2e
mul_3Mulstatesdropout_3/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_3e
mul_4Mulstatesdropout_4/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_4e
mul_5Mulstatesdropout_5/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_5А
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
ReadVariableOp_4
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stackГ
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2
strided_slice_6/stack_1Г
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2К
strided_slice_6StridedSliceReadVariableOp_4:value:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
strided_slice_6v
MatMul_3MatMul	mul_3:z:0strided_slice_6:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2

MatMul_3А
ReadVariableOp_5ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
ReadVariableOp_5
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2
strided_slice_7/stackГ
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_7/stack_1Г
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2К
strided_slice_7StridedSliceReadVariableOp_5:value:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
strided_slice_7v
MatMul_4MatMul	mul_4:z:0strided_slice_7:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2

MatMul_4x
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_8/stack}
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2
strided_slice_8/stack_1|
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_8/stack_2н
strided_slice_8StridedSliceunstack:output:1strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
strided_slice_8В
	BiasAdd_3BiasAddMatMul_3:product:0strided_slice_8:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	BiasAdd_3y
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2
strided_slice_9/stack}
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
strided_slice_9/stack_1|
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_9/stack_2џ
strided_slice_9StridedSliceunstack:output:1strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
strided_slice_9В
	BiasAdd_4BiasAddMatMul_4:product:0strided_slice_9:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	BiasAdd_4l
addAddV2BiasAdd:output:0BiasAdd_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2	
Sigmoidr
add_1AddV2BiasAdd_1:output:0BiasAdd_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	Sigmoid_1А
ReadVariableOp_6ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
ReadVariableOp_6Б
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_10/stackЕ
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_10/stack_1Е
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_10/stack_2П
strided_slice_10StridedSliceReadVariableOp_6:value:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
strided_slice_10w
MatMul_5MatMul	mul_5:z:0strided_slice_10:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2

MatMul_5{
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2
strided_slice_11/stack~
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_11/stack_1~
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_11/stack_2р
strided_slice_11StridedSliceunstack:output:1strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
strided_slice_11Г
	BiasAdd_5BiasAddMatMul_5:product:0strided_slice_11:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	BiasAdd_5k
mul_6MulSigmoid_1:y:0BiasAdd_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_6i
add_2AddV2BiasAdd_2:output:0	mul_6:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
Tanh]
mul_7MulSigmoid:y:0states*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_7S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
sub[
mul_8Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_8`
add_3AddV2	mul_7:z:0	mul_8:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
add_3б
IdentityIdentity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6*
T0*(
_output_shapes
:€€€€€€€€€Ц2

Identityе

Identity_1Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6*
T0*(
_output_shapes
:€€€€€€€€€Ц2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€2:€€€€€€€€€Ц: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52$
ReadVariableOp_6ReadVariableOp_6:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€Ц
 
_user_specified_namestates
ƒъ
“
while_body_60130
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	¬=
*while_gru_cell_readvariableop_1_resource_0:	2¬>
*while_gru_cell_readvariableop_4_resource_0:
Ц¬
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	¬;
(while_gru_cell_readvariableop_1_resource:	2¬<
(while_gru_cell_readvariableop_4_resource:
Ц¬ИҐwhile/gru_cell/ReadVariableOpҐwhile/gru_cell/ReadVariableOp_1Ґwhile/gru_cell/ReadVariableOp_2Ґwhile/gru_cell/ReadVariableOp_3Ґwhile/gru_cell/ReadVariableOp_4Ґwhile/gru_cell/ReadVariableOp_5Ґwhile/gru_cell/ReadVariableOp_6√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem†
while/gru_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2 
while/gru_cell/ones_like/ShapeЕ
while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2 
while/gru_cell/ones_like/Constј
while/gru_cell/ones_likeFill'while/gru_cell/ones_like/Shape:output:0'while/gru_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/ones_likeБ
while/gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
while/gru_cell/dropout/Constї
while/gru_cell/dropout/MulMul!while/gru_cell/ones_like:output:0%while/gru_cell/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/dropout/MulН
while/gru_cell/dropout/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2
while/gru_cell/dropout/ShapeА
3while/gru_cell/dropout/random_uniform/RandomUniformRandomUniform%while/gru_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2пщґ25
3while/gru_cell/dropout/random_uniform/RandomUniformУ
%while/gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2'
%while/gru_cell/dropout/GreaterEqual/yъ
#while/gru_cell/dropout/GreaterEqualGreaterEqual<while/gru_cell/dropout/random_uniform/RandomUniform:output:0.while/gru_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22%
#while/gru_cell/dropout/GreaterEqualђ
while/gru_cell/dropout/CastCast'while/gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/dropout/Castґ
while/gru_cell/dropout/Mul_1Mulwhile/gru_cell/dropout/Mul:z:0while/gru_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/dropout/Mul_1Е
while/gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2 
while/gru_cell/dropout_1/ConstЅ
while/gru_cell/dropout_1/MulMul!while/gru_cell/ones_like:output:0'while/gru_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/dropout_1/MulС
while/gru_cell/dropout_1/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_1/ShapeЖ
5while/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2тЎ©27
5while/gru_cell/dropout_1/random_uniform/RandomUniformЧ
'while/gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2)
'while/gru_cell/dropout_1/GreaterEqual/yВ
%while/gru_cell/dropout_1/GreaterEqualGreaterEqual>while/gru_cell/dropout_1/random_uniform/RandomUniform:output:00while/gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22'
%while/gru_cell/dropout_1/GreaterEqual≤
while/gru_cell/dropout_1/CastCast)while/gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/dropout_1/CastЊ
while/gru_cell/dropout_1/Mul_1Mul while/gru_cell/dropout_1/Mul:z:0!while/gru_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22 
while/gru_cell/dropout_1/Mul_1Е
while/gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2 
while/gru_cell/dropout_2/ConstЅ
while/gru_cell/dropout_2/MulMul!while/gru_cell/ones_like:output:0'while/gru_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/dropout_2/MulС
while/gru_cell/dropout_2/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_2/ShapeЕ
5while/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2≥уb27
5while/gru_cell/dropout_2/random_uniform/RandomUniformЧ
'while/gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2)
'while/gru_cell/dropout_2/GreaterEqual/yВ
%while/gru_cell/dropout_2/GreaterEqualGreaterEqual>while/gru_cell/dropout_2/random_uniform/RandomUniform:output:00while/gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22'
%while/gru_cell/dropout_2/GreaterEqual≤
while/gru_cell/dropout_2/CastCast)while/gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/dropout_2/CastЊ
while/gru_cell/dropout_2/Mul_1Mul while/gru_cell/dropout_2/Mul:z:0!while/gru_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22 
while/gru_cell/dropout_2/Mul_1З
 while/gru_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2"
 while/gru_cell/ones_like_1/ShapeЙ
 while/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2"
 while/gru_cell/ones_like_1/Const…
while/gru_cell/ones_like_1Fill)while/gru_cell/ones_like_1/Shape:output:0)while/gru_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/ones_like_1Е
while/gru_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2 
while/gru_cell/dropout_3/Constƒ
while/gru_cell/dropout_3/MulMul#while/gru_cell/ones_like_1:output:0'while/gru_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/dropout_3/MulУ
while/gru_cell/dropout_3/ShapeShape#while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_3/ShapeЗ
5while/gru_cell/dropout_3/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2”ї”27
5while/gru_cell/dropout_3/random_uniform/RandomUniformЧ
'while/gru_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2)
'while/gru_cell/dropout_3/GreaterEqual/yГ
%while/gru_cell/dropout_3/GreaterEqualGreaterEqual>while/gru_cell/dropout_3/random_uniform/RandomUniform:output:00while/gru_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2'
%while/gru_cell/dropout_3/GreaterEqual≥
while/gru_cell/dropout_3/CastCast)while/gru_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/dropout_3/Castњ
while/gru_cell/dropout_3/Mul_1Mul while/gru_cell/dropout_3/Mul:z:0!while/gru_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2 
while/gru_cell/dropout_3/Mul_1Е
while/gru_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2 
while/gru_cell/dropout_4/Constƒ
while/gru_cell/dropout_4/MulMul#while/gru_cell/ones_like_1:output:0'while/gru_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/dropout_4/MulУ
while/gru_cell/dropout_4/ShapeShape#while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_4/ShapeЗ
5while/gru_cell/dropout_4/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2Нь–27
5while/gru_cell/dropout_4/random_uniform/RandomUniformЧ
'while/gru_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2)
'while/gru_cell/dropout_4/GreaterEqual/yГ
%while/gru_cell/dropout_4/GreaterEqualGreaterEqual>while/gru_cell/dropout_4/random_uniform/RandomUniform:output:00while/gru_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2'
%while/gru_cell/dropout_4/GreaterEqual≥
while/gru_cell/dropout_4/CastCast)while/gru_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/dropout_4/Castњ
while/gru_cell/dropout_4/Mul_1Mul while/gru_cell/dropout_4/Mul:z:0!while/gru_cell/dropout_4/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2 
while/gru_cell/dropout_4/Mul_1Е
while/gru_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2 
while/gru_cell/dropout_5/Constƒ
while/gru_cell/dropout_5/MulMul#while/gru_cell/ones_like_1:output:0'while/gru_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/dropout_5/MulУ
while/gru_cell/dropout_5/ShapeShape#while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_5/ShapeЗ
5while/gru_cell/dropout_5/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2уЎЮ27
5while/gru_cell/dropout_5/random_uniform/RandomUniformЧ
'while/gru_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2)
'while/gru_cell/dropout_5/GreaterEqual/yГ
%while/gru_cell/dropout_5/GreaterEqualGreaterEqual>while/gru_cell/dropout_5/random_uniform/RandomUniform:output:00while/gru_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2'
%while/gru_cell/dropout_5/GreaterEqual≥
while/gru_cell/dropout_5/CastCast)while/gru_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/dropout_5/Castњ
while/gru_cell/dropout_5/Mul_1Mul while/gru_cell/dropout_5/Mul:z:0!while/gru_cell/dropout_5/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2 
while/gru_cell/dropout_5/Mul_1®
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	¬*
dtype02
while/gru_cell/ReadVariableOpЩ
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:¬:¬*	
num2
while/gru_cell/unstackµ
while/gru_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/gru_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/mulї
while/gru_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/gru_cell/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/mul_1ї
while/gru_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/gru_cell/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/mul_2Ѓ
while/gru_cell/ReadVariableOp_1ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02!
while/gru_cell/ReadVariableOp_1Щ
"while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"while/gru_cell/strided_slice/stackЭ
$while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2&
$while/gru_cell/strided_slice/stack_1Э
$while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$while/gru_cell/strided_slice/stack_2ў
while/gru_cell/strided_sliceStridedSlice'while/gru_cell/ReadVariableOp_1:value:0+while/gru_cell/strided_slice/stack:output:0-while/gru_cell/strided_slice/stack_1:output:0-while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
while/gru_cell/strided_slice™
while/gru_cell/MatMulMatMulwhile/gru_cell/mul:z:0%while/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMulЃ
while/gru_cell/ReadVariableOp_2ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02!
while/gru_cell/ReadVariableOp_2Э
$while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2&
$while/gru_cell/strided_slice_1/stack°
&while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2(
&while/gru_cell/strided_slice_1/stack_1°
&while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_1/stack_2г
while/gru_cell/strided_slice_1StridedSlice'while/gru_cell/ReadVariableOp_2:value:0-while/gru_cell/strided_slice_1/stack:output:0/while/gru_cell/strided_slice_1/stack_1:output:0/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_1≤
while/gru_cell/MatMul_1MatMulwhile/gru_cell/mul_1:z:0'while/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_1Ѓ
while/gru_cell/ReadVariableOp_3ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02!
while/gru_cell/ReadVariableOp_3Э
$while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2&
$while/gru_cell/strided_slice_2/stack°
&while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell/strided_slice_2/stack_1°
&while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_2/stack_2г
while/gru_cell/strided_slice_2StridedSlice'while/gru_cell/ReadVariableOp_3:value:0-while/gru_cell/strided_slice_2/stack:output:0/while/gru_cell/strided_slice_2/stack_1:output:0/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_2≤
while/gru_cell/MatMul_2MatMulwhile/gru_cell/mul_2:z:0'while/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_2Ц
$while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_3/stackЫ
&while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2(
&while/gru_cell/strided_slice_3/stack_1Ъ
&while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_3/stack_2«
while/gru_cell/strided_slice_3StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_3/stack:output:0/while/gru_cell/strided_slice_3/stack_1:output:0/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2 
while/gru_cell/strided_slice_3Є
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0'while/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAddЧ
$while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2&
$while/gru_cell/strided_slice_4/stackЫ
&while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2(
&while/gru_cell/strided_slice_4/stack_1Ъ
&while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_4/stack_2µ
while/gru_cell/strided_slice_4StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_4/stack:output:0/while/gru_cell/strided_slice_4/stack_1:output:0/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2 
while/gru_cell/strided_slice_4Њ
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0'while/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_1Ч
$while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2&
$while/gru_cell/strided_slice_5/stackЪ
&while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell/strided_slice_5/stack_1Ъ
&while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_5/stack_2≈
while/gru_cell/strided_slice_5StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_5/stack:output:0/while/gru_cell/strided_slice_5/stack_1:output:0/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2 
while/gru_cell/strided_slice_5Њ
while/gru_cell/BiasAdd_2BiasAdd!while/gru_cell/MatMul_2:product:0'while/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_2Я
while/gru_cell/mul_3Mulwhile_placeholder_2"while/gru_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_3Я
while/gru_cell/mul_4Mulwhile_placeholder_2"while/gru_cell/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_4Я
while/gru_cell/mul_5Mulwhile_placeholder_2"while/gru_cell/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_5ѓ
while/gru_cell/ReadVariableOp_4ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02!
while/gru_cell/ReadVariableOp_4Э
$while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell/strided_slice_6/stack°
&while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2(
&while/gru_cell/strided_slice_6/stack_1°
&while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_6/stack_2д
while/gru_cell/strided_slice_6StridedSlice'while/gru_cell/ReadVariableOp_4:value:0-while/gru_cell/strided_slice_6/stack:output:0/while/gru_cell/strided_slice_6/stack_1:output:0/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_6≤
while/gru_cell/MatMul_3MatMulwhile/gru_cell/mul_3:z:0'while/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_3ѓ
while/gru_cell/ReadVariableOp_5ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02!
while/gru_cell/ReadVariableOp_5Э
$while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2&
$while/gru_cell/strided_slice_7/stack°
&while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2(
&while/gru_cell/strided_slice_7/stack_1°
&while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_7/stack_2д
while/gru_cell/strided_slice_7StridedSlice'while/gru_cell/ReadVariableOp_5:value:0-while/gru_cell/strided_slice_7/stack:output:0/while/gru_cell/strided_slice_7/stack_1:output:0/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_7≤
while/gru_cell/MatMul_4MatMulwhile/gru_cell/mul_4:z:0'while/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_4Ц
$while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_8/stackЫ
&while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2(
&while/gru_cell/strided_slice_8/stack_1Ъ
&while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_8/stack_2«
while/gru_cell/strided_slice_8StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_8/stack:output:0/while/gru_cell/strided_slice_8/stack_1:output:0/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2 
while/gru_cell/strided_slice_8Њ
while/gru_cell/BiasAdd_3BiasAdd!while/gru_cell/MatMul_3:product:0'while/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_3Ч
$while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2&
$while/gru_cell/strided_slice_9/stackЫ
&while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2(
&while/gru_cell/strided_slice_9/stack_1Ъ
&while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_9/stack_2µ
while/gru_cell/strided_slice_9StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_9/stack:output:0/while/gru_cell/strided_slice_9/stack_1:output:0/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2 
while/gru_cell/strided_slice_9Њ
while/gru_cell/BiasAdd_4BiasAdd!while/gru_cell/MatMul_4:product:0'while/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_4®
while/gru_cell/addAddV2while/gru_cell/BiasAdd:output:0!while/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/addЖ
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/SigmoidЃ
while/gru_cell/add_1AddV2!while/gru_cell/BiasAdd_1:output:0!while/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/add_1М
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/Sigmoid_1ѓ
while/gru_cell/ReadVariableOp_6ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02!
while/gru_cell/ReadVariableOp_6Я
%while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2'
%while/gru_cell/strided_slice_10/stack£
'while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/gru_cell/strided_slice_10/stack_1£
'while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell/strided_slice_10/stack_2й
while/gru_cell/strided_slice_10StridedSlice'while/gru_cell/ReadVariableOp_6:value:0.while/gru_cell/strided_slice_10/stack:output:00while/gru_cell/strided_slice_10/stack_1:output:00while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2!
while/gru_cell/strided_slice_10≥
while/gru_cell/MatMul_5MatMulwhile/gru_cell/mul_5:z:0(while/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_5Щ
%while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2'
%while/gru_cell/strided_slice_11/stackЬ
'while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'while/gru_cell/strided_slice_11/stack_1Ь
'while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'while/gru_cell/strided_slice_11/stack_2 
while/gru_cell/strided_slice_11StridedSlicewhile/gru_cell/unstack:output:1.while/gru_cell/strided_slice_11/stack:output:00while/gru_cell/strided_slice_11/stack_1:output:00while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2!
while/gru_cell/strided_slice_11њ
while/gru_cell/BiasAdd_5BiasAdd!while/gru_cell/MatMul_5:product:0(while/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_5І
while/gru_cell/mul_6Mulwhile/gru_cell/Sigmoid_1:y:0!while/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_6•
while/gru_cell/add_2AddV2!while/gru_cell/BiasAdd_2:output:0while/gru_cell/mul_6:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/add_2
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/TanhЧ
while/gru_cell/mul_7Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_7q
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/gru_cell/sub/xЭ
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/subЧ
while/gru_cell/mul_8Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_8Ь
while/gru_cell/add_3AddV2while/gru_cell/mul_7:z:0while/gru_cell/mul_8:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/add_3№
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1 
while/IdentityIdentitywhile/add_1:z:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/IdentityЁ
while/Identity_1Identitywhile_while_maximum_iterations^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/Identity_1ћ
while/Identity_2Identitywhile/add:z:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/Identity_2щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/Identity_3й
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/Identity_4"V
(while_gru_cell_readvariableop_1_resource*while_gru_cell_readvariableop_1_resource_0"V
(while_gru_cell_readvariableop_4_resource*while_gru_cell_readvariableop_4_resource_0"R
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
&: : : : :€€€€€€€€€Ц: : : : : 2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp2B
while/gru_cell/ReadVariableOp_1while/gru_cell/ReadVariableOp_12B
while/gru_cell/ReadVariableOp_2while/gru_cell/ReadVariableOp_22B
while/gru_cell/ReadVariableOp_3while/gru_cell/ReadVariableOp_32B
while/gru_cell/ReadVariableOp_4while/gru_cell/ReadVariableOp_42B
while/gru_cell/ReadVariableOp_5while/gru_cell/ReadVariableOp_52B
while/gru_cell/ReadVariableOp_6while/gru_cell/ReadVariableOp_6: 
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
:€€€€€€€€€Ц:

_output_shapes
: :

_output_shapes
: 
и
И
E__inference_sequential_layer_call_and_return_conditional_losses_58179
embedding_input!
embedding_58163:2
	gru_58166:	¬
	gru_58168:	2¬
	gru_58170:
Ц¬
dense_58173:	Ц
dense_58175:
identityИҐdense/StatefulPartitionedCallҐ!embedding/StatefulPartitionedCallҐgru/StatefulPartitionedCallР
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_58163*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_573442#
!embedding/StatefulPartitionedCall™
gru/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0	gru_58166	gru_58168	gru_58170*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Ц*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *G
fBR@
>__inference_gru_layer_call_and_return_conditional_losses_576302
gru/StatefulPartitionedCall†
dense/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_58173dense_58175*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_576492
dense/StatefulPartitionedCall№
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^gru/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:X T
'
_output_shapes
:€€€€€€€€€
)
_user_specified_nameembedding_input
“
Р
*__inference_sequential_layer_call_fn_58240

inputs
unknown:2
	unknown_0:	¬
	unknown_1:	2¬
	unknown_2:
Ц¬
	unknown_3:	Ц
	unknown_4:
identityИҐStatefulPartitionedCall©
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_576562
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
О

†
D__inference_embedding_layer_call_and_return_conditional_losses_58962

inputs(
embedding_lookup_58956:2
identityИҐembedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
Castы
embedding_lookupResourceGatherembedding_lookup_58956Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/58956*+
_output_shapes
:€€€€€€€€€2*
dtype02
embedding_lookupм
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/58956*+
_output_shapes
:€€€€€€€€€22
embedding_lookup/Identity†
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
embedding_lookup/Identity_1П
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:€€€€€€€€€22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
»з
–
sequential_gru_while_body_56412:
6sequential_gru_while_sequential_gru_while_loop_counter@
<sequential_gru_while_sequential_gru_while_maximum_iterations$
 sequential_gru_while_placeholder&
"sequential_gru_while_placeholder_1&
"sequential_gru_while_placeholder_29
5sequential_gru_while_sequential_gru_strided_slice_1_0u
qsequential_gru_while_tensorarrayv2read_tensorlistgetitem_sequential_gru_tensorarrayunstack_tensorlistfromtensor_0J
7sequential_gru_while_gru_cell_readvariableop_resource_0:	¬L
9sequential_gru_while_gru_cell_readvariableop_1_resource_0:	2¬M
9sequential_gru_while_gru_cell_readvariableop_4_resource_0:
Ц¬!
sequential_gru_while_identity#
sequential_gru_while_identity_1#
sequential_gru_while_identity_2#
sequential_gru_while_identity_3#
sequential_gru_while_identity_47
3sequential_gru_while_sequential_gru_strided_slice_1s
osequential_gru_while_tensorarrayv2read_tensorlistgetitem_sequential_gru_tensorarrayunstack_tensorlistfromtensorH
5sequential_gru_while_gru_cell_readvariableop_resource:	¬J
7sequential_gru_while_gru_cell_readvariableop_1_resource:	2¬K
7sequential_gru_while_gru_cell_readvariableop_4_resource:
Ц¬ИҐ,sequential/gru/while/gru_cell/ReadVariableOpҐ.sequential/gru/while/gru_cell/ReadVariableOp_1Ґ.sequential/gru/while/gru_cell/ReadVariableOp_2Ґ.sequential/gru/while/gru_cell/ReadVariableOp_3Ґ.sequential/gru/while/gru_cell/ReadVariableOp_4Ґ.sequential/gru/while/gru_cell/ReadVariableOp_5Ґ.sequential/gru/while/gru_cell/ReadVariableOp_6б
Fsequential/gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   2H
Fsequential/gru/while/TensorArrayV2Read/TensorListGetItem/element_shape≠
8sequential/gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqsequential_gru_while_tensorarrayv2read_tensorlistgetitem_sequential_gru_tensorarrayunstack_tensorlistfromtensor_0 sequential_gru_while_placeholderOsequential/gru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype02:
8sequential/gru/while/TensorArrayV2Read/TensorListGetItemЌ
-sequential/gru/while/gru_cell/ones_like/ShapeShape?sequential/gru/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2/
-sequential/gru/while/gru_cell/ones_like/Shape£
-sequential/gru/while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2/
-sequential/gru/while/gru_cell/ones_like/Constь
'sequential/gru/while/gru_cell/ones_likeFill6sequential/gru/while/gru_cell/ones_like/Shape:output:06sequential/gru/while/gru_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22)
'sequential/gru/while/gru_cell/ones_likeі
/sequential/gru/while/gru_cell/ones_like_1/ShapeShape"sequential_gru_while_placeholder_2*
T0*
_output_shapes
:21
/sequential/gru/while/gru_cell/ones_like_1/ShapeІ
/sequential/gru/while/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?21
/sequential/gru/while/gru_cell/ones_like_1/ConstЕ
)sequential/gru/while/gru_cell/ones_like_1Fill8sequential/gru/while/gru_cell/ones_like_1/Shape:output:08sequential/gru/while/gru_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2+
)sequential/gru/while/gru_cell/ones_like_1’
,sequential/gru/while/gru_cell/ReadVariableOpReadVariableOp7sequential_gru_while_gru_cell_readvariableop_resource_0*
_output_shapes
:	¬*
dtype02.
,sequential/gru/while/gru_cell/ReadVariableOp∆
%sequential/gru/while/gru_cell/unstackUnpack4sequential/gru/while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:¬:¬*	
num2'
%sequential/gru/while/gru_cell/unstackт
!sequential/gru/while/gru_cell/mulMul?sequential/gru/while/TensorArrayV2Read/TensorListGetItem:item:00sequential/gru/while/gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22#
!sequential/gru/while/gru_cell/mulц
#sequential/gru/while/gru_cell/mul_1Mul?sequential/gru/while/TensorArrayV2Read/TensorListGetItem:item:00sequential/gru/while/gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22%
#sequential/gru/while/gru_cell/mul_1ц
#sequential/gru/while/gru_cell/mul_2Mul?sequential/gru/while/TensorArrayV2Read/TensorListGetItem:item:00sequential/gru/while/gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22%
#sequential/gru/while/gru_cell/mul_2џ
.sequential/gru/while/gru_cell/ReadVariableOp_1ReadVariableOp9sequential_gru_while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype020
.sequential/gru/while/gru_cell/ReadVariableOp_1Ј
1sequential/gru/while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        23
1sequential/gru/while/gru_cell/strided_slice/stackї
3sequential/gru/while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   25
3sequential/gru/while/gru_cell/strided_slice/stack_1ї
3sequential/gru/while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      25
3sequential/gru/while/gru_cell/strided_slice/stack_2≥
+sequential/gru/while/gru_cell/strided_sliceStridedSlice6sequential/gru/while/gru_cell/ReadVariableOp_1:value:0:sequential/gru/while/gru_cell/strided_slice/stack:output:0<sequential/gru/while/gru_cell/strided_slice/stack_1:output:0<sequential/gru/while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2-
+sequential/gru/while/gru_cell/strided_sliceж
$sequential/gru/while/gru_cell/MatMulMatMul%sequential/gru/while/gru_cell/mul:z:04sequential/gru/while/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2&
$sequential/gru/while/gru_cell/MatMulџ
.sequential/gru/while/gru_cell/ReadVariableOp_2ReadVariableOp9sequential_gru_while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype020
.sequential/gru/while/gru_cell/ReadVariableOp_2ї
3sequential/gru/while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   25
3sequential/gru/while/gru_cell/strided_slice_1/stackњ
5sequential/gru/while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  27
5sequential/gru/while/gru_cell/strided_slice_1/stack_1њ
5sequential/gru/while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5sequential/gru/while/gru_cell/strided_slice_1/stack_2љ
-sequential/gru/while/gru_cell/strided_slice_1StridedSlice6sequential/gru/while/gru_cell/ReadVariableOp_2:value:0<sequential/gru/while/gru_cell/strided_slice_1/stack:output:0>sequential/gru/while/gru_cell/strided_slice_1/stack_1:output:0>sequential/gru/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2/
-sequential/gru/while/gru_cell/strided_slice_1о
&sequential/gru/while/gru_cell/MatMul_1MatMul'sequential/gru/while/gru_cell/mul_1:z:06sequential/gru/while/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2(
&sequential/gru/while/gru_cell/MatMul_1џ
.sequential/gru/while/gru_cell/ReadVariableOp_3ReadVariableOp9sequential_gru_while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype020
.sequential/gru/while/gru_cell/ReadVariableOp_3ї
3sequential/gru/while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  25
3sequential/gru/while/gru_cell/strided_slice_2/stackњ
5sequential/gru/while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        27
5sequential/gru/while/gru_cell/strided_slice_2/stack_1њ
5sequential/gru/while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5sequential/gru/while/gru_cell/strided_slice_2/stack_2љ
-sequential/gru/while/gru_cell/strided_slice_2StridedSlice6sequential/gru/while/gru_cell/ReadVariableOp_3:value:0<sequential/gru/while/gru_cell/strided_slice_2/stack:output:0>sequential/gru/while/gru_cell/strided_slice_2/stack_1:output:0>sequential/gru/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2/
-sequential/gru/while/gru_cell/strided_slice_2о
&sequential/gru/while/gru_cell/MatMul_2MatMul'sequential/gru/while/gru_cell/mul_2:z:06sequential/gru/while/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2(
&sequential/gru/while/gru_cell/MatMul_2і
3sequential/gru/while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential/gru/while/gru_cell/strided_slice_3/stackє
5sequential/gru/while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц27
5sequential/gru/while/gru_cell/strided_slice_3/stack_1Є
5sequential/gru/while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential/gru/while/gru_cell/strided_slice_3/stack_2°
-sequential/gru/while/gru_cell/strided_slice_3StridedSlice.sequential/gru/while/gru_cell/unstack:output:0<sequential/gru/while/gru_cell/strided_slice_3/stack:output:0>sequential/gru/while/gru_cell/strided_slice_3/stack_1:output:0>sequential/gru/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2/
-sequential/gru/while/gru_cell/strided_slice_3ф
%sequential/gru/while/gru_cell/BiasAddBiasAdd.sequential/gru/while/gru_cell/MatMul:product:06sequential/gru/while/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2'
%sequential/gru/while/gru_cell/BiasAddµ
3sequential/gru/while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц25
3sequential/gru/while/gru_cell/strided_slice_4/stackє
5sequential/gru/while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ27
5sequential/gru/while/gru_cell/strided_slice_4/stack_1Є
5sequential/gru/while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential/gru/while/gru_cell/strided_slice_4/stack_2П
-sequential/gru/while/gru_cell/strided_slice_4StridedSlice.sequential/gru/while/gru_cell/unstack:output:0<sequential/gru/while/gru_cell/strided_slice_4/stack:output:0>sequential/gru/while/gru_cell/strided_slice_4/stack_1:output:0>sequential/gru/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2/
-sequential/gru/while/gru_cell/strided_slice_4ъ
'sequential/gru/while/gru_cell/BiasAdd_1BiasAdd0sequential/gru/while/gru_cell/MatMul_1:product:06sequential/gru/while/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2)
'sequential/gru/while/gru_cell/BiasAdd_1µ
3sequential/gru/while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ25
3sequential/gru/while/gru_cell/strided_slice_5/stackЄ
5sequential/gru/while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 27
5sequential/gru/while/gru_cell/strided_slice_5/stack_1Є
5sequential/gru/while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential/gru/while/gru_cell/strided_slice_5/stack_2Я
-sequential/gru/while/gru_cell/strided_slice_5StridedSlice.sequential/gru/while/gru_cell/unstack:output:0<sequential/gru/while/gru_cell/strided_slice_5/stack:output:0>sequential/gru/while/gru_cell/strided_slice_5/stack_1:output:0>sequential/gru/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2/
-sequential/gru/while/gru_cell/strided_slice_5ъ
'sequential/gru/while/gru_cell/BiasAdd_2BiasAdd0sequential/gru/while/gru_cell/MatMul_2:product:06sequential/gru/while/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2)
'sequential/gru/while/gru_cell/BiasAdd_2№
#sequential/gru/while/gru_cell/mul_3Mul"sequential_gru_while_placeholder_22sequential/gru/while/gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2%
#sequential/gru/while/gru_cell/mul_3№
#sequential/gru/while/gru_cell/mul_4Mul"sequential_gru_while_placeholder_22sequential/gru/while/gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2%
#sequential/gru/while/gru_cell/mul_4№
#sequential/gru/while/gru_cell/mul_5Mul"sequential_gru_while_placeholder_22sequential/gru/while/gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2%
#sequential/gru/while/gru_cell/mul_5№
.sequential/gru/while/gru_cell/ReadVariableOp_4ReadVariableOp9sequential_gru_while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype020
.sequential/gru/while/gru_cell/ReadVariableOp_4ї
3sequential/gru/while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        25
3sequential/gru/while/gru_cell/strided_slice_6/stackњ
5sequential/gru/while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   27
5sequential/gru/while/gru_cell/strided_slice_6/stack_1њ
5sequential/gru/while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5sequential/gru/while/gru_cell/strided_slice_6/stack_2Њ
-sequential/gru/while/gru_cell/strided_slice_6StridedSlice6sequential/gru/while/gru_cell/ReadVariableOp_4:value:0<sequential/gru/while/gru_cell/strided_slice_6/stack:output:0>sequential/gru/while/gru_cell/strided_slice_6/stack_1:output:0>sequential/gru/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2/
-sequential/gru/while/gru_cell/strided_slice_6о
&sequential/gru/while/gru_cell/MatMul_3MatMul'sequential/gru/while/gru_cell/mul_3:z:06sequential/gru/while/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2(
&sequential/gru/while/gru_cell/MatMul_3№
.sequential/gru/while/gru_cell/ReadVariableOp_5ReadVariableOp9sequential_gru_while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype020
.sequential/gru/while/gru_cell/ReadVariableOp_5ї
3sequential/gru/while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   25
3sequential/gru/while/gru_cell/strided_slice_7/stackњ
5sequential/gru/while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  27
5sequential/gru/while/gru_cell/strided_slice_7/stack_1њ
5sequential/gru/while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5sequential/gru/while/gru_cell/strided_slice_7/stack_2Њ
-sequential/gru/while/gru_cell/strided_slice_7StridedSlice6sequential/gru/while/gru_cell/ReadVariableOp_5:value:0<sequential/gru/while/gru_cell/strided_slice_7/stack:output:0>sequential/gru/while/gru_cell/strided_slice_7/stack_1:output:0>sequential/gru/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2/
-sequential/gru/while/gru_cell/strided_slice_7о
&sequential/gru/while/gru_cell/MatMul_4MatMul'sequential/gru/while/gru_cell/mul_4:z:06sequential/gru/while/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2(
&sequential/gru/while/gru_cell/MatMul_4і
3sequential/gru/while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential/gru/while/gru_cell/strided_slice_8/stackє
5sequential/gru/while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц27
5sequential/gru/while/gru_cell/strided_slice_8/stack_1Є
5sequential/gru/while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential/gru/while/gru_cell/strided_slice_8/stack_2°
-sequential/gru/while/gru_cell/strided_slice_8StridedSlice.sequential/gru/while/gru_cell/unstack:output:1<sequential/gru/while/gru_cell/strided_slice_8/stack:output:0>sequential/gru/while/gru_cell/strided_slice_8/stack_1:output:0>sequential/gru/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2/
-sequential/gru/while/gru_cell/strided_slice_8ъ
'sequential/gru/while/gru_cell/BiasAdd_3BiasAdd0sequential/gru/while/gru_cell/MatMul_3:product:06sequential/gru/while/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2)
'sequential/gru/while/gru_cell/BiasAdd_3µ
3sequential/gru/while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц25
3sequential/gru/while/gru_cell/strided_slice_9/stackє
5sequential/gru/while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ27
5sequential/gru/while/gru_cell/strided_slice_9/stack_1Є
5sequential/gru/while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential/gru/while/gru_cell/strided_slice_9/stack_2П
-sequential/gru/while/gru_cell/strided_slice_9StridedSlice.sequential/gru/while/gru_cell/unstack:output:1<sequential/gru/while/gru_cell/strided_slice_9/stack:output:0>sequential/gru/while/gru_cell/strided_slice_9/stack_1:output:0>sequential/gru/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2/
-sequential/gru/while/gru_cell/strided_slice_9ъ
'sequential/gru/while/gru_cell/BiasAdd_4BiasAdd0sequential/gru/while/gru_cell/MatMul_4:product:06sequential/gru/while/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2)
'sequential/gru/while/gru_cell/BiasAdd_4д
!sequential/gru/while/gru_cell/addAddV2.sequential/gru/while/gru_cell/BiasAdd:output:00sequential/gru/while/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2#
!sequential/gru/while/gru_cell/add≥
%sequential/gru/while/gru_cell/SigmoidSigmoid%sequential/gru/while/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2'
%sequential/gru/while/gru_cell/Sigmoidк
#sequential/gru/while/gru_cell/add_1AddV20sequential/gru/while/gru_cell/BiasAdd_1:output:00sequential/gru/while/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2%
#sequential/gru/while/gru_cell/add_1є
'sequential/gru/while/gru_cell/Sigmoid_1Sigmoid'sequential/gru/while/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2)
'sequential/gru/while/gru_cell/Sigmoid_1№
.sequential/gru/while/gru_cell/ReadVariableOp_6ReadVariableOp9sequential_gru_while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype020
.sequential/gru/while/gru_cell/ReadVariableOp_6љ
4sequential/gru/while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  26
4sequential/gru/while/gru_cell/strided_slice_10/stackЅ
6sequential/gru/while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        28
6sequential/gru/while/gru_cell/strided_slice_10/stack_1Ѕ
6sequential/gru/while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6sequential/gru/while/gru_cell/strided_slice_10/stack_2√
.sequential/gru/while/gru_cell/strided_slice_10StridedSlice6sequential/gru/while/gru_cell/ReadVariableOp_6:value:0=sequential/gru/while/gru_cell/strided_slice_10/stack:output:0?sequential/gru/while/gru_cell/strided_slice_10/stack_1:output:0?sequential/gru/while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask20
.sequential/gru/while/gru_cell/strided_slice_10п
&sequential/gru/while/gru_cell/MatMul_5MatMul'sequential/gru/while/gru_cell/mul_5:z:07sequential/gru/while/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2(
&sequential/gru/while/gru_cell/MatMul_5Ј
4sequential/gru/while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ26
4sequential/gru/while/gru_cell/strided_slice_11/stackЇ
6sequential/gru/while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 28
6sequential/gru/while/gru_cell/strided_slice_11/stack_1Ї
6sequential/gru/while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential/gru/while/gru_cell/strided_slice_11/stack_2§
.sequential/gru/while/gru_cell/strided_slice_11StridedSlice.sequential/gru/while/gru_cell/unstack:output:1=sequential/gru/while/gru_cell/strided_slice_11/stack:output:0?sequential/gru/while/gru_cell/strided_slice_11/stack_1:output:0?sequential/gru/while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask20
.sequential/gru/while/gru_cell/strided_slice_11ы
'sequential/gru/while/gru_cell/BiasAdd_5BiasAdd0sequential/gru/while/gru_cell/MatMul_5:product:07sequential/gru/while/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2)
'sequential/gru/while/gru_cell/BiasAdd_5г
#sequential/gru/while/gru_cell/mul_6Mul+sequential/gru/while/gru_cell/Sigmoid_1:y:00sequential/gru/while/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2%
#sequential/gru/while/gru_cell/mul_6б
#sequential/gru/while/gru_cell/add_2AddV20sequential/gru/while/gru_cell/BiasAdd_2:output:0'sequential/gru/while/gru_cell/mul_6:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2%
#sequential/gru/while/gru_cell/add_2ђ
"sequential/gru/while/gru_cell/TanhTanh'sequential/gru/while/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2$
"sequential/gru/while/gru_cell/Tanh”
#sequential/gru/while/gru_cell/mul_7Mul)sequential/gru/while/gru_cell/Sigmoid:y:0"sequential_gru_while_placeholder_2*
T0*(
_output_shapes
:€€€€€€€€€Ц2%
#sequential/gru/while/gru_cell/mul_7П
#sequential/gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2%
#sequential/gru/while/gru_cell/sub/xў
!sequential/gru/while/gru_cell/subSub,sequential/gru/while/gru_cell/sub/x:output:0)sequential/gru/while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2#
!sequential/gru/while/gru_cell/sub”
#sequential/gru/while/gru_cell/mul_8Mul%sequential/gru/while/gru_cell/sub:z:0&sequential/gru/while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2%
#sequential/gru/while/gru_cell/mul_8Ў
#sequential/gru/while/gru_cell/add_3AddV2'sequential/gru/while/gru_cell/mul_7:z:0'sequential/gru/while/gru_cell/mul_8:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2%
#sequential/gru/while/gru_cell/add_3І
9sequential/gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"sequential_gru_while_placeholder_1 sequential_gru_while_placeholder'sequential/gru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype02;
9sequential/gru/while/TensorArrayV2Write/TensorListSetItemz
sequential/gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
sequential/gru/while/add/y•
sequential/gru/while/addAddV2 sequential_gru_while_placeholder#sequential/gru/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential/gru/while/add~
sequential/gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
sequential/gru/while/add_1/yЅ
sequential/gru/while/add_1AddV26sequential_gru_while_sequential_gru_while_loop_counter%sequential/gru/while/add_1/y:output:0*
T0*
_output_shapes
: 2
sequential/gru/while/add_1а
sequential/gru/while/IdentityIdentitysequential/gru/while/add_1:z:0-^sequential/gru/while/gru_cell/ReadVariableOp/^sequential/gru/while/gru_cell/ReadVariableOp_1/^sequential/gru/while/gru_cell/ReadVariableOp_2/^sequential/gru/while/gru_cell/ReadVariableOp_3/^sequential/gru/while/gru_cell/ReadVariableOp_4/^sequential/gru/while/gru_cell/ReadVariableOp_5/^sequential/gru/while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
sequential/gru/while/IdentityВ
sequential/gru/while/Identity_1Identity<sequential_gru_while_sequential_gru_while_maximum_iterations-^sequential/gru/while/gru_cell/ReadVariableOp/^sequential/gru/while/gru_cell/ReadVariableOp_1/^sequential/gru/while/gru_cell/ReadVariableOp_2/^sequential/gru/while/gru_cell/ReadVariableOp_3/^sequential/gru/while/gru_cell/ReadVariableOp_4/^sequential/gru/while/gru_cell/ReadVariableOp_5/^sequential/gru/while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2!
sequential/gru/while/Identity_1в
sequential/gru/while/Identity_2Identitysequential/gru/while/add:z:0-^sequential/gru/while/gru_cell/ReadVariableOp/^sequential/gru/while/gru_cell/ReadVariableOp_1/^sequential/gru/while/gru_cell/ReadVariableOp_2/^sequential/gru/while/gru_cell/ReadVariableOp_3/^sequential/gru/while/gru_cell/ReadVariableOp_4/^sequential/gru/while/gru_cell/ReadVariableOp_5/^sequential/gru/while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2!
sequential/gru/while/Identity_2П
sequential/gru/while/Identity_3IdentityIsequential/gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^sequential/gru/while/gru_cell/ReadVariableOp/^sequential/gru/while/gru_cell/ReadVariableOp_1/^sequential/gru/while/gru_cell/ReadVariableOp_2/^sequential/gru/while/gru_cell/ReadVariableOp_3/^sequential/gru/while/gru_cell/ReadVariableOp_4/^sequential/gru/while/gru_cell/ReadVariableOp_5/^sequential/gru/while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2!
sequential/gru/while/Identity_3€
sequential/gru/while/Identity_4Identity'sequential/gru/while/gru_cell/add_3:z:0-^sequential/gru/while/gru_cell/ReadVariableOp/^sequential/gru/while/gru_cell/ReadVariableOp_1/^sequential/gru/while/gru_cell/ReadVariableOp_2/^sequential/gru/while/gru_cell/ReadVariableOp_3/^sequential/gru/while/gru_cell/ReadVariableOp_4/^sequential/gru/while/gru_cell/ReadVariableOp_5/^sequential/gru/while/gru_cell/ReadVariableOp_6*
T0*(
_output_shapes
:€€€€€€€€€Ц2!
sequential/gru/while/Identity_4"t
7sequential_gru_while_gru_cell_readvariableop_1_resource9sequential_gru_while_gru_cell_readvariableop_1_resource_0"t
7sequential_gru_while_gru_cell_readvariableop_4_resource9sequential_gru_while_gru_cell_readvariableop_4_resource_0"p
5sequential_gru_while_gru_cell_readvariableop_resource7sequential_gru_while_gru_cell_readvariableop_resource_0"G
sequential_gru_while_identity&sequential/gru/while/Identity:output:0"K
sequential_gru_while_identity_1(sequential/gru/while/Identity_1:output:0"K
sequential_gru_while_identity_2(sequential/gru/while/Identity_2:output:0"K
sequential_gru_while_identity_3(sequential/gru/while/Identity_3:output:0"K
sequential_gru_while_identity_4(sequential/gru/while/Identity_4:output:0"l
3sequential_gru_while_sequential_gru_strided_slice_15sequential_gru_while_sequential_gru_strided_slice_1_0"д
osequential_gru_while_tensorarrayv2read_tensorlistgetitem_sequential_gru_tensorarrayunstack_tensorlistfromtensorqsequential_gru_while_tensorarrayv2read_tensorlistgetitem_sequential_gru_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :€€€€€€€€€Ц: : : : : 2\
,sequential/gru/while/gru_cell/ReadVariableOp,sequential/gru/while/gru_cell/ReadVariableOp2`
.sequential/gru/while/gru_cell/ReadVariableOp_1.sequential/gru/while/gru_cell/ReadVariableOp_12`
.sequential/gru/while/gru_cell/ReadVariableOp_2.sequential/gru/while/gru_cell/ReadVariableOp_22`
.sequential/gru/while/gru_cell/ReadVariableOp_3.sequential/gru/while/gru_cell/ReadVariableOp_32`
.sequential/gru/while/gru_cell/ReadVariableOp_4.sequential/gru/while/gru_cell/ReadVariableOp_42`
.sequential/gru/while/gru_cell/ReadVariableOp_5.sequential/gru/while/gru_cell/ReadVariableOp_52`
.sequential/gru/while/gru_cell/ReadVariableOp_6.sequential/gru/while/gru_cell/ReadVariableOp_6: 
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
:€€€€€€€€€Ц:

_output_shapes
: :

_output_shapes
: 
ч
•
while_cond_59136
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_59136___redundant_placeholder03
/while_while_cond_59136___redundant_placeholder13
/while_while_cond_59136___redundant_placeholder23
/while_while_cond_59136___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :€€€€€€€€€Ц: ::::: 
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
:€€€€€€€€€Ц:

_output_shapes
: :

_output_shapes
:
¶Н
Џ	
gru_while_body_58738$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2#
gru_while_gru_strided_slice_1_0_
[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0?
,gru_while_gru_cell_readvariableop_resource_0:	¬A
.gru_while_gru_cell_readvariableop_1_resource_0:	2¬B
.gru_while_gru_cell_readvariableop_4_resource_0:
Ц¬
gru_while_identity
gru_while_identity_1
gru_while_identity_2
gru_while_identity_3
gru_while_identity_4!
gru_while_gru_strided_slice_1]
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor=
*gru_while_gru_cell_readvariableop_resource:	¬?
,gru_while_gru_cell_readvariableop_1_resource:	2¬@
,gru_while_gru_cell_readvariableop_4_resource:
Ц¬ИҐ!gru/while/gru_cell/ReadVariableOpҐ#gru/while/gru_cell/ReadVariableOp_1Ґ#gru/while/gru_cell/ReadVariableOp_2Ґ#gru/while/gru_cell/ReadVariableOp_3Ґ#gru/while/gru_cell/ReadVariableOp_4Ґ#gru/while/gru_cell/ReadVariableOp_5Ґ#gru/while/gru_cell/ReadVariableOp_6Ћ
;gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   2=
;gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeл
-gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0gru_while_placeholderDgru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype02/
-gru/while/TensorArrayV2Read/TensorListGetItemђ
"gru/while/gru_cell/ones_like/ShapeShape4gru/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"gru/while/gru_cell/ones_like/ShapeН
"gru/while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2$
"gru/while/gru_cell/ones_like/Const–
gru/while/gru_cell/ones_likeFill+gru/while/gru_cell/ones_like/Shape:output:0+gru/while/gru_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru/while/gru_cell/ones_likeЙ
 gru/while/gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2"
 gru/while/gru_cell/dropout/ConstЋ
gru/while/gru_cell/dropout/MulMul%gru/while/gru_cell/ones_like:output:0)gru/while/gru_cell/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22 
gru/while/gru_cell/dropout/MulЩ
 gru/while/gru_cell/dropout/ShapeShape%gru/while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2"
 gru/while/gru_cell/dropout/ShapeЛ
7gru/while/gru_cell/dropout/random_uniform/RandomUniformRandomUniform)gru/while/gru_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2•ХH29
7gru/while/gru_cell/dropout/random_uniform/RandomUniformЫ
)gru/while/gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2+
)gru/while/gru_cell/dropout/GreaterEqual/yК
'gru/while/gru_cell/dropout/GreaterEqualGreaterEqual@gru/while/gru_cell/dropout/random_uniform/RandomUniform:output:02gru/while/gru_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22)
'gru/while/gru_cell/dropout/GreaterEqualЄ
gru/while/gru_cell/dropout/CastCast+gru/while/gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22!
gru/while/gru_cell/dropout/Cast∆
 gru/while/gru_cell/dropout/Mul_1Mul"gru/while/gru_cell/dropout/Mul:z:0#gru/while/gru_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22"
 gru/while/gru_cell/dropout/Mul_1Н
"gru/while/gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2$
"gru/while/gru_cell/dropout_1/Const—
 gru/while/gru_cell/dropout_1/MulMul%gru/while/gru_cell/ones_like:output:0+gru/while/gru_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22"
 gru/while/gru_cell/dropout_1/MulЭ
"gru/while/gru_cell/dropout_1/ShapeShape%gru/while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2$
"gru/while/gru_cell/dropout_1/ShapeТ
9gru/while/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform+gru/while/gru_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2≤С≥2;
9gru/while/gru_cell/dropout_1/random_uniform/RandomUniformЯ
+gru/while/gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2-
+gru/while/gru_cell/dropout_1/GreaterEqual/yТ
)gru/while/gru_cell/dropout_1/GreaterEqualGreaterEqualBgru/while/gru_cell/dropout_1/random_uniform/RandomUniform:output:04gru/while/gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22+
)gru/while/gru_cell/dropout_1/GreaterEqualЊ
!gru/while/gru_cell/dropout_1/CastCast-gru/while/gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22#
!gru/while/gru_cell/dropout_1/Castќ
"gru/while/gru_cell/dropout_1/Mul_1Mul$gru/while/gru_cell/dropout_1/Mul:z:0%gru/while/gru_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22$
"gru/while/gru_cell/dropout_1/Mul_1Н
"gru/while/gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2$
"gru/while/gru_cell/dropout_2/Const—
 gru/while/gru_cell/dropout_2/MulMul%gru/while/gru_cell/ones_like:output:0+gru/while/gru_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22"
 gru/while/gru_cell/dropout_2/MulЭ
"gru/while/gru_cell/dropout_2/ShapeShape%gru/while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2$
"gru/while/gru_cell/dropout_2/ShapeТ
9gru/while/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform+gru/while/gru_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2оТЂ2;
9gru/while/gru_cell/dropout_2/random_uniform/RandomUniformЯ
+gru/while/gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2-
+gru/while/gru_cell/dropout_2/GreaterEqual/yТ
)gru/while/gru_cell/dropout_2/GreaterEqualGreaterEqualBgru/while/gru_cell/dropout_2/random_uniform/RandomUniform:output:04gru/while/gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22+
)gru/while/gru_cell/dropout_2/GreaterEqualЊ
!gru/while/gru_cell/dropout_2/CastCast-gru/while/gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22#
!gru/while/gru_cell/dropout_2/Castќ
"gru/while/gru_cell/dropout_2/Mul_1Mul$gru/while/gru_cell/dropout_2/Mul:z:0%gru/while/gru_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22$
"gru/while/gru_cell/dropout_2/Mul_1У
$gru/while/gru_cell/ones_like_1/ShapeShapegru_while_placeholder_2*
T0*
_output_shapes
:2&
$gru/while/gru_cell/ones_like_1/ShapeС
$gru/while/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2&
$gru/while/gru_cell/ones_like_1/Constў
gru/while/gru_cell/ones_like_1Fill-gru/while/gru_cell/ones_like_1/Shape:output:0-gru/while/gru_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2 
gru/while/gru_cell/ones_like_1Н
"gru/while/gru_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2$
"gru/while/gru_cell/dropout_3/Const‘
 gru/while/gru_cell/dropout_3/MulMul'gru/while/gru_cell/ones_like_1:output:0+gru/while/gru_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2"
 gru/while/gru_cell/dropout_3/MulЯ
"gru/while/gru_cell/dropout_3/ShapeShape'gru/while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2$
"gru/while/gru_cell/dropout_3/ShapeУ
9gru/while/gru_cell/dropout_3/random_uniform/RandomUniformRandomUniform+gru/while/gru_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2атџ2;
9gru/while/gru_cell/dropout_3/random_uniform/RandomUniformЯ
+gru/while/gru_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2-
+gru/while/gru_cell/dropout_3/GreaterEqual/yУ
)gru/while/gru_cell/dropout_3/GreaterEqualGreaterEqualBgru/while/gru_cell/dropout_3/random_uniform/RandomUniform:output:04gru/while/gru_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2+
)gru/while/gru_cell/dropout_3/GreaterEqualњ
!gru/while/gru_cell/dropout_3/CastCast-gru/while/gru_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2#
!gru/while/gru_cell/dropout_3/Castѕ
"gru/while/gru_cell/dropout_3/Mul_1Mul$gru/while/gru_cell/dropout_3/Mul:z:0%gru/while/gru_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2$
"gru/while/gru_cell/dropout_3/Mul_1Н
"gru/while/gru_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2$
"gru/while/gru_cell/dropout_4/Const‘
 gru/while/gru_cell/dropout_4/MulMul'gru/while/gru_cell/ones_like_1:output:0+gru/while/gru_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2"
 gru/while/gru_cell/dropout_4/MulЯ
"gru/while/gru_cell/dropout_4/ShapeShape'gru/while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2$
"gru/while/gru_cell/dropout_4/ShapeУ
9gru/while/gru_cell/dropout_4/random_uniform/RandomUniformRandomUniform+gru/while/gru_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2е…Я2;
9gru/while/gru_cell/dropout_4/random_uniform/RandomUniformЯ
+gru/while/gru_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2-
+gru/while/gru_cell/dropout_4/GreaterEqual/yУ
)gru/while/gru_cell/dropout_4/GreaterEqualGreaterEqualBgru/while/gru_cell/dropout_4/random_uniform/RandomUniform:output:04gru/while/gru_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2+
)gru/while/gru_cell/dropout_4/GreaterEqualњ
!gru/while/gru_cell/dropout_4/CastCast-gru/while/gru_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2#
!gru/while/gru_cell/dropout_4/Castѕ
"gru/while/gru_cell/dropout_4/Mul_1Mul$gru/while/gru_cell/dropout_4/Mul:z:0%gru/while/gru_cell/dropout_4/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2$
"gru/while/gru_cell/dropout_4/Mul_1Н
"gru/while/gru_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2$
"gru/while/gru_cell/dropout_5/Const‘
 gru/while/gru_cell/dropout_5/MulMul'gru/while/gru_cell/ones_like_1:output:0+gru/while/gru_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2"
 gru/while/gru_cell/dropout_5/MulЯ
"gru/while/gru_cell/dropout_5/ShapeShape'gru/while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2$
"gru/while/gru_cell/dropout_5/ShapeУ
9gru/while/gru_cell/dropout_5/random_uniform/RandomUniformRandomUniform+gru/while/gru_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2НбЋ2;
9gru/while/gru_cell/dropout_5/random_uniform/RandomUniformЯ
+gru/while/gru_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2-
+gru/while/gru_cell/dropout_5/GreaterEqual/yУ
)gru/while/gru_cell/dropout_5/GreaterEqualGreaterEqualBgru/while/gru_cell/dropout_5/random_uniform/RandomUniform:output:04gru/while/gru_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2+
)gru/while/gru_cell/dropout_5/GreaterEqualњ
!gru/while/gru_cell/dropout_5/CastCast-gru/while/gru_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2#
!gru/while/gru_cell/dropout_5/Castѕ
"gru/while/gru_cell/dropout_5/Mul_1Mul$gru/while/gru_cell/dropout_5/Mul:z:0%gru/while/gru_cell/dropout_5/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2$
"gru/while/gru_cell/dropout_5/Mul_1і
!gru/while/gru_cell/ReadVariableOpReadVariableOp,gru_while_gru_cell_readvariableop_resource_0*
_output_shapes
:	¬*
dtype02#
!gru/while/gru_cell/ReadVariableOp•
gru/while/gru_cell/unstackUnpack)gru/while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:¬:¬*	
num2
gru/while/gru_cell/unstack≈
gru/while/gru_cell/mulMul4gru/while/TensorArrayV2Read/TensorListGetItem:item:0$gru/while/gru_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru/while/gru_cell/mulЋ
gru/while/gru_cell/mul_1Mul4gru/while/TensorArrayV2Read/TensorListGetItem:item:0&gru/while/gru_cell/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru/while/gru_cell/mul_1Ћ
gru/while/gru_cell/mul_2Mul4gru/while/TensorArrayV2Read/TensorListGetItem:item:0&gru/while/gru_cell/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru/while/gru_cell/mul_2Ї
#gru/while/gru_cell/ReadVariableOp_1ReadVariableOp.gru_while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02%
#gru/while/gru_cell/ReadVariableOp_1°
&gru/while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&gru/while/gru_cell/strided_slice/stack•
(gru/while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2*
(gru/while/gru_cell/strided_slice/stack_1•
(gru/while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru/while/gru_cell/strided_slice/stack_2с
 gru/while/gru_cell/strided_sliceStridedSlice+gru/while/gru_cell/ReadVariableOp_1:value:0/gru/while/gru_cell/strided_slice/stack:output:01gru/while/gru_cell/strided_slice/stack_1:output:01gru/while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2"
 gru/while/gru_cell/strided_sliceЇ
gru/while/gru_cell/MatMulMatMulgru/while/gru_cell/mul:z:0)gru/while/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/MatMulЇ
#gru/while/gru_cell/ReadVariableOp_2ReadVariableOp.gru_while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02%
#gru/while/gru_cell/ReadVariableOp_2•
(gru/while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2*
(gru/while/gru_cell/strided_slice_1/stack©
*gru/while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2,
*gru/while/gru_cell/strided_slice_1/stack_1©
*gru/while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru/while/gru_cell/strided_slice_1/stack_2ы
"gru/while/gru_cell/strided_slice_1StridedSlice+gru/while/gru_cell/ReadVariableOp_2:value:01gru/while/gru_cell/strided_slice_1/stack:output:03gru/while/gru_cell/strided_slice_1/stack_1:output:03gru/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2$
"gru/while/gru_cell/strided_slice_1¬
gru/while/gru_cell/MatMul_1MatMulgru/while/gru_cell/mul_1:z:0+gru/while/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/MatMul_1Ї
#gru/while/gru_cell/ReadVariableOp_3ReadVariableOp.gru_while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02%
#gru/while/gru_cell/ReadVariableOp_3•
(gru/while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(gru/while/gru_cell/strided_slice_2/stack©
*gru/while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*gru/while/gru_cell/strided_slice_2/stack_1©
*gru/while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru/while/gru_cell/strided_slice_2/stack_2ы
"gru/while/gru_cell/strided_slice_2StridedSlice+gru/while/gru_cell/ReadVariableOp_3:value:01gru/while/gru_cell/strided_slice_2/stack:output:03gru/while/gru_cell/strided_slice_2/stack_1:output:03gru/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2$
"gru/while/gru_cell/strided_slice_2¬
gru/while/gru_cell/MatMul_2MatMulgru/while/gru_cell/mul_2:z:0+gru/while/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/MatMul_2Ю
(gru/while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(gru/while/gru_cell/strided_slice_3/stack£
*gru/while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2,
*gru/while/gru_cell/strided_slice_3/stack_1Ґ
*gru/while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru/while/gru_cell/strided_slice_3/stack_2я
"gru/while/gru_cell/strided_slice_3StridedSlice#gru/while/gru_cell/unstack:output:01gru/while/gru_cell/strided_slice_3/stack:output:03gru/while/gru_cell/strided_slice_3/stack_1:output:03gru/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2$
"gru/while/gru_cell/strided_slice_3»
gru/while/gru_cell/BiasAddBiasAdd#gru/while/gru_cell/MatMul:product:0+gru/while/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/BiasAddЯ
(gru/while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2*
(gru/while/gru_cell/strided_slice_4/stack£
*gru/while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2,
*gru/while/gru_cell/strided_slice_4/stack_1Ґ
*gru/while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru/while/gru_cell/strided_slice_4/stack_2Ќ
"gru/while/gru_cell/strided_slice_4StridedSlice#gru/while/gru_cell/unstack:output:01gru/while/gru_cell/strided_slice_4/stack:output:03gru/while/gru_cell/strided_slice_4/stack_1:output:03gru/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2$
"gru/while/gru_cell/strided_slice_4ќ
gru/while/gru_cell/BiasAdd_1BiasAdd%gru/while/gru_cell/MatMul_1:product:0+gru/while/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/BiasAdd_1Я
(gru/while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2*
(gru/while/gru_cell/strided_slice_5/stackҐ
*gru/while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2,
*gru/while/gru_cell/strided_slice_5/stack_1Ґ
*gru/while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru/while/gru_cell/strided_slice_5/stack_2Ё
"gru/while/gru_cell/strided_slice_5StridedSlice#gru/while/gru_cell/unstack:output:01gru/while/gru_cell/strided_slice_5/stack:output:03gru/while/gru_cell/strided_slice_5/stack_1:output:03gru/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2$
"gru/while/gru_cell/strided_slice_5ќ
gru/while/gru_cell/BiasAdd_2BiasAdd%gru/while/gru_cell/MatMul_2:product:0+gru/while/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/BiasAdd_2ѓ
gru/while/gru_cell/mul_3Mulgru_while_placeholder_2&gru/while/gru_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/mul_3ѓ
gru/while/gru_cell/mul_4Mulgru_while_placeholder_2&gru/while/gru_cell/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/mul_4ѓ
gru/while/gru_cell/mul_5Mulgru_while_placeholder_2&gru/while/gru_cell/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/mul_5ї
#gru/while/gru_cell/ReadVariableOp_4ReadVariableOp.gru_while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02%
#gru/while/gru_cell/ReadVariableOp_4•
(gru/while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(gru/while/gru_cell/strided_slice_6/stack©
*gru/while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2,
*gru/while/gru_cell/strided_slice_6/stack_1©
*gru/while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru/while/gru_cell/strided_slice_6/stack_2ь
"gru/while/gru_cell/strided_slice_6StridedSlice+gru/while/gru_cell/ReadVariableOp_4:value:01gru/while/gru_cell/strided_slice_6/stack:output:03gru/while/gru_cell/strided_slice_6/stack_1:output:03gru/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2$
"gru/while/gru_cell/strided_slice_6¬
gru/while/gru_cell/MatMul_3MatMulgru/while/gru_cell/mul_3:z:0+gru/while/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/MatMul_3ї
#gru/while/gru_cell/ReadVariableOp_5ReadVariableOp.gru_while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02%
#gru/while/gru_cell/ReadVariableOp_5•
(gru/while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2*
(gru/while/gru_cell/strided_slice_7/stack©
*gru/while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2,
*gru/while/gru_cell/strided_slice_7/stack_1©
*gru/while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru/while/gru_cell/strided_slice_7/stack_2ь
"gru/while/gru_cell/strided_slice_7StridedSlice+gru/while/gru_cell/ReadVariableOp_5:value:01gru/while/gru_cell/strided_slice_7/stack:output:03gru/while/gru_cell/strided_slice_7/stack_1:output:03gru/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2$
"gru/while/gru_cell/strided_slice_7¬
gru/while/gru_cell/MatMul_4MatMulgru/while/gru_cell/mul_4:z:0+gru/while/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/MatMul_4Ю
(gru/while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(gru/while/gru_cell/strided_slice_8/stack£
*gru/while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2,
*gru/while/gru_cell/strided_slice_8/stack_1Ґ
*gru/while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru/while/gru_cell/strided_slice_8/stack_2я
"gru/while/gru_cell/strided_slice_8StridedSlice#gru/while/gru_cell/unstack:output:11gru/while/gru_cell/strided_slice_8/stack:output:03gru/while/gru_cell/strided_slice_8/stack_1:output:03gru/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2$
"gru/while/gru_cell/strided_slice_8ќ
gru/while/gru_cell/BiasAdd_3BiasAdd%gru/while/gru_cell/MatMul_3:product:0+gru/while/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/BiasAdd_3Я
(gru/while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2*
(gru/while/gru_cell/strided_slice_9/stack£
*gru/while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2,
*gru/while/gru_cell/strided_slice_9/stack_1Ґ
*gru/while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru/while/gru_cell/strided_slice_9/stack_2Ќ
"gru/while/gru_cell/strided_slice_9StridedSlice#gru/while/gru_cell/unstack:output:11gru/while/gru_cell/strided_slice_9/stack:output:03gru/while/gru_cell/strided_slice_9/stack_1:output:03gru/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2$
"gru/while/gru_cell/strided_slice_9ќ
gru/while/gru_cell/BiasAdd_4BiasAdd%gru/while/gru_cell/MatMul_4:product:0+gru/while/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/BiasAdd_4Є
gru/while/gru_cell/addAddV2#gru/while/gru_cell/BiasAdd:output:0%gru/while/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/addТ
gru/while/gru_cell/SigmoidSigmoidgru/while/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/SigmoidЊ
gru/while/gru_cell/add_1AddV2%gru/while/gru_cell/BiasAdd_1:output:0%gru/while/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/add_1Ш
gru/while/gru_cell/Sigmoid_1Sigmoidgru/while/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/Sigmoid_1ї
#gru/while/gru_cell/ReadVariableOp_6ReadVariableOp.gru_while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02%
#gru/while/gru_cell/ReadVariableOp_6І
)gru/while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2+
)gru/while/gru_cell/strided_slice_10/stackЂ
+gru/while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+gru/while/gru_cell/strided_slice_10/stack_1Ђ
+gru/while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+gru/while/gru_cell/strided_slice_10/stack_2Б
#gru/while/gru_cell/strided_slice_10StridedSlice+gru/while/gru_cell/ReadVariableOp_6:value:02gru/while/gru_cell/strided_slice_10/stack:output:04gru/while/gru_cell/strided_slice_10/stack_1:output:04gru/while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2%
#gru/while/gru_cell/strided_slice_10√
gru/while/gru_cell/MatMul_5MatMulgru/while/gru_cell/mul_5:z:0,gru/while/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/MatMul_5°
)gru/while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2+
)gru/while/gru_cell/strided_slice_11/stack§
+gru/while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+gru/while/gru_cell/strided_slice_11/stack_1§
+gru/while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+gru/while/gru_cell/strided_slice_11/stack_2в
#gru/while/gru_cell/strided_slice_11StridedSlice#gru/while/gru_cell/unstack:output:12gru/while/gru_cell/strided_slice_11/stack:output:04gru/while/gru_cell/strided_slice_11/stack_1:output:04gru/while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2%
#gru/while/gru_cell/strided_slice_11ѕ
gru/while/gru_cell/BiasAdd_5BiasAdd%gru/while/gru_cell/MatMul_5:product:0,gru/while/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/BiasAdd_5Ј
gru/while/gru_cell/mul_6Mul gru/while/gru_cell/Sigmoid_1:y:0%gru/while/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/mul_6µ
gru/while/gru_cell/add_2AddV2%gru/while/gru_cell/BiasAdd_2:output:0gru/while/gru_cell/mul_6:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/add_2Л
gru/while/gru_cell/TanhTanhgru/while/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/TanhІ
gru/while/gru_cell/mul_7Mulgru/while/gru_cell/Sigmoid:y:0gru_while_placeholder_2*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/mul_7y
gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru/while/gru_cell/sub/x≠
gru/while/gru_cell/subSub!gru/while/gru_cell/sub/x:output:0gru/while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/subІ
gru/while/gru_cell/mul_8Mulgru/while/gru_cell/sub:z:0gru/while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/mul_8ђ
gru/while/gru_cell/add_3AddV2gru/while/gru_cell/mul_7:z:0gru/while/gru_cell/mul_8:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/add_3р
.gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_while_placeholder_1gru_while_placeholdergru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype020
.gru/while/TensorArrayV2Write/TensorListSetItemd
gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru/while/add/yy
gru/while/addAddV2gru_while_placeholdergru/while/add/y:output:0*
T0*
_output_shapes
: 2
gru/while/addh
gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru/while/add_1/yК
gru/while/add_1AddV2 gru_while_gru_while_loop_countergru/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru/while/add_1т
gru/while/IdentityIdentitygru/while/add_1:z:0"^gru/while/gru_cell/ReadVariableOp$^gru/while/gru_cell/ReadVariableOp_1$^gru/while/gru_cell/ReadVariableOp_2$^gru/while/gru_cell/ReadVariableOp_3$^gru/while/gru_cell/ReadVariableOp_4$^gru/while/gru_cell/ReadVariableOp_5$^gru/while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
gru/while/IdentityЙ
gru/while/Identity_1Identity&gru_while_gru_while_maximum_iterations"^gru/while/gru_cell/ReadVariableOp$^gru/while/gru_cell/ReadVariableOp_1$^gru/while/gru_cell/ReadVariableOp_2$^gru/while/gru_cell/ReadVariableOp_3$^gru/while/gru_cell/ReadVariableOp_4$^gru/while/gru_cell/ReadVariableOp_5$^gru/while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
gru/while/Identity_1ф
gru/while/Identity_2Identitygru/while/add:z:0"^gru/while/gru_cell/ReadVariableOp$^gru/while/gru_cell/ReadVariableOp_1$^gru/while/gru_cell/ReadVariableOp_2$^gru/while/gru_cell/ReadVariableOp_3$^gru/while/gru_cell/ReadVariableOp_4$^gru/while/gru_cell/ReadVariableOp_5$^gru/while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
gru/while/Identity_2°
gru/while/Identity_3Identity>gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^gru/while/gru_cell/ReadVariableOp$^gru/while/gru_cell/ReadVariableOp_1$^gru/while/gru_cell/ReadVariableOp_2$^gru/while/gru_cell/ReadVariableOp_3$^gru/while/gru_cell/ReadVariableOp_4$^gru/while/gru_cell/ReadVariableOp_5$^gru/while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
gru/while/Identity_3С
gru/while/Identity_4Identitygru/while/gru_cell/add_3:z:0"^gru/while/gru_cell/ReadVariableOp$^gru/while/gru_cell/ReadVariableOp_1$^gru/while/gru_cell/ReadVariableOp_2$^gru/while/gru_cell/ReadVariableOp_3$^gru/while/gru_cell/ReadVariableOp_4$^gru/while/gru_cell/ReadVariableOp_5$^gru/while/gru_cell/ReadVariableOp_6*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/Identity_4"^
,gru_while_gru_cell_readvariableop_1_resource.gru_while_gru_cell_readvariableop_1_resource_0"^
,gru_while_gru_cell_readvariableop_4_resource.gru_while_gru_cell_readvariableop_4_resource_0"Z
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
&: : : : :€€€€€€€€€Ц: : : : : 2F
!gru/while/gru_cell/ReadVariableOp!gru/while/gru_cell/ReadVariableOp2J
#gru/while/gru_cell/ReadVariableOp_1#gru/while/gru_cell/ReadVariableOp_12J
#gru/while/gru_cell/ReadVariableOp_2#gru/while/gru_cell/ReadVariableOp_22J
#gru/while/gru_cell/ReadVariableOp_3#gru/while/gru_cell/ReadVariableOp_32J
#gru/while/gru_cell/ReadVariableOp_4#gru/while/gru_cell/ReadVariableOp_42J
#gru/while/gru_cell/ReadVariableOp_5#gru/while/gru_cell/ReadVariableOp_52J
#gru/while/gru_cell/ReadVariableOp_6#gru/while/gru_cell/ReadVariableOp_6: 
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
:€€€€€€€€€Ц:

_output_shapes
: :

_output_shapes
: 
ч
•
while_cond_59467
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_59467___redundant_placeholder03
/while_while_cond_59467___redundant_placeholder13
/while_while_cond_59467___redundant_placeholder23
/while_while_cond_59467___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :€€€€€€€€€Ц: ::::: 
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
:€€€€€€€€€Ц:

_output_shapes
: :

_output_shapes
:
шч
Ћ
>__inference_gru_layer_call_and_return_conditional_losses_60330

inputs3
 gru_cell_readvariableop_resource:	¬5
"gru_cell_readvariableop_1_resource:	2¬6
"gru_cell_readvariableop_4_resource:
Ц¬
identityИҐgru_cell/ReadVariableOpҐgru_cell/ReadVariableOp_1Ґgru_cell/ReadVariableOp_2Ґgru_cell/ReadVariableOp_3Ґgru_cell/ReadVariableOp_4Ґgru_cell/ReadVariableOp_5Ґgru_cell/ReadVariableOp_6ҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ц2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ц2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_mask2
strided_slice_2|
gru_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like/Shapey
gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru_cell/ones_like/Const®
gru_cell/ones_likeFill!gru_cell/ones_like/Shape:output:0!gru_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/ones_likeu
gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru_cell/dropout/Const£
gru_cell/dropout/MulMulgru_cell/ones_like:output:0gru_cell/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout/Mul{
gru_cell/dropout/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell/dropout/Shapeо
-gru_cell/dropout/random_uniform/RandomUniformRandomUniformgru_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2ƒич2/
-gru_cell/dropout/random_uniform/RandomUniformЗ
gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2!
gru_cell/dropout/GreaterEqual/yв
gru_cell/dropout/GreaterEqualGreaterEqual6gru_cell/dropout/random_uniform/RandomUniform:output:0(gru_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout/GreaterEqualЪ
gru_cell/dropout/CastCast!gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout/CastЮ
gru_cell/dropout/Mul_1Mulgru_cell/dropout/Mul:z:0gru_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout/Mul_1y
gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru_cell/dropout_1/Const©
gru_cell/dropout_1/MulMulgru_cell/ones_like:output:0!gru_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout_1/Mul
gru_cell/dropout_1/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_1/Shapeф
/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2ыЖї21
/gru_cell/dropout_1/random_uniform/RandomUniformЛ
!gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2#
!gru_cell/dropout_1/GreaterEqual/yк
gru_cell/dropout_1/GreaterEqualGreaterEqual8gru_cell/dropout_1/random_uniform/RandomUniform:output:0*gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22!
gru_cell/dropout_1/GreaterEqual†
gru_cell/dropout_1/CastCast#gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout_1/Cast¶
gru_cell/dropout_1/Mul_1Mulgru_cell/dropout_1/Mul:z:0gru_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout_1/Mul_1y
gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru_cell/dropout_2/Const©
gru_cell/dropout_2/MulMulgru_cell/ones_like:output:0!gru_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout_2/Mul
gru_cell/dropout_2/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_2/Shapeф
/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2®√Ь21
/gru_cell/dropout_2/random_uniform/RandomUniformЛ
!gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2#
!gru_cell/dropout_2/GreaterEqual/yк
gru_cell/dropout_2/GreaterEqualGreaterEqual8gru_cell/dropout_2/random_uniform/RandomUniform:output:0*gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22!
gru_cell/dropout_2/GreaterEqual†
gru_cell/dropout_2/CastCast#gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout_2/Cast¶
gru_cell/dropout_2/Mul_1Mulgru_cell/dropout_2/Mul:z:0gru_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout_2/Mul_1v
gru_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like_1/Shape}
gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru_cell/ones_like_1/Const±
gru_cell/ones_like_1Fill#gru_cell/ones_like_1/Shape:output:0#gru_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/ones_like_1y
gru_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru_cell/dropout_3/Constђ
gru_cell/dropout_3/MulMulgru_cell/ones_like_1:output:0!gru_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_3/MulБ
gru_cell/dropout_3/ShapeShapegru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_3/Shapeх
/gru_cell/dropout_3/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2£то21
/gru_cell/dropout_3/random_uniform/RandomUniformЛ
!gru_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2#
!gru_cell/dropout_3/GreaterEqual/yл
gru_cell/dropout_3/GreaterEqualGreaterEqual8gru_cell/dropout_3/random_uniform/RandomUniform:output:0*gru_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2!
gru_cell/dropout_3/GreaterEqual°
gru_cell/dropout_3/CastCast#gru_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_3/CastІ
gru_cell/dropout_3/Mul_1Mulgru_cell/dropout_3/Mul:z:0gru_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_3/Mul_1y
gru_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru_cell/dropout_4/Constђ
gru_cell/dropout_4/MulMulgru_cell/ones_like_1:output:0!gru_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_4/MulБ
gru_cell/dropout_4/ShapeShapegru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_4/Shapeх
/gru_cell/dropout_4/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2ИаТ21
/gru_cell/dropout_4/random_uniform/RandomUniformЛ
!gru_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2#
!gru_cell/dropout_4/GreaterEqual/yл
gru_cell/dropout_4/GreaterEqualGreaterEqual8gru_cell/dropout_4/random_uniform/RandomUniform:output:0*gru_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2!
gru_cell/dropout_4/GreaterEqual°
gru_cell/dropout_4/CastCast#gru_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_4/CastІ
gru_cell/dropout_4/Mul_1Mulgru_cell/dropout_4/Mul:z:0gru_cell/dropout_4/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_4/Mul_1y
gru_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru_cell/dropout_5/Constђ
gru_cell/dropout_5/MulMulgru_cell/ones_like_1:output:0!gru_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_5/MulБ
gru_cell/dropout_5/ShapeShapegru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_5/Shapeх
/gru_cell/dropout_5/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2ТАп21
/gru_cell/dropout_5/random_uniform/RandomUniformЛ
!gru_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2#
!gru_cell/dropout_5/GreaterEqual/yл
gru_cell/dropout_5/GreaterEqualGreaterEqual8gru_cell/dropout_5/random_uniform/RandomUniform:output:0*gru_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2!
gru_cell/dropout_5/GreaterEqual°
gru_cell/dropout_5/CastCast#gru_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_5/CastІ
gru_cell/dropout_5/Mul_1Mulgru_cell/dropout_5/Mul:z:0gru_cell/dropout_5/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_5/Mul_1Ф
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	¬*
dtype02
gru_cell/ReadVariableOpЗ
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:¬:¬*	
num2
gru_cell/unstackЛ
gru_cell/mulMulstrided_slice_2:output:0gru_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/mulС
gru_cell/mul_1Mulstrided_slice_2:output:0gru_cell/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/mul_1С
gru_cell/mul_2Mulstrided_slice_2:output:0gru_cell/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/mul_2Ъ
gru_cell/ReadVariableOp_1ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru_cell/ReadVariableOp_1Н
gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
gru_cell/strided_slice/stackС
gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2 
gru_cell/strided_slice/stack_1С
gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2 
gru_cell/strided_slice/stack_2µ
gru_cell/strided_sliceStridedSlice!gru_cell/ReadVariableOp_1:value:0%gru_cell/strided_slice/stack:output:0'gru_cell/strided_slice/stack_1:output:0'gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru_cell/strided_sliceТ
gru_cell/MatMulMatMulgru_cell/mul:z:0gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMulЪ
gru_cell/ReadVariableOp_2ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru_cell/ReadVariableOp_2С
gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2 
gru_cell/strided_slice_1/stackХ
 gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2"
 gru_cell/strided_slice_1/stack_1Х
 gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_1/stack_2њ
gru_cell/strided_slice_1StridedSlice!gru_cell/ReadVariableOp_2:value:0'gru_cell/strided_slice_1/stack:output:0)gru_cell/strided_slice_1/stack_1:output:0)gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru_cell/strided_slice_1Ъ
gru_cell/MatMul_1MatMulgru_cell/mul_1:z:0!gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_1Ъ
gru_cell/ReadVariableOp_3ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru_cell/ReadVariableOp_3С
gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2 
gru_cell/strided_slice_2/stackХ
 gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell/strided_slice_2/stack_1Х
 gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_2/stack_2њ
gru_cell/strided_slice_2StridedSlice!gru_cell/ReadVariableOp_3:value:0'gru_cell/strided_slice_2/stack:output:0)gru_cell/strided_slice_2/stack_1:output:0)gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru_cell/strided_slice_2Ъ
gru_cell/MatMul_2MatMulgru_cell/mul_2:z:0!gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_2К
gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_3/stackП
 gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2"
 gru_cell/strided_slice_3/stack_1О
 gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_3/stack_2£
gru_cell/strided_slice_3StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_3/stack:output:0)gru_cell/strided_slice_3/stack_1:output:0)gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
gru_cell/strided_slice_3†
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0!gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAddЛ
gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2 
gru_cell/strided_slice_4/stackП
 gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gru_cell/strided_slice_4/stack_1О
 gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_4/stack_2С
gru_cell/strided_slice_4StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_4/stack:output:0)gru_cell/strided_slice_4/stack_1:output:0)gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
gru_cell/strided_slice_4¶
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0!gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_1Л
gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gru_cell/strided_slice_5/stackО
 gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell/strided_slice_5/stack_1О
 gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_5/stack_2°
gru_cell/strided_slice_5StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_5/stack:output:0)gru_cell/strided_slice_5/stack_1:output:0)gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
gru_cell/strided_slice_5¶
gru_cell/BiasAdd_2BiasAddgru_cell/MatMul_2:product:0!gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_2И
gru_cell/mul_3Mulzeros:output:0gru_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_3И
gru_cell/mul_4Mulzeros:output:0gru_cell/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_4И
gru_cell/mul_5Mulzeros:output:0gru_cell/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_5Ы
gru_cell/ReadVariableOp_4ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru_cell/ReadVariableOp_4С
gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell/strided_slice_6/stackХ
 gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2"
 gru_cell/strided_slice_6/stack_1Х
 gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_6/stack_2ј
gru_cell/strided_slice_6StridedSlice!gru_cell/ReadVariableOp_4:value:0'gru_cell/strided_slice_6/stack:output:0)gru_cell/strided_slice_6/stack_1:output:0)gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru_cell/strided_slice_6Ъ
gru_cell/MatMul_3MatMulgru_cell/mul_3:z:0!gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_3Ы
gru_cell/ReadVariableOp_5ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru_cell/ReadVariableOp_5С
gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2 
gru_cell/strided_slice_7/stackХ
 gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2"
 gru_cell/strided_slice_7/stack_1Х
 gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_7/stack_2ј
gru_cell/strided_slice_7StridedSlice!gru_cell/ReadVariableOp_5:value:0'gru_cell/strided_slice_7/stack:output:0)gru_cell/strided_slice_7/stack_1:output:0)gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru_cell/strided_slice_7Ъ
gru_cell/MatMul_4MatMulgru_cell/mul_4:z:0!gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_4К
gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_8/stackП
 gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2"
 gru_cell/strided_slice_8/stack_1О
 gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_8/stack_2£
gru_cell/strided_slice_8StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_8/stack:output:0)gru_cell/strided_slice_8/stack_1:output:0)gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
gru_cell/strided_slice_8¶
gru_cell/BiasAdd_3BiasAddgru_cell/MatMul_3:product:0!gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_3Л
gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2 
gru_cell/strided_slice_9/stackП
 gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gru_cell/strided_slice_9/stack_1О
 gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_9/stack_2С
gru_cell/strided_slice_9StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_9/stack:output:0)gru_cell/strided_slice_9/stack_1:output:0)gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
gru_cell/strided_slice_9¶
gru_cell/BiasAdd_4BiasAddgru_cell/MatMul_4:product:0!gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_4Р
gru_cell/addAddV2gru_cell/BiasAdd:output:0gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/addt
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/SigmoidЦ
gru_cell/add_1AddV2gru_cell/BiasAdd_1:output:0gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/add_1z
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/Sigmoid_1Ы
gru_cell/ReadVariableOp_6ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru_cell/ReadVariableOp_6У
gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2!
gru_cell/strided_slice_10/stackЧ
!gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!gru_cell/strided_slice_10/stack_1Ч
!gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell/strided_slice_10/stack_2≈
gru_cell/strided_slice_10StridedSlice!gru_cell/ReadVariableOp_6:value:0(gru_cell/strided_slice_10/stack:output:0*gru_cell/strided_slice_10/stack_1:output:0*gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru_cell/strided_slice_10Ы
gru_cell/MatMul_5MatMulgru_cell/mul_5:z:0"gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_5Н
gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gru_cell/strided_slice_11/stackР
!gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2#
!gru_cell/strided_slice_11/stack_1Р
!gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!gru_cell/strided_slice_11/stack_2¶
gru_cell/strided_slice_11StridedSlicegru_cell/unstack:output:1(gru_cell/strided_slice_11/stack:output:0*gru_cell/strided_slice_11/stack_1:output:0*gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
gru_cell/strided_slice_11І
gru_cell/BiasAdd_5BiasAddgru_cell/MatMul_5:product:0"gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_5П
gru_cell/mul_6Mulgru_cell/Sigmoid_1:y:0gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_6Н
gru_cell/add_2AddV2gru_cell/BiasAdd_2:output:0gru_cell/mul_6:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/add_2m
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/TanhА
gru_cell/mul_7Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_7e
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru_cell/sub/xЕ
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/sub
gru_cell/mul_8Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_8Д
gru_cell/add_3AddV2gru_cell/mul_7:z:0gru_cell/mul_8:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€Ц   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterХ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource"gru_cell_readvariableop_1_resource"gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€Ц: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_60130*
condR
while_cond_60129*9
output_shapes(
&: : : : :€€€€€€€€€Ц: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€Ц   22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€Ц*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€Ц2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЈ
IdentityIdentitystrided_slice_3:output:0^gru_cell/ReadVariableOp^gru_cell/ReadVariableOp_1^gru_cell/ReadVariableOp_2^gru_cell/ReadVariableOp_3^gru_cell/ReadVariableOp_4^gru_cell/ReadVariableOp_5^gru_cell/ReadVariableOp_6^while*
T0*(
_output_shapes
:€€€€€€€€€Ц2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€2: : : 22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp26
gru_cell/ReadVariableOp_1gru_cell/ReadVariableOp_126
gru_cell/ReadVariableOp_2gru_cell/ReadVariableOp_226
gru_cell/ReadVariableOp_3gru_cell/ReadVariableOp_326
gru_cell/ReadVariableOp_4gru_cell/ReadVariableOp_426
gru_cell/ReadVariableOp_5gru_cell/ReadVariableOp_526
gru_cell/ReadVariableOp_6gru_cell/ReadVariableOp_62
whilewhile:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
н
Щ
*__inference_sequential_layer_call_fn_57671
embedding_input
unknown:2
	unknown_0:	¬
	unknown_1:	2¬
	unknown_2:
Ц¬
	unknown_3:	Ц
	unknown_4:
identityИҐStatefulPartitionedCall≤
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_576562
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:€€€€€€€€€
)
_user_specified_nameembedding_input
и
И
E__inference_sequential_layer_call_and_return_conditional_losses_58198
embedding_input!
embedding_58182:2
	gru_58185:	¬
	gru_58187:	2¬
	gru_58189:
Ц¬
dense_58192:	Ц
dense_58194:
identityИҐdense/StatefulPartitionedCallҐ!embedding/StatefulPartitionedCallҐgru/StatefulPartitionedCallР
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_58182*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_573442#
!embedding/StatefulPartitionedCall™
gru/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0	gru_58185	gru_58187	gru_58189*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Ц*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *G
fBR@
>__inference_gru_layer_call_and_return_conditional_losses_580732
gru/StatefulPartitionedCall†
dense/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_58192dense_58194*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_576492
dense/StatefulPartitionedCall№
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^gru/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:X T
'
_output_shapes
:€€€€€€€€€
)
_user_specified_nameembedding_input
Г=
т
>__inference_gru_layer_call_and_return_conditional_losses_57093

inputs!
gru_cell_57017:	¬!
gru_cell_57019:	2¬"
gru_cell_57021:
Ц¬
identityИҐ gru_cell/StatefulPartitionedCallҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ц2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ц2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_mask2
strided_slice_2№
 gru_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_57017gru_cell_57019gru_cell_57021*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€Ц:€€€€€€€€€Ц*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_gru_cell_layer_call_and_return_conditional_losses_569622"
 gru_cell/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€Ц   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterџ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_57017gru_cell_57019gru_cell_57021*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€Ц: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_57029*
condR
while_cond_57028*9
output_shapes(
&: : : : :€€€€€€€€€Ц: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€Ц   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ц*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ц2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeШ
IdentityIdentitystrided_slice_3:output:0!^gru_cell/StatefulPartitionedCall^while*
T0*(
_output_shapes
:€€€€€€€€€Ц2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€2: : : 2D
 gru_cell/StatefulPartitionedCall gru_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
 
_user_specified_nameinputs
О

†
D__inference_embedding_layer_call_and_return_conditional_losses_57344

inputs(
embedding_lookup_57338:2
identityИҐembedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
Castы
embedding_lookupResourceGatherembedding_lookup_57338Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/57338*+
_output_shapes
:€€€€€€€€€2*
dtype02
embedding_lookupм
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/57338*+
_output_shapes
:€€€€€€€€€22
embedding_lookup/Identity†
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
embedding_lookup/Identity_1П
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:€€€€€€€€€22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
≠Д
Щ
 __inference__wrapped_model_56571
embedding_input=
+sequential_embedding_embedding_lookup_56279:2B
/sequential_gru_gru_cell_readvariableop_resource:	¬D
1sequential_gru_gru_cell_readvariableop_1_resource:	2¬E
1sequential_gru_gru_cell_readvariableop_4_resource:
Ц¬B
/sequential_dense_matmul_readvariableop_resource:	Ц>
0sequential_dense_biasadd_readvariableop_resource:
identityИҐ'sequential/dense/BiasAdd/ReadVariableOpҐ&sequential/dense/MatMul/ReadVariableOpҐ%sequential/embedding/embedding_lookupҐ&sequential/gru/gru_cell/ReadVariableOpҐ(sequential/gru/gru_cell/ReadVariableOp_1Ґ(sequential/gru/gru_cell/ReadVariableOp_2Ґ(sequential/gru/gru_cell/ReadVariableOp_3Ґ(sequential/gru/gru_cell/ReadVariableOp_4Ґ(sequential/gru/gru_cell/ReadVariableOp_5Ґ(sequential/gru/gru_cell/ReadVariableOp_6Ґsequential/gru/whileР
sequential/embedding/CastCastembedding_input*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
sequential/embedding/Castд
%sequential/embedding/embedding_lookupResourceGather+sequential_embedding_embedding_lookup_56279sequential/embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*>
_class4
20loc:@sequential/embedding/embedding_lookup/56279*+
_output_shapes
:€€€€€€€€€2*
dtype02'
%sequential/embedding/embedding_lookupј
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@sequential/embedding/embedding_lookup/56279*+
_output_shapes
:€€€€€€€€€220
.sequential/embedding/embedding_lookup/Identityя
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€222
0sequential/embedding/embedding_lookup/Identity_1Х
sequential/gru/ShapeShape9sequential/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
sequential/gru/ShapeТ
"sequential/gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/gru/strided_slice/stackЦ
$sequential/gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$sequential/gru/strided_slice/stack_1Ц
$sequential/gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$sequential/gru/strided_slice/stack_2Љ
sequential/gru/strided_sliceStridedSlicesequential/gru/Shape:output:0+sequential/gru/strided_slice/stack:output:0-sequential/gru/strided_slice/stack_1:output:0-sequential/gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sequential/gru/strided_slice{
sequential/gru/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ц2
sequential/gru/zeros/mul/y®
sequential/gru/zeros/mulMul%sequential/gru/strided_slice:output:0#sequential/gru/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential/gru/zeros/mul}
sequential/gru/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
sequential/gru/zeros/Less/y£
sequential/gru/zeros/LessLesssequential/gru/zeros/mul:z:0$sequential/gru/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
sequential/gru/zeros/LessБ
sequential/gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ц2
sequential/gru/zeros/packed/1њ
sequential/gru/zeros/packedPack%sequential/gru/strided_slice:output:0&sequential/gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
sequential/gru/zeros/packed}
sequential/gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/gru/zeros/Const≤
sequential/gru/zerosFill$sequential/gru/zeros/packed:output:0#sequential/gru/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
sequential/gru/zerosУ
sequential/gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
sequential/gru/transpose/permЏ
sequential/gru/transpose	Transpose9sequential/embedding/embedding_lookup/Identity_1:output:0&sequential/gru/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
sequential/gru/transpose|
sequential/gru/Shape_1Shapesequential/gru/transpose:y:0*
T0*
_output_shapes
:2
sequential/gru/Shape_1Ц
$sequential/gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential/gru/strided_slice_1/stackЪ
&sequential/gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&sequential/gru/strided_slice_1/stack_1Ъ
&sequential/gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&sequential/gru/strided_slice_1/stack_2»
sequential/gru/strided_slice_1StridedSlicesequential/gru/Shape_1:output:0-sequential/gru/strided_slice_1/stack:output:0/sequential/gru/strided_slice_1/stack_1:output:0/sequential/gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
sequential/gru/strided_slice_1£
*sequential/gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2,
*sequential/gru/TensorArrayV2/element_shapeо
sequential/gru/TensorArrayV2TensorListReserve3sequential/gru/TensorArrayV2/element_shape:output:0'sequential/gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
sequential/gru/TensorArrayV2Ё
Dsequential/gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   2F
Dsequential/gru/TensorArrayUnstack/TensorListFromTensor/element_shapeі
6sequential/gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/gru/transpose:y:0Msequential/gru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type028
6sequential/gru/TensorArrayUnstack/TensorListFromTensorЦ
$sequential/gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential/gru/strided_slice_2/stackЪ
&sequential/gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&sequential/gru/strided_slice_2/stack_1Ъ
&sequential/gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&sequential/gru/strided_slice_2/stack_2÷
sequential/gru/strided_slice_2StridedSlicesequential/gru/transpose:y:0-sequential/gru/strided_slice_2/stack:output:0/sequential/gru/strided_slice_2/stack_1:output:0/sequential/gru/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_mask2 
sequential/gru/strided_slice_2©
'sequential/gru/gru_cell/ones_like/ShapeShape'sequential/gru/strided_slice_2:output:0*
T0*
_output_shapes
:2)
'sequential/gru/gru_cell/ones_like/ShapeЧ
'sequential/gru/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'sequential/gru/gru_cell/ones_like/Constд
!sequential/gru/gru_cell/ones_likeFill0sequential/gru/gru_cell/ones_like/Shape:output:00sequential/gru/gru_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22#
!sequential/gru/gru_cell/ones_like£
)sequential/gru/gru_cell/ones_like_1/ShapeShapesequential/gru/zeros:output:0*
T0*
_output_shapes
:2+
)sequential/gru/gru_cell/ones_like_1/ShapeЫ
)sequential/gru/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2+
)sequential/gru/gru_cell/ones_like_1/Constн
#sequential/gru/gru_cell/ones_like_1Fill2sequential/gru/gru_cell/ones_like_1/Shape:output:02sequential/gru/gru_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2%
#sequential/gru/gru_cell/ones_like_1Ѕ
&sequential/gru/gru_cell/ReadVariableOpReadVariableOp/sequential_gru_gru_cell_readvariableop_resource*
_output_shapes
:	¬*
dtype02(
&sequential/gru/gru_cell/ReadVariableOpі
sequential/gru/gru_cell/unstackUnpack.sequential/gru/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:¬:¬*	
num2!
sequential/gru/gru_cell/unstack»
sequential/gru/gru_cell/mulMul'sequential/gru/strided_slice_2:output:0*sequential/gru/gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
sequential/gru/gru_cell/mulћ
sequential/gru/gru_cell/mul_1Mul'sequential/gru/strided_slice_2:output:0*sequential/gru/gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
sequential/gru/gru_cell/mul_1ћ
sequential/gru/gru_cell/mul_2Mul'sequential/gru/strided_slice_2:output:0*sequential/gru/gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
sequential/gru/gru_cell/mul_2«
(sequential/gru/gru_cell/ReadVariableOp_1ReadVariableOp1sequential_gru_gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02*
(sequential/gru/gru_cell/ReadVariableOp_1Ђ
+sequential/gru/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2-
+sequential/gru/gru_cell/strided_slice/stackѓ
-sequential/gru/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2/
-sequential/gru/gru_cell/strided_slice/stack_1ѓ
-sequential/gru/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2/
-sequential/gru/gru_cell/strided_slice/stack_2П
%sequential/gru/gru_cell/strided_sliceStridedSlice0sequential/gru/gru_cell/ReadVariableOp_1:value:04sequential/gru/gru_cell/strided_slice/stack:output:06sequential/gru/gru_cell/strided_slice/stack_1:output:06sequential/gru/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2'
%sequential/gru/gru_cell/strided_sliceќ
sequential/gru/gru_cell/MatMulMatMulsequential/gru/gru_cell/mul:z:0.sequential/gru/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2 
sequential/gru/gru_cell/MatMul«
(sequential/gru/gru_cell/ReadVariableOp_2ReadVariableOp1sequential_gru_gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02*
(sequential/gru/gru_cell/ReadVariableOp_2ѓ
-sequential/gru/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2/
-sequential/gru/gru_cell/strided_slice_1/stack≥
/sequential/gru/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  21
/sequential/gru/gru_cell/strided_slice_1/stack_1≥
/sequential/gru/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/sequential/gru/gru_cell/strided_slice_1/stack_2Щ
'sequential/gru/gru_cell/strided_slice_1StridedSlice0sequential/gru/gru_cell/ReadVariableOp_2:value:06sequential/gru/gru_cell/strided_slice_1/stack:output:08sequential/gru/gru_cell/strided_slice_1/stack_1:output:08sequential/gru/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2)
'sequential/gru/gru_cell/strided_slice_1÷
 sequential/gru/gru_cell/MatMul_1MatMul!sequential/gru/gru_cell/mul_1:z:00sequential/gru/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2"
 sequential/gru/gru_cell/MatMul_1«
(sequential/gru/gru_cell/ReadVariableOp_3ReadVariableOp1sequential_gru_gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02*
(sequential/gru/gru_cell/ReadVariableOp_3ѓ
-sequential/gru/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2/
-sequential/gru/gru_cell/strided_slice_2/stack≥
/sequential/gru/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        21
/sequential/gru/gru_cell/strided_slice_2/stack_1≥
/sequential/gru/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/sequential/gru/gru_cell/strided_slice_2/stack_2Щ
'sequential/gru/gru_cell/strided_slice_2StridedSlice0sequential/gru/gru_cell/ReadVariableOp_3:value:06sequential/gru/gru_cell/strided_slice_2/stack:output:08sequential/gru/gru_cell/strided_slice_2/stack_1:output:08sequential/gru/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2)
'sequential/gru/gru_cell/strided_slice_2÷
 sequential/gru/gru_cell/MatMul_2MatMul!sequential/gru/gru_cell/mul_2:z:00sequential/gru/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2"
 sequential/gru/gru_cell/MatMul_2®
-sequential/gru/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential/gru/gru_cell/strided_slice_3/stack≠
/sequential/gru/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц21
/sequential/gru/gru_cell/strided_slice_3/stack_1ђ
/sequential/gru/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential/gru/gru_cell/strided_slice_3/stack_2э
'sequential/gru/gru_cell/strided_slice_3StridedSlice(sequential/gru/gru_cell/unstack:output:06sequential/gru/gru_cell/strided_slice_3/stack:output:08sequential/gru/gru_cell/strided_slice_3/stack_1:output:08sequential/gru/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2)
'sequential/gru/gru_cell/strided_slice_3№
sequential/gru/gru_cell/BiasAddBiasAdd(sequential/gru/gru_cell/MatMul:product:00sequential/gru/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2!
sequential/gru/gru_cell/BiasAdd©
-sequential/gru/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2/
-sequential/gru/gru_cell/strided_slice_4/stack≠
/sequential/gru/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ21
/sequential/gru/gru_cell/strided_slice_4/stack_1ђ
/sequential/gru/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential/gru/gru_cell/strided_slice_4/stack_2л
'sequential/gru/gru_cell/strided_slice_4StridedSlice(sequential/gru/gru_cell/unstack:output:06sequential/gru/gru_cell/strided_slice_4/stack:output:08sequential/gru/gru_cell/strided_slice_4/stack_1:output:08sequential/gru/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2)
'sequential/gru/gru_cell/strided_slice_4в
!sequential/gru/gru_cell/BiasAdd_1BiasAdd*sequential/gru/gru_cell/MatMul_1:product:00sequential/gru/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2#
!sequential/gru/gru_cell/BiasAdd_1©
-sequential/gru/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2/
-sequential/gru/gru_cell/strided_slice_5/stackђ
/sequential/gru/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/sequential/gru/gru_cell/strided_slice_5/stack_1ђ
/sequential/gru/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential/gru/gru_cell/strided_slice_5/stack_2ы
'sequential/gru/gru_cell/strided_slice_5StridedSlice(sequential/gru/gru_cell/unstack:output:06sequential/gru/gru_cell/strided_slice_5/stack:output:08sequential/gru/gru_cell/strided_slice_5/stack_1:output:08sequential/gru/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2)
'sequential/gru/gru_cell/strided_slice_5в
!sequential/gru/gru_cell/BiasAdd_2BiasAdd*sequential/gru/gru_cell/MatMul_2:product:00sequential/gru/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2#
!sequential/gru/gru_cell/BiasAdd_2≈
sequential/gru/gru_cell/mul_3Mulsequential/gru/zeros:output:0,sequential/gru/gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
sequential/gru/gru_cell/mul_3≈
sequential/gru/gru_cell/mul_4Mulsequential/gru/zeros:output:0,sequential/gru/gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
sequential/gru/gru_cell/mul_4≈
sequential/gru/gru_cell/mul_5Mulsequential/gru/zeros:output:0,sequential/gru/gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
sequential/gru/gru_cell/mul_5»
(sequential/gru/gru_cell/ReadVariableOp_4ReadVariableOp1sequential_gru_gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02*
(sequential/gru/gru_cell/ReadVariableOp_4ѓ
-sequential/gru/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-sequential/gru/gru_cell/strided_slice_6/stack≥
/sequential/gru/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   21
/sequential/gru/gru_cell/strided_slice_6/stack_1≥
/sequential/gru/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/sequential/gru/gru_cell/strided_slice_6/stack_2Ъ
'sequential/gru/gru_cell/strided_slice_6StridedSlice0sequential/gru/gru_cell/ReadVariableOp_4:value:06sequential/gru/gru_cell/strided_slice_6/stack:output:08sequential/gru/gru_cell/strided_slice_6/stack_1:output:08sequential/gru/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2)
'sequential/gru/gru_cell/strided_slice_6÷
 sequential/gru/gru_cell/MatMul_3MatMul!sequential/gru/gru_cell/mul_3:z:00sequential/gru/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2"
 sequential/gru/gru_cell/MatMul_3»
(sequential/gru/gru_cell/ReadVariableOp_5ReadVariableOp1sequential_gru_gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02*
(sequential/gru/gru_cell/ReadVariableOp_5ѓ
-sequential/gru/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2/
-sequential/gru/gru_cell/strided_slice_7/stack≥
/sequential/gru/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  21
/sequential/gru/gru_cell/strided_slice_7/stack_1≥
/sequential/gru/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/sequential/gru/gru_cell/strided_slice_7/stack_2Ъ
'sequential/gru/gru_cell/strided_slice_7StridedSlice0sequential/gru/gru_cell/ReadVariableOp_5:value:06sequential/gru/gru_cell/strided_slice_7/stack:output:08sequential/gru/gru_cell/strided_slice_7/stack_1:output:08sequential/gru/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2)
'sequential/gru/gru_cell/strided_slice_7÷
 sequential/gru/gru_cell/MatMul_4MatMul!sequential/gru/gru_cell/mul_4:z:00sequential/gru/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2"
 sequential/gru/gru_cell/MatMul_4®
-sequential/gru/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential/gru/gru_cell/strided_slice_8/stack≠
/sequential/gru/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц21
/sequential/gru/gru_cell/strided_slice_8/stack_1ђ
/sequential/gru/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential/gru/gru_cell/strided_slice_8/stack_2э
'sequential/gru/gru_cell/strided_slice_8StridedSlice(sequential/gru/gru_cell/unstack:output:16sequential/gru/gru_cell/strided_slice_8/stack:output:08sequential/gru/gru_cell/strided_slice_8/stack_1:output:08sequential/gru/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2)
'sequential/gru/gru_cell/strided_slice_8в
!sequential/gru/gru_cell/BiasAdd_3BiasAdd*sequential/gru/gru_cell/MatMul_3:product:00sequential/gru/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2#
!sequential/gru/gru_cell/BiasAdd_3©
-sequential/gru/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2/
-sequential/gru/gru_cell/strided_slice_9/stack≠
/sequential/gru/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ21
/sequential/gru/gru_cell/strided_slice_9/stack_1ђ
/sequential/gru/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential/gru/gru_cell/strided_slice_9/stack_2л
'sequential/gru/gru_cell/strided_slice_9StridedSlice(sequential/gru/gru_cell/unstack:output:16sequential/gru/gru_cell/strided_slice_9/stack:output:08sequential/gru/gru_cell/strided_slice_9/stack_1:output:08sequential/gru/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2)
'sequential/gru/gru_cell/strided_slice_9в
!sequential/gru/gru_cell/BiasAdd_4BiasAdd*sequential/gru/gru_cell/MatMul_4:product:00sequential/gru/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2#
!sequential/gru/gru_cell/BiasAdd_4ћ
sequential/gru/gru_cell/addAddV2(sequential/gru/gru_cell/BiasAdd:output:0*sequential/gru/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
sequential/gru/gru_cell/add°
sequential/gru/gru_cell/SigmoidSigmoidsequential/gru/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2!
sequential/gru/gru_cell/Sigmoid“
sequential/gru/gru_cell/add_1AddV2*sequential/gru/gru_cell/BiasAdd_1:output:0*sequential/gru/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
sequential/gru/gru_cell/add_1І
!sequential/gru/gru_cell/Sigmoid_1Sigmoid!sequential/gru/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2#
!sequential/gru/gru_cell/Sigmoid_1»
(sequential/gru/gru_cell/ReadVariableOp_6ReadVariableOp1sequential_gru_gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02*
(sequential/gru/gru_cell/ReadVariableOp_6±
.sequential/gru/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  20
.sequential/gru/gru_cell/strided_slice_10/stackµ
0sequential/gru/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0sequential/gru/gru_cell/strided_slice_10/stack_1µ
0sequential/gru/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0sequential/gru/gru_cell/strided_slice_10/stack_2Я
(sequential/gru/gru_cell/strided_slice_10StridedSlice0sequential/gru/gru_cell/ReadVariableOp_6:value:07sequential/gru/gru_cell/strided_slice_10/stack:output:09sequential/gru/gru_cell/strided_slice_10/stack_1:output:09sequential/gru/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2*
(sequential/gru/gru_cell/strided_slice_10„
 sequential/gru/gru_cell/MatMul_5MatMul!sequential/gru/gru_cell/mul_5:z:01sequential/gru/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2"
 sequential/gru/gru_cell/MatMul_5Ђ
.sequential/gru/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ20
.sequential/gru/gru_cell/strided_slice_11/stackЃ
0sequential/gru/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 22
0sequential/gru/gru_cell/strided_slice_11/stack_1Ѓ
0sequential/gru/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential/gru/gru_cell/strided_slice_11/stack_2А
(sequential/gru/gru_cell/strided_slice_11StridedSlice(sequential/gru/gru_cell/unstack:output:17sequential/gru/gru_cell/strided_slice_11/stack:output:09sequential/gru/gru_cell/strided_slice_11/stack_1:output:09sequential/gru/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2*
(sequential/gru/gru_cell/strided_slice_11г
!sequential/gru/gru_cell/BiasAdd_5BiasAdd*sequential/gru/gru_cell/MatMul_5:product:01sequential/gru/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2#
!sequential/gru/gru_cell/BiasAdd_5Ћ
sequential/gru/gru_cell/mul_6Mul%sequential/gru/gru_cell/Sigmoid_1:y:0*sequential/gru/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
sequential/gru/gru_cell/mul_6…
sequential/gru/gru_cell/add_2AddV2*sequential/gru/gru_cell/BiasAdd_2:output:0!sequential/gru/gru_cell/mul_6:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
sequential/gru/gru_cell/add_2Ъ
sequential/gru/gru_cell/TanhTanh!sequential/gru/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
sequential/gru/gru_cell/TanhЉ
sequential/gru/gru_cell/mul_7Mul#sequential/gru/gru_cell/Sigmoid:y:0sequential/gru/zeros:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
sequential/gru/gru_cell/mul_7Г
sequential/gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sequential/gru/gru_cell/sub/xЅ
sequential/gru/gru_cell/subSub&sequential/gru/gru_cell/sub/x:output:0#sequential/gru/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
sequential/gru/gru_cell/subї
sequential/gru/gru_cell/mul_8Mulsequential/gru/gru_cell/sub:z:0 sequential/gru/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
sequential/gru/gru_cell/mul_8ј
sequential/gru/gru_cell/add_3AddV2!sequential/gru/gru_cell/mul_7:z:0!sequential/gru/gru_cell/mul_8:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
sequential/gru/gru_cell/add_3≠
,sequential/gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€Ц   2.
,sequential/gru/TensorArrayV2_1/element_shapeф
sequential/gru/TensorArrayV2_1TensorListReserve5sequential/gru/TensorArrayV2_1/element_shape:output:0'sequential/gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02 
sequential/gru/TensorArrayV2_1l
sequential/gru/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/gru/timeЭ
'sequential/gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2)
'sequential/gru/while/maximum_iterationsИ
!sequential/gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential/gru/while/loop_counterз
sequential/gru/whileWhile*sequential/gru/while/loop_counter:output:00sequential/gru/while/maximum_iterations:output:0sequential/gru/time:output:0'sequential/gru/TensorArrayV2_1:handle:0sequential/gru/zeros:output:0'sequential/gru/strided_slice_1:output:0Fsequential/gru/TensorArrayUnstack/TensorListFromTensor:output_handle:0/sequential_gru_gru_cell_readvariableop_resource1sequential_gru_gru_cell_readvariableop_1_resource1sequential_gru_gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€Ц: : : : : *%
_read_only_resource_inputs
	*+
body#R!
sequential_gru_while_body_56412*+
cond#R!
sequential_gru_while_cond_56411*9
output_shapes(
&: : : : :€€€€€€€€€Ц: : : : : *
parallel_iterations 2
sequential/gru/while”
?sequential/gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€Ц   2A
?sequential/gru/TensorArrayV2Stack/TensorListStack/element_shape•
1sequential/gru/TensorArrayV2Stack/TensorListStackTensorListStacksequential/gru/while:output:3Hsequential/gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€Ц*
element_dtype023
1sequential/gru/TensorArrayV2Stack/TensorListStackЯ
$sequential/gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2&
$sequential/gru/strided_slice_3/stackЪ
&sequential/gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential/gru/strided_slice_3/stack_1Ъ
&sequential/gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&sequential/gru/strided_slice_3/stack_2х
sequential/gru/strided_slice_3StridedSlice:sequential/gru/TensorArrayV2Stack/TensorListStack:tensor:0-sequential/gru/strided_slice_3/stack:output:0/sequential/gru/strided_slice_3/stack_1:output:0/sequential/gru/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
shrink_axis_mask2 
sequential/gru/strided_slice_3Ч
sequential/gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2!
sequential/gru/transpose_1/permв
sequential/gru/transpose_1	Transpose:sequential/gru/TensorArrayV2Stack/TensorListStack:tensor:0(sequential/gru/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€Ц2
sequential/gru/transpose_1Д
sequential/gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/gru/runtimeЅ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes
:	Ц*
dtype02(
&sequential/dense/MatMul/ReadVariableOp«
sequential/dense/MatMulMatMul'sequential/gru/strided_slice_3:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense/MatMulњ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp≈
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense/BiasAddФ
sequential/dense/SoftmaxSoftmax!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense/Softmax≥
IdentityIdentity"sequential/dense/Softmax:softmax:0(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup'^sequential/gru/gru_cell/ReadVariableOp)^sequential/gru/gru_cell/ReadVariableOp_1)^sequential/gru/gru_cell/ReadVariableOp_2)^sequential/gru/gru_cell/ReadVariableOp_3)^sequential/gru/gru_cell/ReadVariableOp_4)^sequential/gru/gru_cell/ReadVariableOp_5)^sequential/gru/gru_cell/ReadVariableOp_6^sequential/gru/while*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2P
&sequential/gru/gru_cell/ReadVariableOp&sequential/gru/gru_cell/ReadVariableOp2T
(sequential/gru/gru_cell/ReadVariableOp_1(sequential/gru/gru_cell/ReadVariableOp_12T
(sequential/gru/gru_cell/ReadVariableOp_2(sequential/gru/gru_cell/ReadVariableOp_22T
(sequential/gru/gru_cell/ReadVariableOp_3(sequential/gru/gru_cell/ReadVariableOp_32T
(sequential/gru/gru_cell/ReadVariableOp_4(sequential/gru/gru_cell/ReadVariableOp_42T
(sequential/gru/gru_cell/ReadVariableOp_5(sequential/gru/gru_cell/ReadVariableOp_52T
(sequential/gru/gru_cell/ReadVariableOp_6(sequential/gru/gru_cell/ReadVariableOp_62,
sequential/gru/whilesequential/gru/while:X T
'
_output_shapes
:€€€€€€€€€
)
_user_specified_nameembedding_input
і

т
@__inference_dense_layer_call_and_return_conditional_losses_57649

inputs1
matmul_readvariableop_resource:	Ц-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ц*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€Ц: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€Ц
 
_user_specified_nameinputs
О"
Ы
while_body_56721
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0)
while_gru_cell_56743_0:	¬)
while_gru_cell_56745_0:	2¬*
while_gru_cell_56747_0:
Ц¬
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor'
while_gru_cell_56743:	¬'
while_gru_cell_56745:	2¬(
while_gru_cell_56747:
Ц¬ИҐ&while/gru_cell/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЭ
&while/gru_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_56743_0while_gru_cell_56745_0while_gru_cell_56747_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€Ц:€€€€€€€€€Ц*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_gru_cell_layer_call_and_return_conditional_losses_567082(
&while/gru_cell/StatefulPartitionedCallу
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder/while/gru_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1З
while/IdentityIdentitywhile/add_1:z:0'^while/gru_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЪ
while/Identity_1Identitywhile_while_maximum_iterations'^while/gru_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Й
while/Identity_2Identitywhile/add:z:0'^while/gru_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2ґ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/gru_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3љ
while/Identity_4Identity/while/gru_cell/StatefulPartitionedCall:output:1'^while/gru_cell/StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/Identity_4".
while_gru_cell_56743while_gru_cell_56743_0".
while_gru_cell_56745while_gru_cell_56745_0".
while_gru_cell_56747while_gru_cell_56747_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :€€€€€€€€€Ц: : : : : 2P
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
:€€€€€€€€€Ц:

_output_shapes
: :

_output_shapes
: 
чч
Ћ
>__inference_gru_layer_call_and_return_conditional_losses_58073

inputs3
 gru_cell_readvariableop_resource:	¬5
"gru_cell_readvariableop_1_resource:	2¬6
"gru_cell_readvariableop_4_resource:
Ц¬
identityИҐgru_cell/ReadVariableOpҐgru_cell/ReadVariableOp_1Ґgru_cell/ReadVariableOp_2Ґgru_cell/ReadVariableOp_3Ґgru_cell/ReadVariableOp_4Ґgru_cell/ReadVariableOp_5Ґgru_cell/ReadVariableOp_6ҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ц2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ц2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_mask2
strided_slice_2|
gru_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like/Shapey
gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru_cell/ones_like/Const®
gru_cell/ones_likeFill!gru_cell/ones_like/Shape:output:0!gru_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/ones_likeu
gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru_cell/dropout/Const£
gru_cell/dropout/MulMulgru_cell/ones_like:output:0gru_cell/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout/Mul{
gru_cell/dropout/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell/dropout/Shapeо
-gru_cell/dropout/random_uniform/RandomUniformRandomUniformgru_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2эГЎ2/
-gru_cell/dropout/random_uniform/RandomUniformЗ
gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2!
gru_cell/dropout/GreaterEqual/yв
gru_cell/dropout/GreaterEqualGreaterEqual6gru_cell/dropout/random_uniform/RandomUniform:output:0(gru_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout/GreaterEqualЪ
gru_cell/dropout/CastCast!gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout/CastЮ
gru_cell/dropout/Mul_1Mulgru_cell/dropout/Mul:z:0gru_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout/Mul_1y
gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru_cell/dropout_1/Const©
gru_cell/dropout_1/MulMulgru_cell/ones_like:output:0!gru_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout_1/Mul
gru_cell/dropout_1/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_1/Shapeф
/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2√ЕТ21
/gru_cell/dropout_1/random_uniform/RandomUniformЛ
!gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2#
!gru_cell/dropout_1/GreaterEqual/yк
gru_cell/dropout_1/GreaterEqualGreaterEqual8gru_cell/dropout_1/random_uniform/RandomUniform:output:0*gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22!
gru_cell/dropout_1/GreaterEqual†
gru_cell/dropout_1/CastCast#gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout_1/Cast¶
gru_cell/dropout_1/Mul_1Mulgru_cell/dropout_1/Mul:z:0gru_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout_1/Mul_1y
gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru_cell/dropout_2/Const©
gru_cell/dropout_2/MulMulgru_cell/ones_like:output:0!gru_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout_2/Mul
gru_cell/dropout_2/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_2/Shapeф
/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2Ям≠21
/gru_cell/dropout_2/random_uniform/RandomUniformЛ
!gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2#
!gru_cell/dropout_2/GreaterEqual/yк
gru_cell/dropout_2/GreaterEqualGreaterEqual8gru_cell/dropout_2/random_uniform/RandomUniform:output:0*gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22!
gru_cell/dropout_2/GreaterEqual†
gru_cell/dropout_2/CastCast#gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout_2/Cast¶
gru_cell/dropout_2/Mul_1Mulgru_cell/dropout_2/Mul:z:0gru_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout_2/Mul_1v
gru_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like_1/Shape}
gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru_cell/ones_like_1/Const±
gru_cell/ones_like_1Fill#gru_cell/ones_like_1/Shape:output:0#gru_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/ones_like_1y
gru_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru_cell/dropout_3/Constђ
gru_cell/dropout_3/MulMulgru_cell/ones_like_1:output:0!gru_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_3/MulБ
gru_cell/dropout_3/ShapeShapegru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_3/Shapeх
/gru_cell/dropout_3/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2Тх‘21
/gru_cell/dropout_3/random_uniform/RandomUniformЛ
!gru_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2#
!gru_cell/dropout_3/GreaterEqual/yл
gru_cell/dropout_3/GreaterEqualGreaterEqual8gru_cell/dropout_3/random_uniform/RandomUniform:output:0*gru_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2!
gru_cell/dropout_3/GreaterEqual°
gru_cell/dropout_3/CastCast#gru_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_3/CastІ
gru_cell/dropout_3/Mul_1Mulgru_cell/dropout_3/Mul:z:0gru_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_3/Mul_1y
gru_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru_cell/dropout_4/Constђ
gru_cell/dropout_4/MulMulgru_cell/ones_like_1:output:0!gru_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_4/MulБ
gru_cell/dropout_4/ShapeShapegru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_4/Shapeф
/gru_cell/dropout_4/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2С«21
/gru_cell/dropout_4/random_uniform/RandomUniformЛ
!gru_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2#
!gru_cell/dropout_4/GreaterEqual/yл
gru_cell/dropout_4/GreaterEqualGreaterEqual8gru_cell/dropout_4/random_uniform/RandomUniform:output:0*gru_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2!
gru_cell/dropout_4/GreaterEqual°
gru_cell/dropout_4/CastCast#gru_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_4/CastІ
gru_cell/dropout_4/Mul_1Mulgru_cell/dropout_4/Mul:z:0gru_cell/dropout_4/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_4/Mul_1y
gru_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru_cell/dropout_5/Constђ
gru_cell/dropout_5/MulMulgru_cell/ones_like_1:output:0!gru_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_5/MulБ
gru_cell/dropout_5/ShapeShapegru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_5/Shapeх
/gru_cell/dropout_5/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2хЂИ21
/gru_cell/dropout_5/random_uniform/RandomUniformЛ
!gru_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2#
!gru_cell/dropout_5/GreaterEqual/yл
gru_cell/dropout_5/GreaterEqualGreaterEqual8gru_cell/dropout_5/random_uniform/RandomUniform:output:0*gru_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2!
gru_cell/dropout_5/GreaterEqual°
gru_cell/dropout_5/CastCast#gru_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_5/CastІ
gru_cell/dropout_5/Mul_1Mulgru_cell/dropout_5/Mul:z:0gru_cell/dropout_5/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_5/Mul_1Ф
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	¬*
dtype02
gru_cell/ReadVariableOpЗ
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:¬:¬*	
num2
gru_cell/unstackЛ
gru_cell/mulMulstrided_slice_2:output:0gru_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/mulС
gru_cell/mul_1Mulstrided_slice_2:output:0gru_cell/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/mul_1С
gru_cell/mul_2Mulstrided_slice_2:output:0gru_cell/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/mul_2Ъ
gru_cell/ReadVariableOp_1ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru_cell/ReadVariableOp_1Н
gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
gru_cell/strided_slice/stackС
gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2 
gru_cell/strided_slice/stack_1С
gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2 
gru_cell/strided_slice/stack_2µ
gru_cell/strided_sliceStridedSlice!gru_cell/ReadVariableOp_1:value:0%gru_cell/strided_slice/stack:output:0'gru_cell/strided_slice/stack_1:output:0'gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru_cell/strided_sliceТ
gru_cell/MatMulMatMulgru_cell/mul:z:0gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMulЪ
gru_cell/ReadVariableOp_2ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru_cell/ReadVariableOp_2С
gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2 
gru_cell/strided_slice_1/stackХ
 gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2"
 gru_cell/strided_slice_1/stack_1Х
 gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_1/stack_2њ
gru_cell/strided_slice_1StridedSlice!gru_cell/ReadVariableOp_2:value:0'gru_cell/strided_slice_1/stack:output:0)gru_cell/strided_slice_1/stack_1:output:0)gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru_cell/strided_slice_1Ъ
gru_cell/MatMul_1MatMulgru_cell/mul_1:z:0!gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_1Ъ
gru_cell/ReadVariableOp_3ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru_cell/ReadVariableOp_3С
gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2 
gru_cell/strided_slice_2/stackХ
 gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell/strided_slice_2/stack_1Х
 gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_2/stack_2њ
gru_cell/strided_slice_2StridedSlice!gru_cell/ReadVariableOp_3:value:0'gru_cell/strided_slice_2/stack:output:0)gru_cell/strided_slice_2/stack_1:output:0)gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru_cell/strided_slice_2Ъ
gru_cell/MatMul_2MatMulgru_cell/mul_2:z:0!gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_2К
gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_3/stackП
 gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2"
 gru_cell/strided_slice_3/stack_1О
 gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_3/stack_2£
gru_cell/strided_slice_3StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_3/stack:output:0)gru_cell/strided_slice_3/stack_1:output:0)gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
gru_cell/strided_slice_3†
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0!gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAddЛ
gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2 
gru_cell/strided_slice_4/stackП
 gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gru_cell/strided_slice_4/stack_1О
 gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_4/stack_2С
gru_cell/strided_slice_4StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_4/stack:output:0)gru_cell/strided_slice_4/stack_1:output:0)gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
gru_cell/strided_slice_4¶
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0!gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_1Л
gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gru_cell/strided_slice_5/stackО
 gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell/strided_slice_5/stack_1О
 gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_5/stack_2°
gru_cell/strided_slice_5StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_5/stack:output:0)gru_cell/strided_slice_5/stack_1:output:0)gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
gru_cell/strided_slice_5¶
gru_cell/BiasAdd_2BiasAddgru_cell/MatMul_2:product:0!gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_2И
gru_cell/mul_3Mulzeros:output:0gru_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_3И
gru_cell/mul_4Mulzeros:output:0gru_cell/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_4И
gru_cell/mul_5Mulzeros:output:0gru_cell/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_5Ы
gru_cell/ReadVariableOp_4ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru_cell/ReadVariableOp_4С
gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell/strided_slice_6/stackХ
 gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2"
 gru_cell/strided_slice_6/stack_1Х
 gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_6/stack_2ј
gru_cell/strided_slice_6StridedSlice!gru_cell/ReadVariableOp_4:value:0'gru_cell/strided_slice_6/stack:output:0)gru_cell/strided_slice_6/stack_1:output:0)gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru_cell/strided_slice_6Ъ
gru_cell/MatMul_3MatMulgru_cell/mul_3:z:0!gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_3Ы
gru_cell/ReadVariableOp_5ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru_cell/ReadVariableOp_5С
gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2 
gru_cell/strided_slice_7/stackХ
 gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2"
 gru_cell/strided_slice_7/stack_1Х
 gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_7/stack_2ј
gru_cell/strided_slice_7StridedSlice!gru_cell/ReadVariableOp_5:value:0'gru_cell/strided_slice_7/stack:output:0)gru_cell/strided_slice_7/stack_1:output:0)gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru_cell/strided_slice_7Ъ
gru_cell/MatMul_4MatMulgru_cell/mul_4:z:0!gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_4К
gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_8/stackП
 gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2"
 gru_cell/strided_slice_8/stack_1О
 gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_8/stack_2£
gru_cell/strided_slice_8StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_8/stack:output:0)gru_cell/strided_slice_8/stack_1:output:0)gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
gru_cell/strided_slice_8¶
gru_cell/BiasAdd_3BiasAddgru_cell/MatMul_3:product:0!gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_3Л
gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2 
gru_cell/strided_slice_9/stackП
 gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gru_cell/strided_slice_9/stack_1О
 gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_9/stack_2С
gru_cell/strided_slice_9StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_9/stack:output:0)gru_cell/strided_slice_9/stack_1:output:0)gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
gru_cell/strided_slice_9¶
gru_cell/BiasAdd_4BiasAddgru_cell/MatMul_4:product:0!gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_4Р
gru_cell/addAddV2gru_cell/BiasAdd:output:0gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/addt
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/SigmoidЦ
gru_cell/add_1AddV2gru_cell/BiasAdd_1:output:0gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/add_1z
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/Sigmoid_1Ы
gru_cell/ReadVariableOp_6ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru_cell/ReadVariableOp_6У
gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2!
gru_cell/strided_slice_10/stackЧ
!gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!gru_cell/strided_slice_10/stack_1Ч
!gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell/strided_slice_10/stack_2≈
gru_cell/strided_slice_10StridedSlice!gru_cell/ReadVariableOp_6:value:0(gru_cell/strided_slice_10/stack:output:0*gru_cell/strided_slice_10/stack_1:output:0*gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru_cell/strided_slice_10Ы
gru_cell/MatMul_5MatMulgru_cell/mul_5:z:0"gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_5Н
gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gru_cell/strided_slice_11/stackР
!gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2#
!gru_cell/strided_slice_11/stack_1Р
!gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!gru_cell/strided_slice_11/stack_2¶
gru_cell/strided_slice_11StridedSlicegru_cell/unstack:output:1(gru_cell/strided_slice_11/stack:output:0*gru_cell/strided_slice_11/stack_1:output:0*gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
gru_cell/strided_slice_11І
gru_cell/BiasAdd_5BiasAddgru_cell/MatMul_5:product:0"gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_5П
gru_cell/mul_6Mulgru_cell/Sigmoid_1:y:0gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_6Н
gru_cell/add_2AddV2gru_cell/BiasAdd_2:output:0gru_cell/mul_6:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/add_2m
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/TanhА
gru_cell/mul_7Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_7e
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru_cell/sub/xЕ
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/sub
gru_cell/mul_8Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_8Д
gru_cell/add_3AddV2gru_cell/mul_7:z:0gru_cell/mul_8:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€Ц   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterХ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource"gru_cell_readvariableop_1_resource"gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€Ц: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_57873*
condR
while_cond_57872*9
output_shapes(
&: : : : :€€€€€€€€€Ц: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€Ц   22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€Ц*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€Ц2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЈ
IdentityIdentitystrided_slice_3:output:0^gru_cell/ReadVariableOp^gru_cell/ReadVariableOp_1^gru_cell/ReadVariableOp_2^gru_cell/ReadVariableOp_3^gru_cell/ReadVariableOp_4^gru_cell/ReadVariableOp_5^gru_cell/ReadVariableOp_6^while*
T0*(
_output_shapes
:€€€€€€€€€Ц2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€2: : : 22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp26
gru_cell/ReadVariableOp_1gru_cell/ReadVariableOp_126
gru_cell/ReadVariableOp_2gru_cell/ReadVariableOp_226
gru_cell/ReadVariableOp_3gru_cell/ReadVariableOp_326
gru_cell/ReadVariableOp_4gru_cell/ReadVariableOp_426
gru_cell/ReadVariableOp_5gru_cell/ReadVariableOp_526
gru_cell/ReadVariableOp_6gru_cell/ReadVariableOp_62
whilewhile:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
м
с
gru_while_cond_58393$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2&
"gru_while_less_gru_strided_slice_1;
7gru_while_gru_while_cond_58393___redundant_placeholder0;
7gru_while_gru_while_cond_58393___redundant_placeholder1;
7gru_while_gru_while_cond_58393___redundant_placeholder2;
7gru_while_gru_while_cond_58393___redundant_placeholder3
gru_while_identity
Д
gru/while/LessLessgru_while_placeholder"gru_while_less_gru_strided_slice_1*
T0*
_output_shapes
: 2
gru/while/Lessi
gru/while/IdentityIdentitygru/while/Less:z:0*
T0
*
_output_shapes
: 2
gru/while/Identity"1
gru_while_identitygru/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :€€€€€€€€€Ц: ::::: 
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
:€€€€€€€€€Ц:

_output_shapes
: :

_output_shapes
:
ОЭ
ъ
E__inference_sequential_layer_call_and_return_conditional_losses_58945

inputs2
 embedding_embedding_lookup_58557:27
$gru_gru_cell_readvariableop_resource:	¬9
&gru_gru_cell_readvariableop_1_resource:	2¬:
&gru_gru_cell_readvariableop_4_resource:
Ц¬7
$dense_matmul_readvariableop_resource:	Ц3
%dense_biasadd_readvariableop_resource:
identityИҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐembedding/embedding_lookupҐgru/gru_cell/ReadVariableOpҐgru/gru_cell/ReadVariableOp_1Ґgru/gru_cell/ReadVariableOp_2Ґgru/gru_cell/ReadVariableOp_3Ґgru/gru_cell/ReadVariableOp_4Ґgru/gru_cell/ReadVariableOp_5Ґgru/gru_cell/ReadVariableOp_6Ґ	gru/whileq
embedding/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
embedding/Cast≠
embedding/embedding_lookupResourceGather embedding_embedding_lookup_58557embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/58557*+
_output_shapes
:€€€€€€€€€2*
dtype02
embedding/embedding_lookupФ
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/58557*+
_output_shapes
:€€€€€€€€€22%
#embedding/embedding_lookup/IdentityЊ
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€22'
%embedding/embedding_lookup/Identity_1t
	gru/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
	gru/Shape|
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru/strided_slice/stackА
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice/stack_1А
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice/stack_2ъ
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru/strided_slicee
gru/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ц2
gru/zeros/mul/y|
gru/zeros/mulMulgru/strided_slice:output:0gru/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru/zeros/mulg
gru/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
gru/zeros/Less/yw
gru/zeros/LessLessgru/zeros/mul:z:0gru/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru/zeros/Lessk
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ц2
gru/zeros/packed/1У
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru/zeros/packedg
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru/zeros/ConstЖ
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	gru/zeros}
gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru/transpose/permЃ
gru/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0gru/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
gru/transpose[
gru/Shape_1Shapegru/transpose:y:0*
T0*
_output_shapes
:2
gru/Shape_1А
gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru/strided_slice_1/stackД
gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice_1/stack_1Д
gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice_1/stack_2Ж
gru/strided_slice_1StridedSlicegru/Shape_1:output:0"gru/strided_slice_1/stack:output:0$gru/strided_slice_1/stack_1:output:0$gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru/strided_slice_1Н
gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2!
gru/TensorArrayV2/element_shape¬
gru/TensorArrayV2TensorListReserve(gru/TensorArrayV2/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru/TensorArrayV2«
9gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   2;
9gru/TensorArrayUnstack/TensorListFromTensor/element_shapeИ
+gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru/transpose:y:0Bgru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02-
+gru/TensorArrayUnstack/TensorListFromTensorА
gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru/strided_slice_2/stackД
gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice_2/stack_1Д
gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice_2/stack_2Ф
gru/strided_slice_2StridedSlicegru/transpose:y:0"gru/strided_slice_2/stack:output:0$gru/strided_slice_2/stack_1:output:0$gru/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_mask2
gru/strided_slice_2И
gru/gru_cell/ones_like/ShapeShapegru/strided_slice_2:output:0*
T0*
_output_shapes
:2
gru/gru_cell/ones_like/ShapeБ
gru/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru/gru_cell/ones_like/ConstЄ
gru/gru_cell/ones_likeFill%gru/gru_cell/ones_like/Shape:output:0%gru/gru_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru/gru_cell/ones_like}
gru/gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru/gru_cell/dropout/Const≥
gru/gru_cell/dropout/MulMulgru/gru_cell/ones_like:output:0#gru/gru_cell/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru/gru_cell/dropout/MulЗ
gru/gru_cell/dropout/ShapeShapegru/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru/gru_cell/dropout/Shapeъ
1gru/gru_cell/dropout/random_uniform/RandomUniformRandomUniform#gru/gru_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2Џ∞Ф23
1gru/gru_cell/dropout/random_uniform/RandomUniformП
#gru/gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2%
#gru/gru_cell/dropout/GreaterEqual/yт
!gru/gru_cell/dropout/GreaterEqualGreaterEqual:gru/gru_cell/dropout/random_uniform/RandomUniform:output:0,gru/gru_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22#
!gru/gru_cell/dropout/GreaterEqual¶
gru/gru_cell/dropout/CastCast%gru/gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
gru/gru_cell/dropout/CastЃ
gru/gru_cell/dropout/Mul_1Mulgru/gru_cell/dropout/Mul:z:0gru/gru_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru/gru_cell/dropout/Mul_1Б
gru/gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru/gru_cell/dropout_1/Constє
gru/gru_cell/dropout_1/MulMulgru/gru_cell/ones_like:output:0%gru/gru_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru/gru_cell/dropout_1/MulЛ
gru/gru_cell/dropout_1/ShapeShapegru/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru/gru_cell/dropout_1/Shape€
3gru/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform%gru/gru_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2жщ25
3gru/gru_cell/dropout_1/random_uniform/RandomUniformУ
%gru/gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2'
%gru/gru_cell/dropout_1/GreaterEqual/yъ
#gru/gru_cell/dropout_1/GreaterEqualGreaterEqual<gru/gru_cell/dropout_1/random_uniform/RandomUniform:output:0.gru/gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22%
#gru/gru_cell/dropout_1/GreaterEqualђ
gru/gru_cell/dropout_1/CastCast'gru/gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
gru/gru_cell/dropout_1/Castґ
gru/gru_cell/dropout_1/Mul_1Mulgru/gru_cell/dropout_1/Mul:z:0gru/gru_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru/gru_cell/dropout_1/Mul_1Б
gru/gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru/gru_cell/dropout_2/Constє
gru/gru_cell/dropout_2/MulMulgru/gru_cell/ones_like:output:0%gru/gru_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru/gru_cell/dropout_2/MulЛ
gru/gru_cell/dropout_2/ShapeShapegru/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru/gru_cell/dropout_2/ShapeА
3gru/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform%gru/gru_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2њЉЊ25
3gru/gru_cell/dropout_2/random_uniform/RandomUniformУ
%gru/gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2'
%gru/gru_cell/dropout_2/GreaterEqual/yъ
#gru/gru_cell/dropout_2/GreaterEqualGreaterEqual<gru/gru_cell/dropout_2/random_uniform/RandomUniform:output:0.gru/gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22%
#gru/gru_cell/dropout_2/GreaterEqualђ
gru/gru_cell/dropout_2/CastCast'gru/gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
gru/gru_cell/dropout_2/Castґ
gru/gru_cell/dropout_2/Mul_1Mulgru/gru_cell/dropout_2/Mul:z:0gru/gru_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru/gru_cell/dropout_2/Mul_1В
gru/gru_cell/ones_like_1/ShapeShapegru/zeros:output:0*
T0*
_output_shapes
:2 
gru/gru_cell/ones_like_1/ShapeЕ
gru/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2 
gru/gru_cell/ones_like_1/ConstЅ
gru/gru_cell/ones_like_1Fill'gru/gru_cell/ones_like_1/Shape:output:0'gru/gru_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/ones_like_1Б
gru/gru_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru/gru_cell/dropout_3/ConstЉ
gru/gru_cell/dropout_3/MulMul!gru/gru_cell/ones_like_1:output:0%gru/gru_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/dropout_3/MulН
gru/gru_cell/dropout_3/ShapeShape!gru/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru/gru_cell/dropout_3/ShapeБ
3gru/gru_cell/dropout_3/random_uniform/RandomUniformRandomUniform%gru/gru_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2Е”ў25
3gru/gru_cell/dropout_3/random_uniform/RandomUniformУ
%gru/gru_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2'
%gru/gru_cell/dropout_3/GreaterEqual/yы
#gru/gru_cell/dropout_3/GreaterEqualGreaterEqual<gru/gru_cell/dropout_3/random_uniform/RandomUniform:output:0.gru/gru_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2%
#gru/gru_cell/dropout_3/GreaterEqual≠
gru/gru_cell/dropout_3/CastCast'gru/gru_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/dropout_3/CastЈ
gru/gru_cell/dropout_3/Mul_1Mulgru/gru_cell/dropout_3/Mul:z:0gru/gru_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/dropout_3/Mul_1Б
gru/gru_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru/gru_cell/dropout_4/ConstЉ
gru/gru_cell/dropout_4/MulMul!gru/gru_cell/ones_like_1:output:0%gru/gru_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/dropout_4/MulН
gru/gru_cell/dropout_4/ShapeShape!gru/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru/gru_cell/dropout_4/ShapeА
3gru/gru_cell/dropout_4/random_uniform/RandomUniformRandomUniform%gru/gru_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2єуN25
3gru/gru_cell/dropout_4/random_uniform/RandomUniformУ
%gru/gru_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2'
%gru/gru_cell/dropout_4/GreaterEqual/yы
#gru/gru_cell/dropout_4/GreaterEqualGreaterEqual<gru/gru_cell/dropout_4/random_uniform/RandomUniform:output:0.gru/gru_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2%
#gru/gru_cell/dropout_4/GreaterEqual≠
gru/gru_cell/dropout_4/CastCast'gru/gru_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/dropout_4/CastЈ
gru/gru_cell/dropout_4/Mul_1Mulgru/gru_cell/dropout_4/Mul:z:0gru/gru_cell/dropout_4/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/dropout_4/Mul_1Б
gru/gru_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru/gru_cell/dropout_5/ConstЉ
gru/gru_cell/dropout_5/MulMul!gru/gru_cell/ones_like_1:output:0%gru/gru_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/dropout_5/MulН
gru/gru_cell/dropout_5/ShapeShape!gru/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru/gru_cell/dropout_5/ShapeБ
3gru/gru_cell/dropout_5/random_uniform/RandomUniformRandomUniform%gru/gru_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2ГфЙ25
3gru/gru_cell/dropout_5/random_uniform/RandomUniformУ
%gru/gru_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2'
%gru/gru_cell/dropout_5/GreaterEqual/yы
#gru/gru_cell/dropout_5/GreaterEqualGreaterEqual<gru/gru_cell/dropout_5/random_uniform/RandomUniform:output:0.gru/gru_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2%
#gru/gru_cell/dropout_5/GreaterEqual≠
gru/gru_cell/dropout_5/CastCast'gru/gru_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/dropout_5/CastЈ
gru/gru_cell/dropout_5/Mul_1Mulgru/gru_cell/dropout_5/Mul:z:0gru/gru_cell/dropout_5/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/dropout_5/Mul_1†
gru/gru_cell/ReadVariableOpReadVariableOp$gru_gru_cell_readvariableop_resource*
_output_shapes
:	¬*
dtype02
gru/gru_cell/ReadVariableOpУ
gru/gru_cell/unstackUnpack#gru/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:¬:¬*	
num2
gru/gru_cell/unstackЫ
gru/gru_cell/mulMulgru/strided_slice_2:output:0gru/gru_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru/gru_cell/mul°
gru/gru_cell/mul_1Mulgru/strided_slice_2:output:0 gru/gru_cell/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru/gru_cell/mul_1°
gru/gru_cell/mul_2Mulgru/strided_slice_2:output:0 gru/gru_cell/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru/gru_cell/mul_2¶
gru/gru_cell/ReadVariableOp_1ReadVariableOp&gru_gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru/gru_cell/ReadVariableOp_1Х
 gru/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru/gru_cell/strided_slice/stackЩ
"gru/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2$
"gru/gru_cell/strided_slice/stack_1Щ
"gru/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru/gru_cell/strided_slice/stack_2Ќ
gru/gru_cell/strided_sliceStridedSlice%gru/gru_cell/ReadVariableOp_1:value:0)gru/gru_cell/strided_slice/stack:output:0+gru/gru_cell/strided_slice/stack_1:output:0+gru/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru/gru_cell/strided_sliceҐ
gru/gru_cell/MatMulMatMulgru/gru_cell/mul:z:0#gru/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/MatMul¶
gru/gru_cell/ReadVariableOp_2ReadVariableOp&gru_gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru/gru_cell/ReadVariableOp_2Щ
"gru/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2$
"gru/gru_cell/strided_slice_1/stackЭ
$gru/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2&
$gru/gru_cell/strided_slice_1/stack_1Э
$gru/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru/gru_cell/strided_slice_1/stack_2„
gru/gru_cell/strided_slice_1StridedSlice%gru/gru_cell/ReadVariableOp_2:value:0+gru/gru_cell/strided_slice_1/stack:output:0-gru/gru_cell/strided_slice_1/stack_1:output:0-gru/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru/gru_cell/strided_slice_1™
gru/gru_cell/MatMul_1MatMulgru/gru_cell/mul_1:z:0%gru/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/MatMul_1¶
gru/gru_cell/ReadVariableOp_3ReadVariableOp&gru_gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru/gru_cell/ReadVariableOp_3Щ
"gru/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"gru/gru_cell/strided_slice_2/stackЭ
$gru/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gru/gru_cell/strided_slice_2/stack_1Э
$gru/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru/gru_cell/strided_slice_2/stack_2„
gru/gru_cell/strided_slice_2StridedSlice%gru/gru_cell/ReadVariableOp_3:value:0+gru/gru_cell/strided_slice_2/stack:output:0-gru/gru_cell/strided_slice_2/stack_1:output:0-gru/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru/gru_cell/strided_slice_2™
gru/gru_cell/MatMul_2MatMulgru/gru_cell/mul_2:z:0%gru/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/MatMul_2Т
"gru/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"gru/gru_cell/strided_slice_3/stackЧ
$gru/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2&
$gru/gru_cell/strided_slice_3/stack_1Ц
$gru/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$gru/gru_cell/strided_slice_3/stack_2ї
gru/gru_cell/strided_slice_3StridedSlicegru/gru_cell/unstack:output:0+gru/gru_cell/strided_slice_3/stack:output:0-gru/gru_cell/strided_slice_3/stack_1:output:0-gru/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
gru/gru_cell/strided_slice_3∞
gru/gru_cell/BiasAddBiasAddgru/gru_cell/MatMul:product:0%gru/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/BiasAddУ
"gru/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2$
"gru/gru_cell/strided_slice_4/stackЧ
$gru/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2&
$gru/gru_cell/strided_slice_4/stack_1Ц
$gru/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$gru/gru_cell/strided_slice_4/stack_2©
gru/gru_cell/strided_slice_4StridedSlicegru/gru_cell/unstack:output:0+gru/gru_cell/strided_slice_4/stack:output:0-gru/gru_cell/strided_slice_4/stack_1:output:0-gru/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
gru/gru_cell/strided_slice_4ґ
gru/gru_cell/BiasAdd_1BiasAddgru/gru_cell/MatMul_1:product:0%gru/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/BiasAdd_1У
"gru/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2$
"gru/gru_cell/strided_slice_5/stackЦ
$gru/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$gru/gru_cell/strided_slice_5/stack_1Ц
$gru/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$gru/gru_cell/strided_slice_5/stack_2є
gru/gru_cell/strided_slice_5StridedSlicegru/gru_cell/unstack:output:0+gru/gru_cell/strided_slice_5/stack:output:0-gru/gru_cell/strided_slice_5/stack_1:output:0-gru/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
gru/gru_cell/strided_slice_5ґ
gru/gru_cell/BiasAdd_2BiasAddgru/gru_cell/MatMul_2:product:0%gru/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/BiasAdd_2Ш
gru/gru_cell/mul_3Mulgru/zeros:output:0 gru/gru_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/mul_3Ш
gru/gru_cell/mul_4Mulgru/zeros:output:0 gru/gru_cell/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/mul_4Ш
gru/gru_cell/mul_5Mulgru/zeros:output:0 gru/gru_cell/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/mul_5І
gru/gru_cell/ReadVariableOp_4ReadVariableOp&gru_gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru/gru_cell/ReadVariableOp_4Щ
"gru/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gru/gru_cell/strided_slice_6/stackЭ
$gru/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2&
$gru/gru_cell/strided_slice_6/stack_1Э
$gru/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru/gru_cell/strided_slice_6/stack_2Ў
gru/gru_cell/strided_slice_6StridedSlice%gru/gru_cell/ReadVariableOp_4:value:0+gru/gru_cell/strided_slice_6/stack:output:0-gru/gru_cell/strided_slice_6/stack_1:output:0-gru/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru/gru_cell/strided_slice_6™
gru/gru_cell/MatMul_3MatMulgru/gru_cell/mul_3:z:0%gru/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/MatMul_3І
gru/gru_cell/ReadVariableOp_5ReadVariableOp&gru_gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru/gru_cell/ReadVariableOp_5Щ
"gru/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2$
"gru/gru_cell/strided_slice_7/stackЭ
$gru/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2&
$gru/gru_cell/strided_slice_7/stack_1Э
$gru/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru/gru_cell/strided_slice_7/stack_2Ў
gru/gru_cell/strided_slice_7StridedSlice%gru/gru_cell/ReadVariableOp_5:value:0+gru/gru_cell/strided_slice_7/stack:output:0-gru/gru_cell/strided_slice_7/stack_1:output:0-gru/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru/gru_cell/strided_slice_7™
gru/gru_cell/MatMul_4MatMulgru/gru_cell/mul_4:z:0%gru/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/MatMul_4Т
"gru/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"gru/gru_cell/strided_slice_8/stackЧ
$gru/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2&
$gru/gru_cell/strided_slice_8/stack_1Ц
$gru/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$gru/gru_cell/strided_slice_8/stack_2ї
gru/gru_cell/strided_slice_8StridedSlicegru/gru_cell/unstack:output:1+gru/gru_cell/strided_slice_8/stack:output:0-gru/gru_cell/strided_slice_8/stack_1:output:0-gru/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
gru/gru_cell/strided_slice_8ґ
gru/gru_cell/BiasAdd_3BiasAddgru/gru_cell/MatMul_3:product:0%gru/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/BiasAdd_3У
"gru/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2$
"gru/gru_cell/strided_slice_9/stackЧ
$gru/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2&
$gru/gru_cell/strided_slice_9/stack_1Ц
$gru/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$gru/gru_cell/strided_slice_9/stack_2©
gru/gru_cell/strided_slice_9StridedSlicegru/gru_cell/unstack:output:1+gru/gru_cell/strided_slice_9/stack:output:0-gru/gru_cell/strided_slice_9/stack_1:output:0-gru/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
gru/gru_cell/strided_slice_9ґ
gru/gru_cell/BiasAdd_4BiasAddgru/gru_cell/MatMul_4:product:0%gru/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/BiasAdd_4†
gru/gru_cell/addAddV2gru/gru_cell/BiasAdd:output:0gru/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/addА
gru/gru_cell/SigmoidSigmoidgru/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/Sigmoid¶
gru/gru_cell/add_1AddV2gru/gru_cell/BiasAdd_1:output:0gru/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/add_1Ж
gru/gru_cell/Sigmoid_1Sigmoidgru/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/Sigmoid_1І
gru/gru_cell/ReadVariableOp_6ReadVariableOp&gru_gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru/gru_cell/ReadVariableOp_6Ы
#gru/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2%
#gru/gru_cell/strided_slice_10/stackЯ
%gru/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%gru/gru_cell/strided_slice_10/stack_1Я
%gru/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%gru/gru_cell/strided_slice_10/stack_2Ё
gru/gru_cell/strided_slice_10StridedSlice%gru/gru_cell/ReadVariableOp_6:value:0,gru/gru_cell/strided_slice_10/stack:output:0.gru/gru_cell/strided_slice_10/stack_1:output:0.gru/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru/gru_cell/strided_slice_10Ђ
gru/gru_cell/MatMul_5MatMulgru/gru_cell/mul_5:z:0&gru/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/MatMul_5Х
#gru/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2%
#gru/gru_cell/strided_slice_11/stackШ
%gru/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2'
%gru/gru_cell/strided_slice_11/stack_1Ш
%gru/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%gru/gru_cell/strided_slice_11/stack_2Њ
gru/gru_cell/strided_slice_11StridedSlicegru/gru_cell/unstack:output:1,gru/gru_cell/strided_slice_11/stack:output:0.gru/gru_cell/strided_slice_11/stack_1:output:0.gru/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
gru/gru_cell/strided_slice_11Ј
gru/gru_cell/BiasAdd_5BiasAddgru/gru_cell/MatMul_5:product:0&gru/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/BiasAdd_5Я
gru/gru_cell/mul_6Mulgru/gru_cell/Sigmoid_1:y:0gru/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/mul_6Э
gru/gru_cell/add_2AddV2gru/gru_cell/BiasAdd_2:output:0gru/gru_cell/mul_6:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/add_2y
gru/gru_cell/TanhTanhgru/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/TanhР
gru/gru_cell/mul_7Mulgru/gru_cell/Sigmoid:y:0gru/zeros:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/mul_7m
gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru/gru_cell/sub/xХ
gru/gru_cell/subSubgru/gru_cell/sub/x:output:0gru/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/subП
gru/gru_cell/mul_8Mulgru/gru_cell/sub:z:0gru/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/mul_8Ф
gru/gru_cell/add_3AddV2gru/gru_cell/mul_7:z:0gru/gru_cell/mul_8:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/add_3Ч
!gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€Ц   2#
!gru/TensorArrayV2_1/element_shape»
gru/TensorArrayV2_1TensorListReserve*gru/TensorArrayV2_1/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru/TensorArrayV2_1V
gru/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

gru/timeЗ
gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
gru/while/maximum_iterationsr
gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru/while/loop_counterЌ
	gru/whileWhilegru/while/loop_counter:output:0%gru/while/maximum_iterations:output:0gru/time:output:0gru/TensorArrayV2_1:handle:0gru/zeros:output:0gru/strided_slice_1:output:0;gru/TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_gru_cell_readvariableop_resource&gru_gru_cell_readvariableop_1_resource&gru_gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€Ц: : : : : *%
_read_only_resource_inputs
	* 
bodyR
gru_while_body_58738* 
condR
gru_while_cond_58737*9
output_shapes(
&: : : : :€€€€€€€€€Ц: : : : : *
parallel_iterations 2
	gru/whileљ
4gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€Ц   26
4gru/TensorArrayV2Stack/TensorListStack/element_shapeщ
&gru/TensorArrayV2Stack/TensorListStackTensorListStackgru/while:output:3=gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€Ц*
element_dtype02(
&gru/TensorArrayV2Stack/TensorListStackЙ
gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
gru/strided_slice_3/stackД
gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru/strided_slice_3/stack_1Д
gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice_3/stack_2≥
gru/strided_slice_3StridedSlice/gru/TensorArrayV2Stack/TensorListStack:tensor:0"gru/strided_slice_3/stack:output:0$gru/strided_slice_3/stack_1:output:0$gru/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
shrink_axis_mask2
gru/strided_slice_3Б
gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru/transpose_1/permґ
gru/transpose_1	Transpose/gru/TensorArrayV2Stack/TensorListStack:tensor:0gru/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€Ц2
gru/transpose_1n
gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru/runtime†
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	Ц*
dtype02
dense/MatMul/ReadVariableOpЫ
dense/MatMulMatMulgru/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense/MatMulЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOpЩ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense/BiasAdds
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense/Softmaxѓ
IdentityIdentitydense/Softmax:softmax:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup^gru/gru_cell/ReadVariableOp^gru/gru_cell/ReadVariableOp_1^gru/gru_cell/ReadVariableOp_2^gru/gru_cell/ReadVariableOp_3^gru/gru_cell/ReadVariableOp_4^gru/gru_cell/ReadVariableOp_5^gru/gru_cell/ReadVariableOp_6
^gru/while*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2:
gru/gru_cell/ReadVariableOpgru/gru_cell/ReadVariableOp2>
gru/gru_cell/ReadVariableOp_1gru/gru_cell/ReadVariableOp_12>
gru/gru_cell/ReadVariableOp_2gru/gru_cell/ReadVariableOp_22>
gru/gru_cell/ReadVariableOp_3gru/gru_cell/ReadVariableOp_32>
gru/gru_cell/ReadVariableOp_4gru/gru_cell/ReadVariableOp_42>
gru/gru_cell/ReadVariableOp_5gru/gru_cell/ReadVariableOp_52>
gru/gru_cell/ReadVariableOp_6gru/gru_cell/ReadVariableOp_62
	gru/while	gru/while:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ц§
М
C__inference_gru_cell_layer_call_and_return_conditional_losses_60630

inputs
states_0*
readvariableop_resource:	¬,
readvariableop_1_resource:	2¬-
readvariableop_4_resource:
Ц¬
identity

identity_1ИҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2ҐReadVariableOp_3ҐReadVariableOp_4ҐReadVariableOp_5ҐReadVariableOp_6X
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
ones_like/ConstД
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape—
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2¶)2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_1/ConstЕ
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shapeў
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2∞бЙ2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout_1/GreaterEqual/y∆
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
dropout_1/GreaterEqualЕ
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
dropout_1/CastВ
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_2/ConstЕ
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shapeў
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2Ф€э2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout_2/GreaterEqual/y∆
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
dropout_2/GreaterEqualЕ
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
dropout_2/CastВ
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
dropout_2/Mul_1^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
ones_like_1/ConstН
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
ones_like_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_3/ConstИ
dropout_3/MulMulones_like_1:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
dropout_3/Mulf
dropout_3/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_3/ShapeЏ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2€№я2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout_3/GreaterEqual/y«
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
dropout_3/GreaterEqualЖ
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
dropout_3/CastГ
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
dropout_3/Mul_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_4/ConstИ
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/ShapeЏ
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2“аУ2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout_4/GreaterEqual/y«
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
dropout_4/GreaterEqualЖ
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
dropout_4/CastГ
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_5/ConstИ
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/ShapeЏ
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2—Ш£2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout_5/GreaterEqual/y«
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
dropout_5/GreaterEqualЖ
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
dropout_5/CastГ
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
dropout_5/Mul_1y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	¬*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:¬:¬*	
num2	
unstack^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
muld
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
mul_1d
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
mul_2
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
ReadVariableOp_1{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2€
strided_sliceStridedSliceReadVariableOp_1:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
strided_slicen
MatMulMatMulmul:z:0strided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
MatMul
ReadVariableOp_2ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
ReadVariableOp_2
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2
strided_slice_1/stackГ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_1/stack_1Г
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2Й
strided_slice_1StridedSliceReadVariableOp_2:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
strided_slice_1v
MatMul_1MatMul	mul_1:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2

MatMul_1
ReadVariableOp_3ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
ReadVariableOp_3
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_2/stackГ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stack_1Г
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2Й
strided_slice_2StridedSliceReadVariableOp_3:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
strided_slice_2v
MatMul_2MatMul	mul_2:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2

MatMul_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack}
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2н
strided_slice_3StridedSliceunstack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
strided_slice_3|
BiasAddBiasAddMatMul:product:0strided_slice_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2	
BiasAddy
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2
strided_slice_4/stack}
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
strided_slice_4/stack_1|
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_2џ
strided_slice_4StridedSliceunstack:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
strided_slice_4В
	BiasAdd_1BiasAddMatMul_1:product:0strided_slice_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	BiasAdd_1y
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2
strided_slice_5/stack|
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_5/stack_1|
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_2л
strided_slice_5StridedSliceunstack:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
strided_slice_5В
	BiasAdd_2BiasAddMatMul_2:product:0strided_slice_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	BiasAdd_2g
mul_3Mulstates_0dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_3g
mul_4Mulstates_0dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_4g
mul_5Mulstates_0dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_5А
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
ReadVariableOp_4
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stackГ
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2
strided_slice_6/stack_1Г
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2К
strided_slice_6StridedSliceReadVariableOp_4:value:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
strided_slice_6v
MatMul_3MatMul	mul_3:z:0strided_slice_6:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2

MatMul_3А
ReadVariableOp_5ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
ReadVariableOp_5
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2
strided_slice_7/stackГ
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_7/stack_1Г
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2К
strided_slice_7StridedSliceReadVariableOp_5:value:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
strided_slice_7v
MatMul_4MatMul	mul_4:z:0strided_slice_7:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2

MatMul_4x
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_8/stack}
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2
strided_slice_8/stack_1|
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_8/stack_2н
strided_slice_8StridedSliceunstack:output:1strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
strided_slice_8В
	BiasAdd_3BiasAddMatMul_3:product:0strided_slice_8:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	BiasAdd_3y
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2
strided_slice_9/stack}
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
strided_slice_9/stack_1|
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_9/stack_2џ
strided_slice_9StridedSliceunstack:output:1strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
strided_slice_9В
	BiasAdd_4BiasAddMatMul_4:product:0strided_slice_9:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	BiasAdd_4l
addAddV2BiasAdd:output:0BiasAdd_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2	
Sigmoidr
add_1AddV2BiasAdd_1:output:0BiasAdd_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	Sigmoid_1А
ReadVariableOp_6ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
ReadVariableOp_6Б
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_10/stackЕ
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_10/stack_1Е
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_10/stack_2П
strided_slice_10StridedSliceReadVariableOp_6:value:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
strided_slice_10w
MatMul_5MatMul	mul_5:z:0strided_slice_10:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2

MatMul_5{
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2
strided_slice_11/stack~
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_11/stack_1~
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_11/stack_2р
strided_slice_11StridedSliceunstack:output:1strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
strided_slice_11Г
	BiasAdd_5BiasAddMatMul_5:product:0strided_slice_11:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	BiasAdd_5k
mul_6MulSigmoid_1:y:0BiasAdd_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_6i
add_2AddV2BiasAdd_2:output:0	mul_6:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
Tanh_
mul_7MulSigmoid:y:0states_0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_7S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
sub[
mul_8Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
mul_8`
add_3AddV2	mul_7:z:0	mul_8:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
add_3б
IdentityIdentity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6*
T0*(
_output_shapes
:€€€€€€€€€Ц2

Identityе

Identity_1Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6*
T0*(
_output_shapes
:€€€€€€€€€Ц2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€2:€€€€€€€€€Ц: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52$
ReadVariableOp_6ReadVariableOp_6:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€Ц
"
_user_specified_name
states/0
ў>
ќ
__inference__traced_save_60734
file_prefix3
/savev2_embedding_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop2
.savev2_gru_gru_cell_kernel_read_readvariableop<
8savev2_gru_gru_cell_recurrent_kernel_read_readvariableop0
,savev2_gru_gru_cell_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop9
5savev2_adam_gru_gru_cell_kernel_m_read_readvariableopC
?savev2_adam_gru_gru_cell_recurrent_kernel_m_read_readvariableop7
3savev2_adam_gru_gru_cell_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop9
5savev2_adam_gru_gru_cell_kernel_v_read_readvariableopC
?savev2_adam_gru_gru_cell_recurrent_kernel_v_read_readvariableop7
3savev2_adam_gru_gru_cell_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameо
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*А
valueцBуB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesј
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesћ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop.savev2_gru_gru_cell_kernel_read_readvariableop8savev2_gru_gru_cell_recurrent_kernel_read_readvariableop,savev2_gru_gru_cell_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop5savev2_adam_gru_gru_cell_kernel_m_read_readvariableop?savev2_adam_gru_gru_cell_recurrent_kernel_m_read_readvariableop3savev2_adam_gru_gru_cell_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop5savev2_adam_gru_gru_cell_kernel_v_read_readvariableop?savev2_adam_gru_gru_cell_recurrent_kernel_v_read_readvariableop3savev2_adam_gru_gru_cell_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*в
_input_shapes–
Ќ: :2:	Ц:: : : : : :	2¬:
Ц¬:	¬: : : : :2:	Ц::	2¬:
Ц¬:	¬:2:	Ц::	2¬:
Ц¬:	¬: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:2:%!

_output_shapes
:	Ц: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%	!

_output_shapes
:	2¬:&
"
 
_output_shapes
:
Ц¬:%!

_output_shapes
:	¬:
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

:2:%!

_output_shapes
:	Ц: 

_output_shapes
::%!

_output_shapes
:	2¬:&"
 
_output_shapes
:
Ц¬:%!

_output_shapes
:	¬:$ 

_output_shapes

:2:%!

_output_shapes
:	Ц: 

_output_shapes
::%!

_output_shapes
:	2¬:&"
 
_output_shapes
:
Ц¬:%!

_output_shapes
:	¬:

_output_shapes
: 
¶Ј
Ћ
>__inference_gru_layer_call_and_return_conditional_losses_57630

inputs3
 gru_cell_readvariableop_resource:	¬5
"gru_cell_readvariableop_1_resource:	2¬6
"gru_cell_readvariableop_4_resource:
Ц¬
identityИҐgru_cell/ReadVariableOpҐgru_cell/ReadVariableOp_1Ґgru_cell/ReadVariableOp_2Ґgru_cell/ReadVariableOp_3Ґgru_cell/ReadVariableOp_4Ґgru_cell/ReadVariableOp_5Ґgru_cell/ReadVariableOp_6ҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ц2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ц2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_mask2
strided_slice_2|
gru_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like/Shapey
gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru_cell/ones_like/Const®
gru_cell/ones_likeFill!gru_cell/ones_like/Shape:output:0!gru_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/ones_likev
gru_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like_1/Shape}
gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru_cell/ones_like_1/Const±
gru_cell/ones_like_1Fill#gru_cell/ones_like_1/Shape:output:0#gru_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/ones_like_1Ф
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	¬*
dtype02
gru_cell/ReadVariableOpЗ
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:¬:¬*	
num2
gru_cell/unstackМ
gru_cell/mulMulstrided_slice_2:output:0gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/mulР
gru_cell/mul_1Mulstrided_slice_2:output:0gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/mul_1Р
gru_cell/mul_2Mulstrided_slice_2:output:0gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/mul_2Ъ
gru_cell/ReadVariableOp_1ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru_cell/ReadVariableOp_1Н
gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
gru_cell/strided_slice/stackС
gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2 
gru_cell/strided_slice/stack_1С
gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2 
gru_cell/strided_slice/stack_2µ
gru_cell/strided_sliceStridedSlice!gru_cell/ReadVariableOp_1:value:0%gru_cell/strided_slice/stack:output:0'gru_cell/strided_slice/stack_1:output:0'gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru_cell/strided_sliceТ
gru_cell/MatMulMatMulgru_cell/mul:z:0gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMulЪ
gru_cell/ReadVariableOp_2ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru_cell/ReadVariableOp_2С
gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2 
gru_cell/strided_slice_1/stackХ
 gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2"
 gru_cell/strided_slice_1/stack_1Х
 gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_1/stack_2њ
gru_cell/strided_slice_1StridedSlice!gru_cell/ReadVariableOp_2:value:0'gru_cell/strided_slice_1/stack:output:0)gru_cell/strided_slice_1/stack_1:output:0)gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru_cell/strided_slice_1Ъ
gru_cell/MatMul_1MatMulgru_cell/mul_1:z:0!gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_1Ъ
gru_cell/ReadVariableOp_3ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru_cell/ReadVariableOp_3С
gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2 
gru_cell/strided_slice_2/stackХ
 gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell/strided_slice_2/stack_1Х
 gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_2/stack_2њ
gru_cell/strided_slice_2StridedSlice!gru_cell/ReadVariableOp_3:value:0'gru_cell/strided_slice_2/stack:output:0)gru_cell/strided_slice_2/stack_1:output:0)gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru_cell/strided_slice_2Ъ
gru_cell/MatMul_2MatMulgru_cell/mul_2:z:0!gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_2К
gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_3/stackП
 gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2"
 gru_cell/strided_slice_3/stack_1О
 gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_3/stack_2£
gru_cell/strided_slice_3StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_3/stack:output:0)gru_cell/strided_slice_3/stack_1:output:0)gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
gru_cell/strided_slice_3†
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0!gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAddЛ
gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2 
gru_cell/strided_slice_4/stackП
 gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gru_cell/strided_slice_4/stack_1О
 gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_4/stack_2С
gru_cell/strided_slice_4StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_4/stack:output:0)gru_cell/strided_slice_4/stack_1:output:0)gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
gru_cell/strided_slice_4¶
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0!gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_1Л
gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gru_cell/strided_slice_5/stackО
 gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell/strided_slice_5/stack_1О
 gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_5/stack_2°
gru_cell/strided_slice_5StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_5/stack:output:0)gru_cell/strided_slice_5/stack_1:output:0)gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
gru_cell/strided_slice_5¶
gru_cell/BiasAdd_2BiasAddgru_cell/MatMul_2:product:0!gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_2Й
gru_cell/mul_3Mulzeros:output:0gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_3Й
gru_cell/mul_4Mulzeros:output:0gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_4Й
gru_cell/mul_5Mulzeros:output:0gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_5Ы
gru_cell/ReadVariableOp_4ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru_cell/ReadVariableOp_4С
gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell/strided_slice_6/stackХ
 gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2"
 gru_cell/strided_slice_6/stack_1Х
 gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_6/stack_2ј
gru_cell/strided_slice_6StridedSlice!gru_cell/ReadVariableOp_4:value:0'gru_cell/strided_slice_6/stack:output:0)gru_cell/strided_slice_6/stack_1:output:0)gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru_cell/strided_slice_6Ъ
gru_cell/MatMul_3MatMulgru_cell/mul_3:z:0!gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_3Ы
gru_cell/ReadVariableOp_5ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru_cell/ReadVariableOp_5С
gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2 
gru_cell/strided_slice_7/stackХ
 gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2"
 gru_cell/strided_slice_7/stack_1Х
 gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_7/stack_2ј
gru_cell/strided_slice_7StridedSlice!gru_cell/ReadVariableOp_5:value:0'gru_cell/strided_slice_7/stack:output:0)gru_cell/strided_slice_7/stack_1:output:0)gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru_cell/strided_slice_7Ъ
gru_cell/MatMul_4MatMulgru_cell/mul_4:z:0!gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_4К
gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_8/stackП
 gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2"
 gru_cell/strided_slice_8/stack_1О
 gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_8/stack_2£
gru_cell/strided_slice_8StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_8/stack:output:0)gru_cell/strided_slice_8/stack_1:output:0)gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
gru_cell/strided_slice_8¶
gru_cell/BiasAdd_3BiasAddgru_cell/MatMul_3:product:0!gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_3Л
gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2 
gru_cell/strided_slice_9/stackП
 gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gru_cell/strided_slice_9/stack_1О
 gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_9/stack_2С
gru_cell/strided_slice_9StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_9/stack:output:0)gru_cell/strided_slice_9/stack_1:output:0)gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
gru_cell/strided_slice_9¶
gru_cell/BiasAdd_4BiasAddgru_cell/MatMul_4:product:0!gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_4Р
gru_cell/addAddV2gru_cell/BiasAdd:output:0gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/addt
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/SigmoidЦ
gru_cell/add_1AddV2gru_cell/BiasAdd_1:output:0gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/add_1z
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/Sigmoid_1Ы
gru_cell/ReadVariableOp_6ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru_cell/ReadVariableOp_6У
gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2!
gru_cell/strided_slice_10/stackЧ
!gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!gru_cell/strided_slice_10/stack_1Ч
!gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell/strided_slice_10/stack_2≈
gru_cell/strided_slice_10StridedSlice!gru_cell/ReadVariableOp_6:value:0(gru_cell/strided_slice_10/stack:output:0*gru_cell/strided_slice_10/stack_1:output:0*gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru_cell/strided_slice_10Ы
gru_cell/MatMul_5MatMulgru_cell/mul_5:z:0"gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_5Н
gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gru_cell/strided_slice_11/stackР
!gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2#
!gru_cell/strided_slice_11/stack_1Р
!gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!gru_cell/strided_slice_11/stack_2¶
gru_cell/strided_slice_11StridedSlicegru_cell/unstack:output:1(gru_cell/strided_slice_11/stack:output:0*gru_cell/strided_slice_11/stack_1:output:0*gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
gru_cell/strided_slice_11І
gru_cell/BiasAdd_5BiasAddgru_cell/MatMul_5:product:0"gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_5П
gru_cell/mul_6Mulgru_cell/Sigmoid_1:y:0gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_6Н
gru_cell/add_2AddV2gru_cell/BiasAdd_2:output:0gru_cell/mul_6:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/add_2m
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/TanhА
gru_cell/mul_7Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_7e
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru_cell/sub/xЕ
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/sub
gru_cell/mul_8Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_8Д
gru_cell/add_3AddV2gru_cell/mul_7:z:0gru_cell/mul_8:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€Ц   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterХ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource"gru_cell_readvariableop_1_resource"gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€Ц: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_57478*
condR
while_cond_57477*9
output_shapes(
&: : : : :€€€€€€€€€Ц: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€Ц   22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€Ц*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€Ц2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЈ
IdentityIdentitystrided_slice_3:output:0^gru_cell/ReadVariableOp^gru_cell/ReadVariableOp_1^gru_cell/ReadVariableOp_2^gru_cell/ReadVariableOp_3^gru_cell/ReadVariableOp_4^gru_cell/ReadVariableOp_5^gru_cell/ReadVariableOp_6^while*
T0*(
_output_shapes
:€€€€€€€€€Ц2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€2: : : 22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp26
gru_cell/ReadVariableOp_1gru_cell/ReadVariableOp_126
gru_cell/ReadVariableOp_2gru_cell/ReadVariableOp_226
gru_cell/ReadVariableOp_3gru_cell/ReadVariableOp_326
gru_cell/ReadVariableOp_4gru_cell/ReadVariableOp_426
gru_cell/ReadVariableOp_5gru_cell/ReadVariableOp_526
gru_cell/ReadVariableOp_6gru_cell/ReadVariableOp_62
whilewhile:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
Ц
У
%__inference_dense_layer_call_fn_60339

inputs
unknown:	Ц
	unknown_0:
identityИҐStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_576492
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€Ц: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€Ц
 
_user_specified_nameinputs
ђ
¬
sequential_gru_while_cond_56411:
6sequential_gru_while_sequential_gru_while_loop_counter@
<sequential_gru_while_sequential_gru_while_maximum_iterations$
 sequential_gru_while_placeholder&
"sequential_gru_while_placeholder_1&
"sequential_gru_while_placeholder_2<
8sequential_gru_while_less_sequential_gru_strided_slice_1Q
Msequential_gru_while_sequential_gru_while_cond_56411___redundant_placeholder0Q
Msequential_gru_while_sequential_gru_while_cond_56411___redundant_placeholder1Q
Msequential_gru_while_sequential_gru_while_cond_56411___redundant_placeholder2Q
Msequential_gru_while_sequential_gru_while_cond_56411___redundant_placeholder3!
sequential_gru_while_identity
ї
sequential/gru/while/LessLess sequential_gru_while_placeholder8sequential_gru_while_less_sequential_gru_strided_slice_1*
T0*
_output_shapes
: 2
sequential/gru/while/LessК
sequential/gru/while/IdentityIdentitysequential/gru/while/Less:z:0*
T0
*
_output_shapes
: 2
sequential/gru/while/Identity"G
sequential_gru_while_identity&sequential/gru/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :€€€€€€€€€Ц: ::::: 
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
:€€€€€€€€€Ц:

_output_shapes
: :

_output_shapes
:
ж≤
“
while_body_57478
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	¬=
*while_gru_cell_readvariableop_1_resource_0:	2¬>
*while_gru_cell_readvariableop_4_resource_0:
Ц¬
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	¬;
(while_gru_cell_readvariableop_1_resource:	2¬<
(while_gru_cell_readvariableop_4_resource:
Ц¬ИҐwhile/gru_cell/ReadVariableOpҐwhile/gru_cell/ReadVariableOp_1Ґwhile/gru_cell/ReadVariableOp_2Ґwhile/gru_cell/ReadVariableOp_3Ґwhile/gru_cell/ReadVariableOp_4Ґwhile/gru_cell/ReadVariableOp_5Ґwhile/gru_cell/ReadVariableOp_6√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem†
while/gru_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2 
while/gru_cell/ones_like/ShapeЕ
while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2 
while/gru_cell/ones_like/Constј
while/gru_cell/ones_likeFill'while/gru_cell/ones_like/Shape:output:0'while/gru_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/ones_likeЗ
 while/gru_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2"
 while/gru_cell/ones_like_1/ShapeЙ
 while/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2"
 while/gru_cell/ones_like_1/Const…
while/gru_cell/ones_like_1Fill)while/gru_cell/ones_like_1/Shape:output:0)while/gru_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/ones_like_1®
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	¬*
dtype02
while/gru_cell/ReadVariableOpЩ
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:¬:¬*	
num2
while/gru_cell/unstackґ
while/gru_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/mulЇ
while/gru_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/mul_1Ї
while/gru_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/mul_2Ѓ
while/gru_cell/ReadVariableOp_1ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02!
while/gru_cell/ReadVariableOp_1Щ
"while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"while/gru_cell/strided_slice/stackЭ
$while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2&
$while/gru_cell/strided_slice/stack_1Э
$while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$while/gru_cell/strided_slice/stack_2ў
while/gru_cell/strided_sliceStridedSlice'while/gru_cell/ReadVariableOp_1:value:0+while/gru_cell/strided_slice/stack:output:0-while/gru_cell/strided_slice/stack_1:output:0-while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
while/gru_cell/strided_slice™
while/gru_cell/MatMulMatMulwhile/gru_cell/mul:z:0%while/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMulЃ
while/gru_cell/ReadVariableOp_2ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02!
while/gru_cell/ReadVariableOp_2Э
$while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2&
$while/gru_cell/strided_slice_1/stack°
&while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2(
&while/gru_cell/strided_slice_1/stack_1°
&while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_1/stack_2г
while/gru_cell/strided_slice_1StridedSlice'while/gru_cell/ReadVariableOp_2:value:0-while/gru_cell/strided_slice_1/stack:output:0/while/gru_cell/strided_slice_1/stack_1:output:0/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_1≤
while/gru_cell/MatMul_1MatMulwhile/gru_cell/mul_1:z:0'while/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_1Ѓ
while/gru_cell/ReadVariableOp_3ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02!
while/gru_cell/ReadVariableOp_3Э
$while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2&
$while/gru_cell/strided_slice_2/stack°
&while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell/strided_slice_2/stack_1°
&while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_2/stack_2г
while/gru_cell/strided_slice_2StridedSlice'while/gru_cell/ReadVariableOp_3:value:0-while/gru_cell/strided_slice_2/stack:output:0/while/gru_cell/strided_slice_2/stack_1:output:0/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_2≤
while/gru_cell/MatMul_2MatMulwhile/gru_cell/mul_2:z:0'while/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_2Ц
$while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_3/stackЫ
&while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2(
&while/gru_cell/strided_slice_3/stack_1Ъ
&while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_3/stack_2«
while/gru_cell/strided_slice_3StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_3/stack:output:0/while/gru_cell/strided_slice_3/stack_1:output:0/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2 
while/gru_cell/strided_slice_3Є
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0'while/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAddЧ
$while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2&
$while/gru_cell/strided_slice_4/stackЫ
&while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2(
&while/gru_cell/strided_slice_4/stack_1Ъ
&while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_4/stack_2µ
while/gru_cell/strided_slice_4StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_4/stack:output:0/while/gru_cell/strided_slice_4/stack_1:output:0/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2 
while/gru_cell/strided_slice_4Њ
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0'while/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_1Ч
$while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2&
$while/gru_cell/strided_slice_5/stackЪ
&while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell/strided_slice_5/stack_1Ъ
&while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_5/stack_2≈
while/gru_cell/strided_slice_5StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_5/stack:output:0/while/gru_cell/strided_slice_5/stack_1:output:0/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2 
while/gru_cell/strided_slice_5Њ
while/gru_cell/BiasAdd_2BiasAdd!while/gru_cell/MatMul_2:product:0'while/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_2†
while/gru_cell/mul_3Mulwhile_placeholder_2#while/gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_3†
while/gru_cell/mul_4Mulwhile_placeholder_2#while/gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_4†
while/gru_cell/mul_5Mulwhile_placeholder_2#while/gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_5ѓ
while/gru_cell/ReadVariableOp_4ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02!
while/gru_cell/ReadVariableOp_4Э
$while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell/strided_slice_6/stack°
&while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2(
&while/gru_cell/strided_slice_6/stack_1°
&while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_6/stack_2д
while/gru_cell/strided_slice_6StridedSlice'while/gru_cell/ReadVariableOp_4:value:0-while/gru_cell/strided_slice_6/stack:output:0/while/gru_cell/strided_slice_6/stack_1:output:0/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_6≤
while/gru_cell/MatMul_3MatMulwhile/gru_cell/mul_3:z:0'while/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_3ѓ
while/gru_cell/ReadVariableOp_5ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02!
while/gru_cell/ReadVariableOp_5Э
$while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2&
$while/gru_cell/strided_slice_7/stack°
&while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2(
&while/gru_cell/strided_slice_7/stack_1°
&while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_7/stack_2д
while/gru_cell/strided_slice_7StridedSlice'while/gru_cell/ReadVariableOp_5:value:0-while/gru_cell/strided_slice_7/stack:output:0/while/gru_cell/strided_slice_7/stack_1:output:0/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_7≤
while/gru_cell/MatMul_4MatMulwhile/gru_cell/mul_4:z:0'while/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_4Ц
$while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_8/stackЫ
&while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2(
&while/gru_cell/strided_slice_8/stack_1Ъ
&while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_8/stack_2«
while/gru_cell/strided_slice_8StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_8/stack:output:0/while/gru_cell/strided_slice_8/stack_1:output:0/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2 
while/gru_cell/strided_slice_8Њ
while/gru_cell/BiasAdd_3BiasAdd!while/gru_cell/MatMul_3:product:0'while/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_3Ч
$while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2&
$while/gru_cell/strided_slice_9/stackЫ
&while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2(
&while/gru_cell/strided_slice_9/stack_1Ъ
&while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_9/stack_2µ
while/gru_cell/strided_slice_9StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_9/stack:output:0/while/gru_cell/strided_slice_9/stack_1:output:0/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2 
while/gru_cell/strided_slice_9Њ
while/gru_cell/BiasAdd_4BiasAdd!while/gru_cell/MatMul_4:product:0'while/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_4®
while/gru_cell/addAddV2while/gru_cell/BiasAdd:output:0!while/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/addЖ
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/SigmoidЃ
while/gru_cell/add_1AddV2!while/gru_cell/BiasAdd_1:output:0!while/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/add_1М
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/Sigmoid_1ѓ
while/gru_cell/ReadVariableOp_6ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02!
while/gru_cell/ReadVariableOp_6Я
%while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2'
%while/gru_cell/strided_slice_10/stack£
'while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/gru_cell/strided_slice_10/stack_1£
'while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell/strided_slice_10/stack_2й
while/gru_cell/strided_slice_10StridedSlice'while/gru_cell/ReadVariableOp_6:value:0.while/gru_cell/strided_slice_10/stack:output:00while/gru_cell/strided_slice_10/stack_1:output:00while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2!
while/gru_cell/strided_slice_10≥
while/gru_cell/MatMul_5MatMulwhile/gru_cell/mul_5:z:0(while/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_5Щ
%while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2'
%while/gru_cell/strided_slice_11/stackЬ
'while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'while/gru_cell/strided_slice_11/stack_1Ь
'while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'while/gru_cell/strided_slice_11/stack_2 
while/gru_cell/strided_slice_11StridedSlicewhile/gru_cell/unstack:output:1.while/gru_cell/strided_slice_11/stack:output:00while/gru_cell/strided_slice_11/stack_1:output:00while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2!
while/gru_cell/strided_slice_11њ
while/gru_cell/BiasAdd_5BiasAdd!while/gru_cell/MatMul_5:product:0(while/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_5І
while/gru_cell/mul_6Mulwhile/gru_cell/Sigmoid_1:y:0!while/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_6•
while/gru_cell/add_2AddV2!while/gru_cell/BiasAdd_2:output:0while/gru_cell/mul_6:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/add_2
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/TanhЧ
while/gru_cell/mul_7Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_7q
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/gru_cell/sub/xЭ
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/subЧ
while/gru_cell/mul_8Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_8Ь
while/gru_cell/add_3AddV2while/gru_cell/mul_7:z:0while/gru_cell/mul_8:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/add_3№
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1 
while/IdentityIdentitywhile/add_1:z:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/IdentityЁ
while/Identity_1Identitywhile_while_maximum_iterations^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/Identity_1ћ
while/Identity_2Identitywhile/add:z:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/Identity_2щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/Identity_3й
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/Identity_4"V
(while_gru_cell_readvariableop_1_resource*while_gru_cell_readvariableop_1_resource_0"V
(while_gru_cell_readvariableop_4_resource*while_gru_cell_readvariableop_4_resource_0"R
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
&: : : : :€€€€€€€€€Ц: : : : : 2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp2B
while/gru_cell/ReadVariableOp_1while/gru_cell/ReadVariableOp_12B
while/gru_cell/ReadVariableOp_2while/gru_cell/ReadVariableOp_22B
while/gru_cell/ReadVariableOp_3while/gru_cell/ReadVariableOp_32B
while/gru_cell/ReadVariableOp_4while/gru_cell/ReadVariableOp_42B
while/gru_cell/ReadVariableOp_5while/gru_cell/ReadVariableOp_52B
while/gru_cell/ReadVariableOp_6while/gru_cell/ReadVariableOp_6: 
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
:€€€€€€€€€Ц:

_output_shapes
: :

_output_shapes
: 
√ъ
“
while_body_57873
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	¬=
*while_gru_cell_readvariableop_1_resource_0:	2¬>
*while_gru_cell_readvariableop_4_resource_0:
Ц¬
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	¬;
(while_gru_cell_readvariableop_1_resource:	2¬<
(while_gru_cell_readvariableop_4_resource:
Ц¬ИҐwhile/gru_cell/ReadVariableOpҐwhile/gru_cell/ReadVariableOp_1Ґwhile/gru_cell/ReadVariableOp_2Ґwhile/gru_cell/ReadVariableOp_3Ґwhile/gru_cell/ReadVariableOp_4Ґwhile/gru_cell/ReadVariableOp_5Ґwhile/gru_cell/ReadVariableOp_6√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem†
while/gru_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2 
while/gru_cell/ones_like/ShapeЕ
while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2 
while/gru_cell/ones_like/Constј
while/gru_cell/ones_likeFill'while/gru_cell/ones_like/Shape:output:0'while/gru_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/ones_likeБ
while/gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
while/gru_cell/dropout/Constї
while/gru_cell/dropout/MulMul!while/gru_cell/ones_like:output:0%while/gru_cell/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/dropout/MulН
while/gru_cell/dropout/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2
while/gru_cell/dropout/Shape€
3while/gru_cell/dropout/random_uniform/RandomUniformRandomUniform%while/gru_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2Ё 	25
3while/gru_cell/dropout/random_uniform/RandomUniformУ
%while/gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2'
%while/gru_cell/dropout/GreaterEqual/yъ
#while/gru_cell/dropout/GreaterEqualGreaterEqual<while/gru_cell/dropout/random_uniform/RandomUniform:output:0.while/gru_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22%
#while/gru_cell/dropout/GreaterEqualђ
while/gru_cell/dropout/CastCast'while/gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/dropout/Castґ
while/gru_cell/dropout/Mul_1Mulwhile/gru_cell/dropout/Mul:z:0while/gru_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/dropout/Mul_1Е
while/gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2 
while/gru_cell/dropout_1/ConstЅ
while/gru_cell/dropout_1/MulMul!while/gru_cell/ones_like:output:0'while/gru_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/dropout_1/MulС
while/gru_cell/dropout_1/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_1/ShapeЖ
5while/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2рЌ»27
5while/gru_cell/dropout_1/random_uniform/RandomUniformЧ
'while/gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2)
'while/gru_cell/dropout_1/GreaterEqual/yВ
%while/gru_cell/dropout_1/GreaterEqualGreaterEqual>while/gru_cell/dropout_1/random_uniform/RandomUniform:output:00while/gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22'
%while/gru_cell/dropout_1/GreaterEqual≤
while/gru_cell/dropout_1/CastCast)while/gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/dropout_1/CastЊ
while/gru_cell/dropout_1/Mul_1Mul while/gru_cell/dropout_1/Mul:z:0!while/gru_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22 
while/gru_cell/dropout_1/Mul_1Е
while/gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2 
while/gru_cell/dropout_2/ConstЅ
while/gru_cell/dropout_2/MulMul!while/gru_cell/ones_like:output:0'while/gru_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/dropout_2/MulС
while/gru_cell/dropout_2/ShapeShape!while/gru_cell/ones_like:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_2/ShapeЕ
5while/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2®п 27
5while/gru_cell/dropout_2/random_uniform/RandomUniformЧ
'while/gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2)
'while/gru_cell/dropout_2/GreaterEqual/yВ
%while/gru_cell/dropout_2/GreaterEqualGreaterEqual>while/gru_cell/dropout_2/random_uniform/RandomUniform:output:00while/gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22'
%while/gru_cell/dropout_2/GreaterEqual≤
while/gru_cell/dropout_2/CastCast)while/gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/dropout_2/CastЊ
while/gru_cell/dropout_2/Mul_1Mul while/gru_cell/dropout_2/Mul:z:0!while/gru_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22 
while/gru_cell/dropout_2/Mul_1З
 while/gru_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2"
 while/gru_cell/ones_like_1/ShapeЙ
 while/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2"
 while/gru_cell/ones_like_1/Const…
while/gru_cell/ones_like_1Fill)while/gru_cell/ones_like_1/Shape:output:0)while/gru_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/ones_like_1Е
while/gru_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2 
while/gru_cell/dropout_3/Constƒ
while/gru_cell/dropout_3/MulMul#while/gru_cell/ones_like_1:output:0'while/gru_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/dropout_3/MulУ
while/gru_cell/dropout_3/ShapeShape#while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_3/ShapeЗ
5while/gru_cell/dropout_3/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2љэ№27
5while/gru_cell/dropout_3/random_uniform/RandomUniformЧ
'while/gru_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2)
'while/gru_cell/dropout_3/GreaterEqual/yГ
%while/gru_cell/dropout_3/GreaterEqualGreaterEqual>while/gru_cell/dropout_3/random_uniform/RandomUniform:output:00while/gru_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2'
%while/gru_cell/dropout_3/GreaterEqual≥
while/gru_cell/dropout_3/CastCast)while/gru_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/dropout_3/Castњ
while/gru_cell/dropout_3/Mul_1Mul while/gru_cell/dropout_3/Mul:z:0!while/gru_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2 
while/gru_cell/dropout_3/Mul_1Е
while/gru_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2 
while/gru_cell/dropout_4/Constƒ
while/gru_cell/dropout_4/MulMul#while/gru_cell/ones_like_1:output:0'while/gru_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/dropout_4/MulУ
while/gru_cell/dropout_4/ShapeShape#while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_4/ShapeЗ
5while/gru_cell/dropout_4/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2ЦХ∆27
5while/gru_cell/dropout_4/random_uniform/RandomUniformЧ
'while/gru_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2)
'while/gru_cell/dropout_4/GreaterEqual/yГ
%while/gru_cell/dropout_4/GreaterEqualGreaterEqual>while/gru_cell/dropout_4/random_uniform/RandomUniform:output:00while/gru_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2'
%while/gru_cell/dropout_4/GreaterEqual≥
while/gru_cell/dropout_4/CastCast)while/gru_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/dropout_4/Castњ
while/gru_cell/dropout_4/Mul_1Mul while/gru_cell/dropout_4/Mul:z:0!while/gru_cell/dropout_4/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2 
while/gru_cell/dropout_4/Mul_1Е
while/gru_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2 
while/gru_cell/dropout_5/Constƒ
while/gru_cell/dropout_5/MulMul#while/gru_cell/ones_like_1:output:0'while/gru_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/dropout_5/MulУ
while/gru_cell/dropout_5/ShapeShape#while/gru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
while/gru_cell/dropout_5/ShapeЗ
5while/gru_cell/dropout_5/random_uniform/RandomUniformRandomUniform'while/gru_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2Ыйн27
5while/gru_cell/dropout_5/random_uniform/RandomUniformЧ
'while/gru_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2)
'while/gru_cell/dropout_5/GreaterEqual/yГ
%while/gru_cell/dropout_5/GreaterEqualGreaterEqual>while/gru_cell/dropout_5/random_uniform/RandomUniform:output:00while/gru_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2'
%while/gru_cell/dropout_5/GreaterEqual≥
while/gru_cell/dropout_5/CastCast)while/gru_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/dropout_5/Castњ
while/gru_cell/dropout_5/Mul_1Mul while/gru_cell/dropout_5/Mul:z:0!while/gru_cell/dropout_5/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2 
while/gru_cell/dropout_5/Mul_1®
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	¬*
dtype02
while/gru_cell/ReadVariableOpЩ
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:¬:¬*	
num2
while/gru_cell/unstackµ
while/gru_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/gru_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/mulї
while/gru_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/gru_cell/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/mul_1ї
while/gru_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/gru_cell/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/mul_2Ѓ
while/gru_cell/ReadVariableOp_1ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02!
while/gru_cell/ReadVariableOp_1Щ
"while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"while/gru_cell/strided_slice/stackЭ
$while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2&
$while/gru_cell/strided_slice/stack_1Э
$while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$while/gru_cell/strided_slice/stack_2ў
while/gru_cell/strided_sliceStridedSlice'while/gru_cell/ReadVariableOp_1:value:0+while/gru_cell/strided_slice/stack:output:0-while/gru_cell/strided_slice/stack_1:output:0-while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
while/gru_cell/strided_slice™
while/gru_cell/MatMulMatMulwhile/gru_cell/mul:z:0%while/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMulЃ
while/gru_cell/ReadVariableOp_2ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02!
while/gru_cell/ReadVariableOp_2Э
$while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2&
$while/gru_cell/strided_slice_1/stack°
&while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2(
&while/gru_cell/strided_slice_1/stack_1°
&while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_1/stack_2г
while/gru_cell/strided_slice_1StridedSlice'while/gru_cell/ReadVariableOp_2:value:0-while/gru_cell/strided_slice_1/stack:output:0/while/gru_cell/strided_slice_1/stack_1:output:0/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_1≤
while/gru_cell/MatMul_1MatMulwhile/gru_cell/mul_1:z:0'while/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_1Ѓ
while/gru_cell/ReadVariableOp_3ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02!
while/gru_cell/ReadVariableOp_3Э
$while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2&
$while/gru_cell/strided_slice_2/stack°
&while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell/strided_slice_2/stack_1°
&while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_2/stack_2г
while/gru_cell/strided_slice_2StridedSlice'while/gru_cell/ReadVariableOp_3:value:0-while/gru_cell/strided_slice_2/stack:output:0/while/gru_cell/strided_slice_2/stack_1:output:0/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_2≤
while/gru_cell/MatMul_2MatMulwhile/gru_cell/mul_2:z:0'while/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_2Ц
$while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_3/stackЫ
&while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2(
&while/gru_cell/strided_slice_3/stack_1Ъ
&while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_3/stack_2«
while/gru_cell/strided_slice_3StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_3/stack:output:0/while/gru_cell/strided_slice_3/stack_1:output:0/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2 
while/gru_cell/strided_slice_3Є
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0'while/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAddЧ
$while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2&
$while/gru_cell/strided_slice_4/stackЫ
&while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2(
&while/gru_cell/strided_slice_4/stack_1Ъ
&while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_4/stack_2µ
while/gru_cell/strided_slice_4StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_4/stack:output:0/while/gru_cell/strided_slice_4/stack_1:output:0/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2 
while/gru_cell/strided_slice_4Њ
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0'while/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_1Ч
$while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2&
$while/gru_cell/strided_slice_5/stackЪ
&while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell/strided_slice_5/stack_1Ъ
&while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_5/stack_2≈
while/gru_cell/strided_slice_5StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_5/stack:output:0/while/gru_cell/strided_slice_5/stack_1:output:0/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2 
while/gru_cell/strided_slice_5Њ
while/gru_cell/BiasAdd_2BiasAdd!while/gru_cell/MatMul_2:product:0'while/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_2Я
while/gru_cell/mul_3Mulwhile_placeholder_2"while/gru_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_3Я
while/gru_cell/mul_4Mulwhile_placeholder_2"while/gru_cell/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_4Я
while/gru_cell/mul_5Mulwhile_placeholder_2"while/gru_cell/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_5ѓ
while/gru_cell/ReadVariableOp_4ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02!
while/gru_cell/ReadVariableOp_4Э
$while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell/strided_slice_6/stack°
&while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2(
&while/gru_cell/strided_slice_6/stack_1°
&while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_6/stack_2д
while/gru_cell/strided_slice_6StridedSlice'while/gru_cell/ReadVariableOp_4:value:0-while/gru_cell/strided_slice_6/stack:output:0/while/gru_cell/strided_slice_6/stack_1:output:0/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_6≤
while/gru_cell/MatMul_3MatMulwhile/gru_cell/mul_3:z:0'while/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_3ѓ
while/gru_cell/ReadVariableOp_5ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02!
while/gru_cell/ReadVariableOp_5Э
$while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2&
$while/gru_cell/strided_slice_7/stack°
&while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2(
&while/gru_cell/strided_slice_7/stack_1°
&while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_7/stack_2д
while/gru_cell/strided_slice_7StridedSlice'while/gru_cell/ReadVariableOp_5:value:0-while/gru_cell/strided_slice_7/stack:output:0/while/gru_cell/strided_slice_7/stack_1:output:0/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_7≤
while/gru_cell/MatMul_4MatMulwhile/gru_cell/mul_4:z:0'while/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_4Ц
$while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_8/stackЫ
&while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2(
&while/gru_cell/strided_slice_8/stack_1Ъ
&while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_8/stack_2«
while/gru_cell/strided_slice_8StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_8/stack:output:0/while/gru_cell/strided_slice_8/stack_1:output:0/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2 
while/gru_cell/strided_slice_8Њ
while/gru_cell/BiasAdd_3BiasAdd!while/gru_cell/MatMul_3:product:0'while/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_3Ч
$while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2&
$while/gru_cell/strided_slice_9/stackЫ
&while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2(
&while/gru_cell/strided_slice_9/stack_1Ъ
&while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_9/stack_2µ
while/gru_cell/strided_slice_9StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_9/stack:output:0/while/gru_cell/strided_slice_9/stack_1:output:0/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2 
while/gru_cell/strided_slice_9Њ
while/gru_cell/BiasAdd_4BiasAdd!while/gru_cell/MatMul_4:product:0'while/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_4®
while/gru_cell/addAddV2while/gru_cell/BiasAdd:output:0!while/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/addЖ
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/SigmoidЃ
while/gru_cell/add_1AddV2!while/gru_cell/BiasAdd_1:output:0!while/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/add_1М
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/Sigmoid_1ѓ
while/gru_cell/ReadVariableOp_6ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02!
while/gru_cell/ReadVariableOp_6Я
%while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2'
%while/gru_cell/strided_slice_10/stack£
'while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/gru_cell/strided_slice_10/stack_1£
'while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell/strided_slice_10/stack_2й
while/gru_cell/strided_slice_10StridedSlice'while/gru_cell/ReadVariableOp_6:value:0.while/gru_cell/strided_slice_10/stack:output:00while/gru_cell/strided_slice_10/stack_1:output:00while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2!
while/gru_cell/strided_slice_10≥
while/gru_cell/MatMul_5MatMulwhile/gru_cell/mul_5:z:0(while/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_5Щ
%while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2'
%while/gru_cell/strided_slice_11/stackЬ
'while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'while/gru_cell/strided_slice_11/stack_1Ь
'while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'while/gru_cell/strided_slice_11/stack_2 
while/gru_cell/strided_slice_11StridedSlicewhile/gru_cell/unstack:output:1.while/gru_cell/strided_slice_11/stack:output:00while/gru_cell/strided_slice_11/stack_1:output:00while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2!
while/gru_cell/strided_slice_11њ
while/gru_cell/BiasAdd_5BiasAdd!while/gru_cell/MatMul_5:product:0(while/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_5І
while/gru_cell/mul_6Mulwhile/gru_cell/Sigmoid_1:y:0!while/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_6•
while/gru_cell/add_2AddV2!while/gru_cell/BiasAdd_2:output:0while/gru_cell/mul_6:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/add_2
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/TanhЧ
while/gru_cell/mul_7Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_7q
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/gru_cell/sub/xЭ
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/subЧ
while/gru_cell/mul_8Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_8Ь
while/gru_cell/add_3AddV2while/gru_cell/mul_7:z:0while/gru_cell/mul_8:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/add_3№
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1 
while/IdentityIdentitywhile/add_1:z:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/IdentityЁ
while/Identity_1Identitywhile_while_maximum_iterations^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/Identity_1ћ
while/Identity_2Identitywhile/add:z:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/Identity_2щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/Identity_3й
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/Identity_4"V
(while_gru_cell_readvariableop_1_resource*while_gru_cell_readvariableop_1_resource_0"V
(while_gru_cell_readvariableop_4_resource*while_gru_cell_readvariableop_4_resource_0"R
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
&: : : : :€€€€€€€€€Ц: : : : : 2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp2B
while/gru_cell/ReadVariableOp_1while/gru_cell/ReadVariableOp_12B
while/gru_cell/ReadVariableOp_2while/gru_cell/ReadVariableOp_22B
while/gru_cell/ReadVariableOp_3while/gru_cell/ReadVariableOp_32B
while/gru_cell/ReadVariableOp_4while/gru_cell/ReadVariableOp_42B
while/gru_cell/ReadVariableOp_5while/gru_cell/ReadVariableOp_52B
while/gru_cell/ReadVariableOp_6while/gru_cell/ReadVariableOp_6: 
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
:€€€€€€€€€Ц:

_output_shapes
: :

_output_shapes
: 
“
Р
*__inference_sequential_layer_call_fn_58257

inputs
unknown:2
	unknown_0:	¬
	unknown_1:	2¬
	unknown_2:
Ц¬
	unknown_3:	Ц
	unknown_4:
identityИҐStatefulPartitionedCall©
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_581282
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ќ
µ
#__inference_gru_layer_call_fn_58995

inputs
unknown:	¬
	unknown_0:	2¬
	unknown_1:
Ц¬
identityИҐStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Ц*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *G
fBR@
>__inference_gru_layer_call_and_return_conditional_losses_576302
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€Ц2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
Ѓш
Ќ
>__inference_gru_layer_call_and_return_conditional_losses_59668
inputs_03
 gru_cell_readvariableop_resource:	¬5
"gru_cell_readvariableop_1_resource:	2¬6
"gru_cell_readvariableop_4_resource:
Ц¬
identityИҐgru_cell/ReadVariableOpҐgru_cell/ReadVariableOp_1Ґgru_cell/ReadVariableOp_2Ґgru_cell/ReadVariableOp_3Ґgru_cell/ReadVariableOp_4Ґgru_cell/ReadVariableOp_5Ґgru_cell/ReadVariableOp_6ҐwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ц2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ц2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_mask2
strided_slice_2|
gru_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like/Shapey
gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru_cell/ones_like/Const®
gru_cell/ones_likeFill!gru_cell/ones_like/Shape:output:0!gru_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/ones_likeu
gru_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru_cell/dropout/Const£
gru_cell/dropout/MulMulgru_cell/ones_like:output:0gru_cell/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout/Mul{
gru_cell/dropout/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell/dropout/Shapeо
-gru_cell/dropout/random_uniform/RandomUniformRandomUniformgru_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2±дЕ2/
-gru_cell/dropout/random_uniform/RandomUniformЗ
gru_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2!
gru_cell/dropout/GreaterEqual/yв
gru_cell/dropout/GreaterEqualGreaterEqual6gru_cell/dropout/random_uniform/RandomUniform:output:0(gru_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout/GreaterEqualЪ
gru_cell/dropout/CastCast!gru_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout/CastЮ
gru_cell/dropout/Mul_1Mulgru_cell/dropout/Mul:z:0gru_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout/Mul_1y
gru_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru_cell/dropout_1/Const©
gru_cell/dropout_1/MulMulgru_cell/ones_like:output:0!gru_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout_1/Mul
gru_cell/dropout_1/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_1/Shapeф
/gru_cell/dropout_1/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2ћНж21
/gru_cell/dropout_1/random_uniform/RandomUniformЛ
!gru_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2#
!gru_cell/dropout_1/GreaterEqual/yк
gru_cell/dropout_1/GreaterEqualGreaterEqual8gru_cell/dropout_1/random_uniform/RandomUniform:output:0*gru_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22!
gru_cell/dropout_1/GreaterEqual†
gru_cell/dropout_1/CastCast#gru_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout_1/Cast¶
gru_cell/dropout_1/Mul_1Mulgru_cell/dropout_1/Mul:z:0gru_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout_1/Mul_1y
gru_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru_cell/dropout_2/Const©
gru_cell/dropout_2/MulMulgru_cell/ones_like:output:0!gru_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout_2/Mul
gru_cell/dropout_2/ShapeShapegru_cell/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_2/Shapeф
/gru_cell/dropout_2/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2*
dtype0*
seed±€е)*
seed2£ЂІ21
/gru_cell/dropout_2/random_uniform/RandomUniformЛ
!gru_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2#
!gru_cell/dropout_2/GreaterEqual/yк
gru_cell/dropout_2/GreaterEqualGreaterEqual8gru_cell/dropout_2/random_uniform/RandomUniform:output:0*gru_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€22!
gru_cell/dropout_2/GreaterEqual†
gru_cell/dropout_2/CastCast#gru_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout_2/Cast¶
gru_cell/dropout_2/Mul_1Mulgru_cell/dropout_2/Mul:z:0gru_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/dropout_2/Mul_1v
gru_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like_1/Shape}
gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru_cell/ones_like_1/Const±
gru_cell/ones_like_1Fill#gru_cell/ones_like_1/Shape:output:0#gru_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/ones_like_1y
gru_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru_cell/dropout_3/Constђ
gru_cell/dropout_3/MulMulgru_cell/ones_like_1:output:0!gru_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_3/MulБ
gru_cell/dropout_3/ShapeShapegru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_3/Shapeх
/gru_cell/dropout_3/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2д…З21
/gru_cell/dropout_3/random_uniform/RandomUniformЛ
!gru_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2#
!gru_cell/dropout_3/GreaterEqual/yл
gru_cell/dropout_3/GreaterEqualGreaterEqual8gru_cell/dropout_3/random_uniform/RandomUniform:output:0*gru_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2!
gru_cell/dropout_3/GreaterEqual°
gru_cell/dropout_3/CastCast#gru_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_3/CastІ
gru_cell/dropout_3/Mul_1Mulgru_cell/dropout_3/Mul:z:0gru_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_3/Mul_1y
gru_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru_cell/dropout_4/Constђ
gru_cell/dropout_4/MulMulgru_cell/ones_like_1:output:0!gru_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_4/MulБ
gru_cell/dropout_4/ShapeShapegru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_4/Shapeх
/gru_cell/dropout_4/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2шжҐ21
/gru_cell/dropout_4/random_uniform/RandomUniformЛ
!gru_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2#
!gru_cell/dropout_4/GreaterEqual/yл
gru_cell/dropout_4/GreaterEqualGreaterEqual8gru_cell/dropout_4/random_uniform/RandomUniform:output:0*gru_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2!
gru_cell/dropout_4/GreaterEqual°
gru_cell/dropout_4/CastCast#gru_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_4/CastІ
gru_cell/dropout_4/Mul_1Mulgru_cell/dropout_4/Mul:z:0gru_cell/dropout_4/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_4/Mul_1y
gru_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
gru_cell/dropout_5/Constђ
gru_cell/dropout_5/MulMulgru_cell/ones_like_1:output:0!gru_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_5/MulБ
gru_cell/dropout_5/ShapeShapegru_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell/dropout_5/Shapeх
/gru_cell/dropout_5/random_uniform/RandomUniformRandomUniform!gru_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
dtype0*
seed±€е)*
seed2≠ѓЦ21
/gru_cell/dropout_5/random_uniform/RandomUniformЛ
!gru_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2#
!gru_cell/dropout_5/GreaterEqual/yл
gru_cell/dropout_5/GreaterEqualGreaterEqual8gru_cell/dropout_5/random_uniform/RandomUniform:output:0*gru_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2!
gru_cell/dropout_5/GreaterEqual°
gru_cell/dropout_5/CastCast#gru_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_5/CastІ
gru_cell/dropout_5/Mul_1Mulgru_cell/dropout_5/Mul:z:0gru_cell/dropout_5/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/dropout_5/Mul_1Ф
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	¬*
dtype02
gru_cell/ReadVariableOpЗ
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:¬:¬*	
num2
gru_cell/unstackЛ
gru_cell/mulMulstrided_slice_2:output:0gru_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/mulС
gru_cell/mul_1Mulstrided_slice_2:output:0gru_cell/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/mul_1С
gru_cell/mul_2Mulstrided_slice_2:output:0gru_cell/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/mul_2Ъ
gru_cell/ReadVariableOp_1ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru_cell/ReadVariableOp_1Н
gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
gru_cell/strided_slice/stackС
gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2 
gru_cell/strided_slice/stack_1С
gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2 
gru_cell/strided_slice/stack_2µ
gru_cell/strided_sliceStridedSlice!gru_cell/ReadVariableOp_1:value:0%gru_cell/strided_slice/stack:output:0'gru_cell/strided_slice/stack_1:output:0'gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru_cell/strided_sliceТ
gru_cell/MatMulMatMulgru_cell/mul:z:0gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMulЪ
gru_cell/ReadVariableOp_2ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru_cell/ReadVariableOp_2С
gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2 
gru_cell/strided_slice_1/stackХ
 gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2"
 gru_cell/strided_slice_1/stack_1Х
 gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_1/stack_2њ
gru_cell/strided_slice_1StridedSlice!gru_cell/ReadVariableOp_2:value:0'gru_cell/strided_slice_1/stack:output:0)gru_cell/strided_slice_1/stack_1:output:0)gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru_cell/strided_slice_1Ъ
gru_cell/MatMul_1MatMulgru_cell/mul_1:z:0!gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_1Ъ
gru_cell/ReadVariableOp_3ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru_cell/ReadVariableOp_3С
gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2 
gru_cell/strided_slice_2/stackХ
 gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell/strided_slice_2/stack_1Х
 gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_2/stack_2њ
gru_cell/strided_slice_2StridedSlice!gru_cell/ReadVariableOp_3:value:0'gru_cell/strided_slice_2/stack:output:0)gru_cell/strided_slice_2/stack_1:output:0)gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru_cell/strided_slice_2Ъ
gru_cell/MatMul_2MatMulgru_cell/mul_2:z:0!gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_2К
gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_3/stackП
 gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2"
 gru_cell/strided_slice_3/stack_1О
 gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_3/stack_2£
gru_cell/strided_slice_3StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_3/stack:output:0)gru_cell/strided_slice_3/stack_1:output:0)gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
gru_cell/strided_slice_3†
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0!gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAddЛ
gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2 
gru_cell/strided_slice_4/stackП
 gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gru_cell/strided_slice_4/stack_1О
 gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_4/stack_2С
gru_cell/strided_slice_4StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_4/stack:output:0)gru_cell/strided_slice_4/stack_1:output:0)gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
gru_cell/strided_slice_4¶
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0!gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_1Л
gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gru_cell/strided_slice_5/stackО
 gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell/strided_slice_5/stack_1О
 gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_5/stack_2°
gru_cell/strided_slice_5StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_5/stack:output:0)gru_cell/strided_slice_5/stack_1:output:0)gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
gru_cell/strided_slice_5¶
gru_cell/BiasAdd_2BiasAddgru_cell/MatMul_2:product:0!gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_2И
gru_cell/mul_3Mulzeros:output:0gru_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_3И
gru_cell/mul_4Mulzeros:output:0gru_cell/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_4И
gru_cell/mul_5Mulzeros:output:0gru_cell/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_5Ы
gru_cell/ReadVariableOp_4ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru_cell/ReadVariableOp_4С
gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell/strided_slice_6/stackХ
 gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2"
 gru_cell/strided_slice_6/stack_1Х
 gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_6/stack_2ј
gru_cell/strided_slice_6StridedSlice!gru_cell/ReadVariableOp_4:value:0'gru_cell/strided_slice_6/stack:output:0)gru_cell/strided_slice_6/stack_1:output:0)gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru_cell/strided_slice_6Ъ
gru_cell/MatMul_3MatMulgru_cell/mul_3:z:0!gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_3Ы
gru_cell/ReadVariableOp_5ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru_cell/ReadVariableOp_5С
gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2 
gru_cell/strided_slice_7/stackХ
 gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2"
 gru_cell/strided_slice_7/stack_1Х
 gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_7/stack_2ј
gru_cell/strided_slice_7StridedSlice!gru_cell/ReadVariableOp_5:value:0'gru_cell/strided_slice_7/stack:output:0)gru_cell/strided_slice_7/stack_1:output:0)gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru_cell/strided_slice_7Ъ
gru_cell/MatMul_4MatMulgru_cell/mul_4:z:0!gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_4К
gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_8/stackП
 gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2"
 gru_cell/strided_slice_8/stack_1О
 gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_8/stack_2£
gru_cell/strided_slice_8StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_8/stack:output:0)gru_cell/strided_slice_8/stack_1:output:0)gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
gru_cell/strided_slice_8¶
gru_cell/BiasAdd_3BiasAddgru_cell/MatMul_3:product:0!gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_3Л
gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2 
gru_cell/strided_slice_9/stackП
 gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gru_cell/strided_slice_9/stack_1О
 gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_9/stack_2С
gru_cell/strided_slice_9StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_9/stack:output:0)gru_cell/strided_slice_9/stack_1:output:0)gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
gru_cell/strided_slice_9¶
gru_cell/BiasAdd_4BiasAddgru_cell/MatMul_4:product:0!gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_4Р
gru_cell/addAddV2gru_cell/BiasAdd:output:0gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/addt
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/SigmoidЦ
gru_cell/add_1AddV2gru_cell/BiasAdd_1:output:0gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/add_1z
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/Sigmoid_1Ы
gru_cell/ReadVariableOp_6ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru_cell/ReadVariableOp_6У
gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2!
gru_cell/strided_slice_10/stackЧ
!gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!gru_cell/strided_slice_10/stack_1Ч
!gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell/strided_slice_10/stack_2≈
gru_cell/strided_slice_10StridedSlice!gru_cell/ReadVariableOp_6:value:0(gru_cell/strided_slice_10/stack:output:0*gru_cell/strided_slice_10/stack_1:output:0*gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru_cell/strided_slice_10Ы
gru_cell/MatMul_5MatMulgru_cell/mul_5:z:0"gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_5Н
gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gru_cell/strided_slice_11/stackР
!gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2#
!gru_cell/strided_slice_11/stack_1Р
!gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!gru_cell/strided_slice_11/stack_2¶
gru_cell/strided_slice_11StridedSlicegru_cell/unstack:output:1(gru_cell/strided_slice_11/stack:output:0*gru_cell/strided_slice_11/stack_1:output:0*gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
gru_cell/strided_slice_11І
gru_cell/BiasAdd_5BiasAddgru_cell/MatMul_5:product:0"gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_5П
gru_cell/mul_6Mulgru_cell/Sigmoid_1:y:0gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_6Н
gru_cell/add_2AddV2gru_cell/BiasAdd_2:output:0gru_cell/mul_6:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/add_2m
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/TanhА
gru_cell/mul_7Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_7e
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru_cell/sub/xЕ
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/sub
gru_cell/mul_8Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_8Д
gru_cell/add_3AddV2gru_cell/mul_7:z:0gru_cell/mul_8:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€Ц   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterХ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource"gru_cell_readvariableop_1_resource"gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€Ц: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_59468*
condR
while_cond_59467*9
output_shapes(
&: : : : :€€€€€€€€€Ц: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€Ц   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ц*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ц2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЈ
IdentityIdentitystrided_slice_3:output:0^gru_cell/ReadVariableOp^gru_cell/ReadVariableOp_1^gru_cell/ReadVariableOp_2^gru_cell/ReadVariableOp_3^gru_cell/ReadVariableOp_4^gru_cell/ReadVariableOp_5^gru_cell/ReadVariableOp_6^while*
T0*(
_output_shapes
:€€€€€€€€€Ц2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€2: : : 22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp26
gru_cell/ReadVariableOp_1gru_cell/ReadVariableOp_126
gru_cell/ReadVariableOp_2gru_cell/ReadVariableOp_226
gru_cell/ReadVariableOp_3gru_cell/ReadVariableOp_326
gru_cell/ReadVariableOp_4gru_cell/ReadVariableOp_426
gru_cell/ReadVariableOp_5gru_cell/ReadVariableOp_526
gru_cell/ReadVariableOp_6gru_cell/ReadVariableOp_62
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
"
_user_specified_name
inputs/0
е
Ј
#__inference_gru_layer_call_fn_58973
inputs_0
unknown:	¬
	unknown_0:	2¬
	unknown_1:
Ц¬
identityИҐStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Ц*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *G
fBR@
>__inference_gru_layer_call_and_return_conditional_losses_567852
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€Ц2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
"
_user_specified_name
inputs/0
ъ
}
)__inference_embedding_layer_call_fn_58952

inputs
unknown:2
identityИҐStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_573442
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ѕ
Т
#__inference_signature_wrapper_58223
embedding_input
unknown:2
	unknown_0:	¬
	unknown_1:	2¬
	unknown_2:
Ц¬
	unknown_3:	Ц
	unknown_4:
identityИҐStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_565712
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:€€€€€€€€€
)
_user_specified_nameembedding_input
ч
•
while_cond_56720
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_56720___redundant_placeholder03
/while_while_cond_56720___redundant_placeholder13
/while_while_cond_56720___redundant_placeholder23
/while_while_cond_56720___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :€€€€€€€€€Ц: ::::: 
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
:€€€€€€€€€Ц:

_output_shapes
: :

_output_shapes
:
рј
Џ	
gru_while_body_58394$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2#
gru_while_gru_strided_slice_1_0_
[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0?
,gru_while_gru_cell_readvariableop_resource_0:	¬A
.gru_while_gru_cell_readvariableop_1_resource_0:	2¬B
.gru_while_gru_cell_readvariableop_4_resource_0:
Ц¬
gru_while_identity
gru_while_identity_1
gru_while_identity_2
gru_while_identity_3
gru_while_identity_4!
gru_while_gru_strided_slice_1]
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor=
*gru_while_gru_cell_readvariableop_resource:	¬?
,gru_while_gru_cell_readvariableop_1_resource:	2¬@
,gru_while_gru_cell_readvariableop_4_resource:
Ц¬ИҐ!gru/while/gru_cell/ReadVariableOpҐ#gru/while/gru_cell/ReadVariableOp_1Ґ#gru/while/gru_cell/ReadVariableOp_2Ґ#gru/while/gru_cell/ReadVariableOp_3Ґ#gru/while/gru_cell/ReadVariableOp_4Ґ#gru/while/gru_cell/ReadVariableOp_5Ґ#gru/while/gru_cell/ReadVariableOp_6Ћ
;gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   2=
;gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeл
-gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0gru_while_placeholderDgru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype02/
-gru/while/TensorArrayV2Read/TensorListGetItemђ
"gru/while/gru_cell/ones_like/ShapeShape4gru/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"gru/while/gru_cell/ones_like/ShapeН
"gru/while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2$
"gru/while/gru_cell/ones_like/Const–
gru/while/gru_cell/ones_likeFill+gru/while/gru_cell/ones_like/Shape:output:0+gru/while/gru_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru/while/gru_cell/ones_likeУ
$gru/while/gru_cell/ones_like_1/ShapeShapegru_while_placeholder_2*
T0*
_output_shapes
:2&
$gru/while/gru_cell/ones_like_1/ShapeС
$gru/while/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2&
$gru/while/gru_cell/ones_like_1/Constў
gru/while/gru_cell/ones_like_1Fill-gru/while/gru_cell/ones_like_1/Shape:output:0-gru/while/gru_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2 
gru/while/gru_cell/ones_like_1і
!gru/while/gru_cell/ReadVariableOpReadVariableOp,gru_while_gru_cell_readvariableop_resource_0*
_output_shapes
:	¬*
dtype02#
!gru/while/gru_cell/ReadVariableOp•
gru/while/gru_cell/unstackUnpack)gru/while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:¬:¬*	
num2
gru/while/gru_cell/unstack∆
gru/while/gru_cell/mulMul4gru/while/TensorArrayV2Read/TensorListGetItem:item:0%gru/while/gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru/while/gru_cell/mul 
gru/while/gru_cell/mul_1Mul4gru/while/TensorArrayV2Read/TensorListGetItem:item:0%gru/while/gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru/while/gru_cell/mul_1 
gru/while/gru_cell/mul_2Mul4gru/while/TensorArrayV2Read/TensorListGetItem:item:0%gru/while/gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru/while/gru_cell/mul_2Ї
#gru/while/gru_cell/ReadVariableOp_1ReadVariableOp.gru_while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02%
#gru/while/gru_cell/ReadVariableOp_1°
&gru/while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&gru/while/gru_cell/strided_slice/stack•
(gru/while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2*
(gru/while/gru_cell/strided_slice/stack_1•
(gru/while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru/while/gru_cell/strided_slice/stack_2с
 gru/while/gru_cell/strided_sliceStridedSlice+gru/while/gru_cell/ReadVariableOp_1:value:0/gru/while/gru_cell/strided_slice/stack:output:01gru/while/gru_cell/strided_slice/stack_1:output:01gru/while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2"
 gru/while/gru_cell/strided_sliceЇ
gru/while/gru_cell/MatMulMatMulgru/while/gru_cell/mul:z:0)gru/while/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/MatMulЇ
#gru/while/gru_cell/ReadVariableOp_2ReadVariableOp.gru_while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02%
#gru/while/gru_cell/ReadVariableOp_2•
(gru/while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2*
(gru/while/gru_cell/strided_slice_1/stack©
*gru/while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2,
*gru/while/gru_cell/strided_slice_1/stack_1©
*gru/while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru/while/gru_cell/strided_slice_1/stack_2ы
"gru/while/gru_cell/strided_slice_1StridedSlice+gru/while/gru_cell/ReadVariableOp_2:value:01gru/while/gru_cell/strided_slice_1/stack:output:03gru/while/gru_cell/strided_slice_1/stack_1:output:03gru/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2$
"gru/while/gru_cell/strided_slice_1¬
gru/while/gru_cell/MatMul_1MatMulgru/while/gru_cell/mul_1:z:0+gru/while/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/MatMul_1Ї
#gru/while/gru_cell/ReadVariableOp_3ReadVariableOp.gru_while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02%
#gru/while/gru_cell/ReadVariableOp_3•
(gru/while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(gru/while/gru_cell/strided_slice_2/stack©
*gru/while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*gru/while/gru_cell/strided_slice_2/stack_1©
*gru/while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru/while/gru_cell/strided_slice_2/stack_2ы
"gru/while/gru_cell/strided_slice_2StridedSlice+gru/while/gru_cell/ReadVariableOp_3:value:01gru/while/gru_cell/strided_slice_2/stack:output:03gru/while/gru_cell/strided_slice_2/stack_1:output:03gru/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2$
"gru/while/gru_cell/strided_slice_2¬
gru/while/gru_cell/MatMul_2MatMulgru/while/gru_cell/mul_2:z:0+gru/while/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/MatMul_2Ю
(gru/while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(gru/while/gru_cell/strided_slice_3/stack£
*gru/while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2,
*gru/while/gru_cell/strided_slice_3/stack_1Ґ
*gru/while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru/while/gru_cell/strided_slice_3/stack_2я
"gru/while/gru_cell/strided_slice_3StridedSlice#gru/while/gru_cell/unstack:output:01gru/while/gru_cell/strided_slice_3/stack:output:03gru/while/gru_cell/strided_slice_3/stack_1:output:03gru/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2$
"gru/while/gru_cell/strided_slice_3»
gru/while/gru_cell/BiasAddBiasAdd#gru/while/gru_cell/MatMul:product:0+gru/while/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/BiasAddЯ
(gru/while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2*
(gru/while/gru_cell/strided_slice_4/stack£
*gru/while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2,
*gru/while/gru_cell/strided_slice_4/stack_1Ґ
*gru/while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru/while/gru_cell/strided_slice_4/stack_2Ќ
"gru/while/gru_cell/strided_slice_4StridedSlice#gru/while/gru_cell/unstack:output:01gru/while/gru_cell/strided_slice_4/stack:output:03gru/while/gru_cell/strided_slice_4/stack_1:output:03gru/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2$
"gru/while/gru_cell/strided_slice_4ќ
gru/while/gru_cell/BiasAdd_1BiasAdd%gru/while/gru_cell/MatMul_1:product:0+gru/while/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/BiasAdd_1Я
(gru/while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2*
(gru/while/gru_cell/strided_slice_5/stackҐ
*gru/while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2,
*gru/while/gru_cell/strided_slice_5/stack_1Ґ
*gru/while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru/while/gru_cell/strided_slice_5/stack_2Ё
"gru/while/gru_cell/strided_slice_5StridedSlice#gru/while/gru_cell/unstack:output:01gru/while/gru_cell/strided_slice_5/stack:output:03gru/while/gru_cell/strided_slice_5/stack_1:output:03gru/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2$
"gru/while/gru_cell/strided_slice_5ќ
gru/while/gru_cell/BiasAdd_2BiasAdd%gru/while/gru_cell/MatMul_2:product:0+gru/while/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/BiasAdd_2∞
gru/while/gru_cell/mul_3Mulgru_while_placeholder_2'gru/while/gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/mul_3∞
gru/while/gru_cell/mul_4Mulgru_while_placeholder_2'gru/while/gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/mul_4∞
gru/while/gru_cell/mul_5Mulgru_while_placeholder_2'gru/while/gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/mul_5ї
#gru/while/gru_cell/ReadVariableOp_4ReadVariableOp.gru_while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02%
#gru/while/gru_cell/ReadVariableOp_4•
(gru/while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(gru/while/gru_cell/strided_slice_6/stack©
*gru/while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2,
*gru/while/gru_cell/strided_slice_6/stack_1©
*gru/while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru/while/gru_cell/strided_slice_6/stack_2ь
"gru/while/gru_cell/strided_slice_6StridedSlice+gru/while/gru_cell/ReadVariableOp_4:value:01gru/while/gru_cell/strided_slice_6/stack:output:03gru/while/gru_cell/strided_slice_6/stack_1:output:03gru/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2$
"gru/while/gru_cell/strided_slice_6¬
gru/while/gru_cell/MatMul_3MatMulgru/while/gru_cell/mul_3:z:0+gru/while/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/MatMul_3ї
#gru/while/gru_cell/ReadVariableOp_5ReadVariableOp.gru_while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02%
#gru/while/gru_cell/ReadVariableOp_5•
(gru/while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2*
(gru/while/gru_cell/strided_slice_7/stack©
*gru/while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2,
*gru/while/gru_cell/strided_slice_7/stack_1©
*gru/while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru/while/gru_cell/strided_slice_7/stack_2ь
"gru/while/gru_cell/strided_slice_7StridedSlice+gru/while/gru_cell/ReadVariableOp_5:value:01gru/while/gru_cell/strided_slice_7/stack:output:03gru/while/gru_cell/strided_slice_7/stack_1:output:03gru/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2$
"gru/while/gru_cell/strided_slice_7¬
gru/while/gru_cell/MatMul_4MatMulgru/while/gru_cell/mul_4:z:0+gru/while/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/MatMul_4Ю
(gru/while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(gru/while/gru_cell/strided_slice_8/stack£
*gru/while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2,
*gru/while/gru_cell/strided_slice_8/stack_1Ґ
*gru/while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru/while/gru_cell/strided_slice_8/stack_2я
"gru/while/gru_cell/strided_slice_8StridedSlice#gru/while/gru_cell/unstack:output:11gru/while/gru_cell/strided_slice_8/stack:output:03gru/while/gru_cell/strided_slice_8/stack_1:output:03gru/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2$
"gru/while/gru_cell/strided_slice_8ќ
gru/while/gru_cell/BiasAdd_3BiasAdd%gru/while/gru_cell/MatMul_3:product:0+gru/while/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/BiasAdd_3Я
(gru/while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2*
(gru/while/gru_cell/strided_slice_9/stack£
*gru/while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2,
*gru/while/gru_cell/strided_slice_9/stack_1Ґ
*gru/while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gru/while/gru_cell/strided_slice_9/stack_2Ќ
"gru/while/gru_cell/strided_slice_9StridedSlice#gru/while/gru_cell/unstack:output:11gru/while/gru_cell/strided_slice_9/stack:output:03gru/while/gru_cell/strided_slice_9/stack_1:output:03gru/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2$
"gru/while/gru_cell/strided_slice_9ќ
gru/while/gru_cell/BiasAdd_4BiasAdd%gru/while/gru_cell/MatMul_4:product:0+gru/while/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/BiasAdd_4Є
gru/while/gru_cell/addAddV2#gru/while/gru_cell/BiasAdd:output:0%gru/while/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/addТ
gru/while/gru_cell/SigmoidSigmoidgru/while/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/SigmoidЊ
gru/while/gru_cell/add_1AddV2%gru/while/gru_cell/BiasAdd_1:output:0%gru/while/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/add_1Ш
gru/while/gru_cell/Sigmoid_1Sigmoidgru/while/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/Sigmoid_1ї
#gru/while/gru_cell/ReadVariableOp_6ReadVariableOp.gru_while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02%
#gru/while/gru_cell/ReadVariableOp_6І
)gru/while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2+
)gru/while/gru_cell/strided_slice_10/stackЂ
+gru/while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+gru/while/gru_cell/strided_slice_10/stack_1Ђ
+gru/while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+gru/while/gru_cell/strided_slice_10/stack_2Б
#gru/while/gru_cell/strided_slice_10StridedSlice+gru/while/gru_cell/ReadVariableOp_6:value:02gru/while/gru_cell/strided_slice_10/stack:output:04gru/while/gru_cell/strided_slice_10/stack_1:output:04gru/while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2%
#gru/while/gru_cell/strided_slice_10√
gru/while/gru_cell/MatMul_5MatMulgru/while/gru_cell/mul_5:z:0,gru/while/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/MatMul_5°
)gru/while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2+
)gru/while/gru_cell/strided_slice_11/stack§
+gru/while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+gru/while/gru_cell/strided_slice_11/stack_1§
+gru/while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+gru/while/gru_cell/strided_slice_11/stack_2в
#gru/while/gru_cell/strided_slice_11StridedSlice#gru/while/gru_cell/unstack:output:12gru/while/gru_cell/strided_slice_11/stack:output:04gru/while/gru_cell/strided_slice_11/stack_1:output:04gru/while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2%
#gru/while/gru_cell/strided_slice_11ѕ
gru/while/gru_cell/BiasAdd_5BiasAdd%gru/while/gru_cell/MatMul_5:product:0,gru/while/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/BiasAdd_5Ј
gru/while/gru_cell/mul_6Mul gru/while/gru_cell/Sigmoid_1:y:0%gru/while/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/mul_6µ
gru/while/gru_cell/add_2AddV2%gru/while/gru_cell/BiasAdd_2:output:0gru/while/gru_cell/mul_6:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/add_2Л
gru/while/gru_cell/TanhTanhgru/while/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/TanhІ
gru/while/gru_cell/mul_7Mulgru/while/gru_cell/Sigmoid:y:0gru_while_placeholder_2*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/mul_7y
gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru/while/gru_cell/sub/x≠
gru/while/gru_cell/subSub!gru/while/gru_cell/sub/x:output:0gru/while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/subІ
gru/while/gru_cell/mul_8Mulgru/while/gru_cell/sub:z:0gru/while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/mul_8ђ
gru/while/gru_cell/add_3AddV2gru/while/gru_cell/mul_7:z:0gru/while/gru_cell/mul_8:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/gru_cell/add_3р
.gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_while_placeholder_1gru_while_placeholdergru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype020
.gru/while/TensorArrayV2Write/TensorListSetItemd
gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru/while/add/yy
gru/while/addAddV2gru_while_placeholdergru/while/add/y:output:0*
T0*
_output_shapes
: 2
gru/while/addh
gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru/while/add_1/yК
gru/while/add_1AddV2 gru_while_gru_while_loop_countergru/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru/while/add_1т
gru/while/IdentityIdentitygru/while/add_1:z:0"^gru/while/gru_cell/ReadVariableOp$^gru/while/gru_cell/ReadVariableOp_1$^gru/while/gru_cell/ReadVariableOp_2$^gru/while/gru_cell/ReadVariableOp_3$^gru/while/gru_cell/ReadVariableOp_4$^gru/while/gru_cell/ReadVariableOp_5$^gru/while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
gru/while/IdentityЙ
gru/while/Identity_1Identity&gru_while_gru_while_maximum_iterations"^gru/while/gru_cell/ReadVariableOp$^gru/while/gru_cell/ReadVariableOp_1$^gru/while/gru_cell/ReadVariableOp_2$^gru/while/gru_cell/ReadVariableOp_3$^gru/while/gru_cell/ReadVariableOp_4$^gru/while/gru_cell/ReadVariableOp_5$^gru/while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
gru/while/Identity_1ф
gru/while/Identity_2Identitygru/while/add:z:0"^gru/while/gru_cell/ReadVariableOp$^gru/while/gru_cell/ReadVariableOp_1$^gru/while/gru_cell/ReadVariableOp_2$^gru/while/gru_cell/ReadVariableOp_3$^gru/while/gru_cell/ReadVariableOp_4$^gru/while/gru_cell/ReadVariableOp_5$^gru/while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
gru/while/Identity_2°
gru/while/Identity_3Identity>gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^gru/while/gru_cell/ReadVariableOp$^gru/while/gru_cell/ReadVariableOp_1$^gru/while/gru_cell/ReadVariableOp_2$^gru/while/gru_cell/ReadVariableOp_3$^gru/while/gru_cell/ReadVariableOp_4$^gru/while/gru_cell/ReadVariableOp_5$^gru/while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
gru/while/Identity_3С
gru/while/Identity_4Identitygru/while/gru_cell/add_3:z:0"^gru/while/gru_cell/ReadVariableOp$^gru/while/gru_cell/ReadVariableOp_1$^gru/while/gru_cell/ReadVariableOp_2$^gru/while/gru_cell/ReadVariableOp_3$^gru/while/gru_cell/ReadVariableOp_4$^gru/while/gru_cell/ReadVariableOp_5$^gru/while/gru_cell/ReadVariableOp_6*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/while/Identity_4"^
,gru_while_gru_cell_readvariableop_1_resource.gru_while_gru_cell_readvariableop_1_resource_0"^
,gru_while_gru_cell_readvariableop_4_resource.gru_while_gru_cell_readvariableop_4_resource_0"Z
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
&: : : : :€€€€€€€€€Ц: : : : : 2F
!gru/while/gru_cell/ReadVariableOp!gru/while/gru_cell/ReadVariableOp2J
#gru/while/gru_cell/ReadVariableOp_1#gru/while/gru_cell/ReadVariableOp_12J
#gru/while/gru_cell/ReadVariableOp_2#gru/while/gru_cell/ReadVariableOp_22J
#gru/while/gru_cell/ReadVariableOp_3#gru/while/gru_cell/ReadVariableOp_32J
#gru/while/gru_cell/ReadVariableOp_4#gru/while/gru_cell/ReadVariableOp_42J
#gru/while/gru_cell/ReadVariableOp_5#gru/while/gru_cell/ReadVariableOp_52J
#gru/while/gru_cell/ReadVariableOp_6#gru/while/gru_cell/ReadVariableOp_6: 
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
:€€€€€€€€€Ц:

_output_shapes
: :

_output_shapes
: 
ж≤
“
while_body_59137
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	¬=
*while_gru_cell_readvariableop_1_resource_0:	2¬>
*while_gru_cell_readvariableop_4_resource_0:
Ц¬
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	¬;
(while_gru_cell_readvariableop_1_resource:	2¬<
(while_gru_cell_readvariableop_4_resource:
Ц¬ИҐwhile/gru_cell/ReadVariableOpҐwhile/gru_cell/ReadVariableOp_1Ґwhile/gru_cell/ReadVariableOp_2Ґwhile/gru_cell/ReadVariableOp_3Ґwhile/gru_cell/ReadVariableOp_4Ґwhile/gru_cell/ReadVariableOp_5Ґwhile/gru_cell/ReadVariableOp_6√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem†
while/gru_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2 
while/gru_cell/ones_like/ShapeЕ
while/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2 
while/gru_cell/ones_like/Constј
while/gru_cell/ones_likeFill'while/gru_cell/ones_like/Shape:output:0'while/gru_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/ones_likeЗ
 while/gru_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2"
 while/gru_cell/ones_like_1/ShapeЙ
 while/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2"
 while/gru_cell/ones_like_1/Const…
while/gru_cell/ones_like_1Fill)while/gru_cell/ones_like_1/Shape:output:0)while/gru_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/ones_like_1®
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	¬*
dtype02
while/gru_cell/ReadVariableOpЩ
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:¬:¬*	
num2
while/gru_cell/unstackґ
while/gru_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/mulЇ
while/gru_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/mul_1Ї
while/gru_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/gru_cell/mul_2Ѓ
while/gru_cell/ReadVariableOp_1ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02!
while/gru_cell/ReadVariableOp_1Щ
"while/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"while/gru_cell/strided_slice/stackЭ
$while/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2&
$while/gru_cell/strided_slice/stack_1Э
$while/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$while/gru_cell/strided_slice/stack_2ў
while/gru_cell/strided_sliceStridedSlice'while/gru_cell/ReadVariableOp_1:value:0+while/gru_cell/strided_slice/stack:output:0-while/gru_cell/strided_slice/stack_1:output:0-while/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
while/gru_cell/strided_slice™
while/gru_cell/MatMulMatMulwhile/gru_cell/mul:z:0%while/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMulЃ
while/gru_cell/ReadVariableOp_2ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02!
while/gru_cell/ReadVariableOp_2Э
$while/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2&
$while/gru_cell/strided_slice_1/stack°
&while/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2(
&while/gru_cell/strided_slice_1/stack_1°
&while/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_1/stack_2г
while/gru_cell/strided_slice_1StridedSlice'while/gru_cell/ReadVariableOp_2:value:0-while/gru_cell/strided_slice_1/stack:output:0/while/gru_cell/strided_slice_1/stack_1:output:0/while/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_1≤
while/gru_cell/MatMul_1MatMulwhile/gru_cell/mul_1:z:0'while/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_1Ѓ
while/gru_cell/ReadVariableOp_3ReadVariableOp*while_gru_cell_readvariableop_1_resource_0*
_output_shapes
:	2¬*
dtype02!
while/gru_cell/ReadVariableOp_3Э
$while/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2&
$while/gru_cell/strided_slice_2/stack°
&while/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell/strided_slice_2/stack_1°
&while/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_2/stack_2г
while/gru_cell/strided_slice_2StridedSlice'while/gru_cell/ReadVariableOp_3:value:0-while/gru_cell/strided_slice_2/stack:output:0/while/gru_cell/strided_slice_2/stack_1:output:0/while/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_2≤
while/gru_cell/MatMul_2MatMulwhile/gru_cell/mul_2:z:0'while/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_2Ц
$while/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_3/stackЫ
&while/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2(
&while/gru_cell/strided_slice_3/stack_1Ъ
&while/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_3/stack_2«
while/gru_cell/strided_slice_3StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_3/stack:output:0/while/gru_cell/strided_slice_3/stack_1:output:0/while/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2 
while/gru_cell/strided_slice_3Є
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0'while/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAddЧ
$while/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2&
$while/gru_cell/strided_slice_4/stackЫ
&while/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2(
&while/gru_cell/strided_slice_4/stack_1Ъ
&while/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_4/stack_2µ
while/gru_cell/strided_slice_4StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_4/stack:output:0/while/gru_cell/strided_slice_4/stack_1:output:0/while/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2 
while/gru_cell/strided_slice_4Њ
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0'while/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_1Ч
$while/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2&
$while/gru_cell/strided_slice_5/stackЪ
&while/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell/strided_slice_5/stack_1Ъ
&while/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_5/stack_2≈
while/gru_cell/strided_slice_5StridedSlicewhile/gru_cell/unstack:output:0-while/gru_cell/strided_slice_5/stack:output:0/while/gru_cell/strided_slice_5/stack_1:output:0/while/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2 
while/gru_cell/strided_slice_5Њ
while/gru_cell/BiasAdd_2BiasAdd!while/gru_cell/MatMul_2:product:0'while/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_2†
while/gru_cell/mul_3Mulwhile_placeholder_2#while/gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_3†
while/gru_cell/mul_4Mulwhile_placeholder_2#while/gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_4†
while/gru_cell/mul_5Mulwhile_placeholder_2#while/gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_5ѓ
while/gru_cell/ReadVariableOp_4ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02!
while/gru_cell/ReadVariableOp_4Э
$while/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell/strided_slice_6/stack°
&while/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2(
&while/gru_cell/strided_slice_6/stack_1°
&while/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_6/stack_2д
while/gru_cell/strided_slice_6StridedSlice'while/gru_cell/ReadVariableOp_4:value:0-while/gru_cell/strided_slice_6/stack:output:0/while/gru_cell/strided_slice_6/stack_1:output:0/while/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_6≤
while/gru_cell/MatMul_3MatMulwhile/gru_cell/mul_3:z:0'while/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_3ѓ
while/gru_cell/ReadVariableOp_5ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02!
while/gru_cell/ReadVariableOp_5Э
$while/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2&
$while/gru_cell/strided_slice_7/stack°
&while/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2(
&while/gru_cell/strided_slice_7/stack_1°
&while/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell/strided_slice_7/stack_2д
while/gru_cell/strided_slice_7StridedSlice'while/gru_cell/ReadVariableOp_5:value:0-while/gru_cell/strided_slice_7/stack:output:0/while/gru_cell/strided_slice_7/stack_1:output:0/while/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2 
while/gru_cell/strided_slice_7≤
while/gru_cell/MatMul_4MatMulwhile/gru_cell/mul_4:z:0'while/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_4Ц
$while/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$while/gru_cell/strided_slice_8/stackЫ
&while/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2(
&while/gru_cell/strided_slice_8/stack_1Ъ
&while/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_8/stack_2«
while/gru_cell/strided_slice_8StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_8/stack:output:0/while/gru_cell/strided_slice_8/stack_1:output:0/while/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2 
while/gru_cell/strided_slice_8Њ
while/gru_cell/BiasAdd_3BiasAdd!while/gru_cell/MatMul_3:product:0'while/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_3Ч
$while/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2&
$while/gru_cell/strided_slice_9/stackЫ
&while/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2(
&while/gru_cell/strided_slice_9/stack_1Ъ
&while/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell/strided_slice_9/stack_2µ
while/gru_cell/strided_slice_9StridedSlicewhile/gru_cell/unstack:output:1-while/gru_cell/strided_slice_9/stack:output:0/while/gru_cell/strided_slice_9/stack_1:output:0/while/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2 
while/gru_cell/strided_slice_9Њ
while/gru_cell/BiasAdd_4BiasAdd!while/gru_cell/MatMul_4:product:0'while/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_4®
while/gru_cell/addAddV2while/gru_cell/BiasAdd:output:0!while/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/addЖ
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/SigmoidЃ
while/gru_cell/add_1AddV2!while/gru_cell/BiasAdd_1:output:0!while/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/add_1М
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/Sigmoid_1ѓ
while/gru_cell/ReadVariableOp_6ReadVariableOp*while_gru_cell_readvariableop_4_resource_0* 
_output_shapes
:
Ц¬*
dtype02!
while/gru_cell/ReadVariableOp_6Я
%while/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2'
%while/gru_cell/strided_slice_10/stack£
'while/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/gru_cell/strided_slice_10/stack_1£
'while/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell/strided_slice_10/stack_2й
while/gru_cell/strided_slice_10StridedSlice'while/gru_cell/ReadVariableOp_6:value:0.while/gru_cell/strided_slice_10/stack:output:00while/gru_cell/strided_slice_10/stack_1:output:00while/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2!
while/gru_cell/strided_slice_10≥
while/gru_cell/MatMul_5MatMulwhile/gru_cell/mul_5:z:0(while/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/MatMul_5Щ
%while/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2'
%while/gru_cell/strided_slice_11/stackЬ
'while/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'while/gru_cell/strided_slice_11/stack_1Ь
'while/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'while/gru_cell/strided_slice_11/stack_2 
while/gru_cell/strided_slice_11StridedSlicewhile/gru_cell/unstack:output:1.while/gru_cell/strided_slice_11/stack:output:00while/gru_cell/strided_slice_11/stack_1:output:00while/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2!
while/gru_cell/strided_slice_11њ
while/gru_cell/BiasAdd_5BiasAdd!while/gru_cell/MatMul_5:product:0(while/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/BiasAdd_5І
while/gru_cell/mul_6Mulwhile/gru_cell/Sigmoid_1:y:0!while/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_6•
while/gru_cell/add_2AddV2!while/gru_cell/BiasAdd_2:output:0while/gru_cell/mul_6:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/add_2
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/TanhЧ
while/gru_cell/mul_7Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_7q
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/gru_cell/sub/xЭ
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/subЧ
while/gru_cell/mul_8Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/mul_8Ь
while/gru_cell/add_3AddV2while/gru_cell/mul_7:z:0while/gru_cell/mul_8:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/gru_cell/add_3№
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1 
while/IdentityIdentitywhile/add_1:z:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/IdentityЁ
while/Identity_1Identitywhile_while_maximum_iterations^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/Identity_1ћ
while/Identity_2Identitywhile/add:z:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/Identity_2щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*
_output_shapes
: 2
while/Identity_3й
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/gru_cell/ReadVariableOp ^while/gru_cell/ReadVariableOp_1 ^while/gru_cell/ReadVariableOp_2 ^while/gru_cell/ReadVariableOp_3 ^while/gru_cell/ReadVariableOp_4 ^while/gru_cell/ReadVariableOp_5 ^while/gru_cell/ReadVariableOp_6*
T0*(
_output_shapes
:€€€€€€€€€Ц2
while/Identity_4"V
(while_gru_cell_readvariableop_1_resource*while_gru_cell_readvariableop_1_resource_0"V
(while_gru_cell_readvariableop_4_resource*while_gru_cell_readvariableop_4_resource_0"R
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
&: : : : :€€€€€€€€€Ц: : : : : 2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp2B
while/gru_cell/ReadVariableOp_1while/gru_cell/ReadVariableOp_12B
while/gru_cell/ReadVariableOp_2while/gru_cell/ReadVariableOp_22B
while/gru_cell/ReadVariableOp_3while/gru_cell/ReadVariableOp_32B
while/gru_cell/ReadVariableOp_4while/gru_cell/ReadVariableOp_42B
while/gru_cell/ReadVariableOp_5while/gru_cell/ReadVariableOp_52B
while/gru_cell/ReadVariableOp_6while/gru_cell/ReadVariableOp_6: 
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
:€€€€€€€€€Ц:

_output_shapes
: :

_output_shapes
: 
№Ј
Ќ
>__inference_gru_layer_call_and_return_conditional_losses_59289
inputs_03
 gru_cell_readvariableop_resource:	¬5
"gru_cell_readvariableop_1_resource:	2¬6
"gru_cell_readvariableop_4_resource:
Ц¬
identityИҐgru_cell/ReadVariableOpҐgru_cell/ReadVariableOp_1Ґgru_cell/ReadVariableOp_2Ґgru_cell/ReadVariableOp_3Ґgru_cell/ReadVariableOp_4Ґgru_cell/ReadVariableOp_5Ґgru_cell/ReadVariableOp_6ҐwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ц2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ц2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_mask2
strided_slice_2|
gru_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like/Shapey
gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru_cell/ones_like/Const®
gru_cell/ones_likeFill!gru_cell/ones_like/Shape:output:0!gru_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/ones_likev
gru_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
gru_cell/ones_like_1/Shape}
gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru_cell/ones_like_1/Const±
gru_cell/ones_like_1Fill#gru_cell/ones_like_1/Shape:output:0#gru_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/ones_like_1Ф
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	¬*
dtype02
gru_cell/ReadVariableOpЗ
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:¬:¬*	
num2
gru_cell/unstackМ
gru_cell/mulMulstrided_slice_2:output:0gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/mulР
gru_cell/mul_1Mulstrided_slice_2:output:0gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/mul_1Р
gru_cell/mul_2Mulstrided_slice_2:output:0gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru_cell/mul_2Ъ
gru_cell/ReadVariableOp_1ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru_cell/ReadVariableOp_1Н
gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
gru_cell/strided_slice/stackС
gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2 
gru_cell/strided_slice/stack_1С
gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2 
gru_cell/strided_slice/stack_2µ
gru_cell/strided_sliceStridedSlice!gru_cell/ReadVariableOp_1:value:0%gru_cell/strided_slice/stack:output:0'gru_cell/strided_slice/stack_1:output:0'gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru_cell/strided_sliceТ
gru_cell/MatMulMatMulgru_cell/mul:z:0gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMulЪ
gru_cell/ReadVariableOp_2ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru_cell/ReadVariableOp_2С
gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2 
gru_cell/strided_slice_1/stackХ
 gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2"
 gru_cell/strided_slice_1/stack_1Х
 gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_1/stack_2њ
gru_cell/strided_slice_1StridedSlice!gru_cell/ReadVariableOp_2:value:0'gru_cell/strided_slice_1/stack:output:0)gru_cell/strided_slice_1/stack_1:output:0)gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru_cell/strided_slice_1Ъ
gru_cell/MatMul_1MatMulgru_cell/mul_1:z:0!gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_1Ъ
gru_cell/ReadVariableOp_3ReadVariableOp"gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru_cell/ReadVariableOp_3С
gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2 
gru_cell/strided_slice_2/stackХ
 gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell/strided_slice_2/stack_1Х
 gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_2/stack_2њ
gru_cell/strided_slice_2StridedSlice!gru_cell/ReadVariableOp_3:value:0'gru_cell/strided_slice_2/stack:output:0)gru_cell/strided_slice_2/stack_1:output:0)gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru_cell/strided_slice_2Ъ
gru_cell/MatMul_2MatMulgru_cell/mul_2:z:0!gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_2К
gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_3/stackП
 gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2"
 gru_cell/strided_slice_3/stack_1О
 gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_3/stack_2£
gru_cell/strided_slice_3StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_3/stack:output:0)gru_cell/strided_slice_3/stack_1:output:0)gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
gru_cell/strided_slice_3†
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0!gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAddЛ
gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2 
gru_cell/strided_slice_4/stackП
 gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gru_cell/strided_slice_4/stack_1О
 gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_4/stack_2С
gru_cell/strided_slice_4StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_4/stack:output:0)gru_cell/strided_slice_4/stack_1:output:0)gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
gru_cell/strided_slice_4¶
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0!gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_1Л
gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gru_cell/strided_slice_5/stackО
 gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell/strided_slice_5/stack_1О
 gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_5/stack_2°
gru_cell/strided_slice_5StridedSlicegru_cell/unstack:output:0'gru_cell/strided_slice_5/stack:output:0)gru_cell/strided_slice_5/stack_1:output:0)gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
gru_cell/strided_slice_5¶
gru_cell/BiasAdd_2BiasAddgru_cell/MatMul_2:product:0!gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_2Й
gru_cell/mul_3Mulzeros:output:0gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_3Й
gru_cell/mul_4Mulzeros:output:0gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_4Й
gru_cell/mul_5Mulzeros:output:0gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_5Ы
gru_cell/ReadVariableOp_4ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru_cell/ReadVariableOp_4С
gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell/strided_slice_6/stackХ
 gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2"
 gru_cell/strided_slice_6/stack_1Х
 gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_6/stack_2ј
gru_cell/strided_slice_6StridedSlice!gru_cell/ReadVariableOp_4:value:0'gru_cell/strided_slice_6/stack:output:0)gru_cell/strided_slice_6/stack_1:output:0)gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru_cell/strided_slice_6Ъ
gru_cell/MatMul_3MatMulgru_cell/mul_3:z:0!gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_3Ы
gru_cell/ReadVariableOp_5ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru_cell/ReadVariableOp_5С
gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2 
gru_cell/strided_slice_7/stackХ
 gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2"
 gru_cell/strided_slice_7/stack_1Х
 gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell/strided_slice_7/stack_2ј
gru_cell/strided_slice_7StridedSlice!gru_cell/ReadVariableOp_5:value:0'gru_cell/strided_slice_7/stack:output:0)gru_cell/strided_slice_7/stack_1:output:0)gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru_cell/strided_slice_7Ъ
gru_cell/MatMul_4MatMulgru_cell/mul_4:z:0!gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_4К
gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
gru_cell/strided_slice_8/stackП
 gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2"
 gru_cell/strided_slice_8/stack_1О
 gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_8/stack_2£
gru_cell/strided_slice_8StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_8/stack:output:0)gru_cell/strided_slice_8/stack_1:output:0)gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
gru_cell/strided_slice_8¶
gru_cell/BiasAdd_3BiasAddgru_cell/MatMul_3:product:0!gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_3Л
gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2 
gru_cell/strided_slice_9/stackП
 gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gru_cell/strided_slice_9/stack_1О
 gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell/strided_slice_9/stack_2С
gru_cell/strided_slice_9StridedSlicegru_cell/unstack:output:1'gru_cell/strided_slice_9/stack:output:0)gru_cell/strided_slice_9/stack_1:output:0)gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
gru_cell/strided_slice_9¶
gru_cell/BiasAdd_4BiasAddgru_cell/MatMul_4:product:0!gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_4Р
gru_cell/addAddV2gru_cell/BiasAdd:output:0gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/addt
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/SigmoidЦ
gru_cell/add_1AddV2gru_cell/BiasAdd_1:output:0gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/add_1z
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/Sigmoid_1Ы
gru_cell/ReadVariableOp_6ReadVariableOp"gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru_cell/ReadVariableOp_6У
gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2!
gru_cell/strided_slice_10/stackЧ
!gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!gru_cell/strided_slice_10/stack_1Ч
!gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell/strided_slice_10/stack_2≈
gru_cell/strided_slice_10StridedSlice!gru_cell/ReadVariableOp_6:value:0(gru_cell/strided_slice_10/stack:output:0*gru_cell/strided_slice_10/stack_1:output:0*gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru_cell/strided_slice_10Ы
gru_cell/MatMul_5MatMulgru_cell/mul_5:z:0"gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/MatMul_5Н
gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gru_cell/strided_slice_11/stackР
!gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2#
!gru_cell/strided_slice_11/stack_1Р
!gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!gru_cell/strided_slice_11/stack_2¶
gru_cell/strided_slice_11StridedSlicegru_cell/unstack:output:1(gru_cell/strided_slice_11/stack:output:0*gru_cell/strided_slice_11/stack_1:output:0*gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
gru_cell/strided_slice_11І
gru_cell/BiasAdd_5BiasAddgru_cell/MatMul_5:product:0"gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/BiasAdd_5П
gru_cell/mul_6Mulgru_cell/Sigmoid_1:y:0gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_6Н
gru_cell/add_2AddV2gru_cell/BiasAdd_2:output:0gru_cell/mul_6:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/add_2m
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/TanhА
gru_cell/mul_7Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_7e
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru_cell/sub/xЕ
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/sub
gru_cell/mul_8Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/mul_8Д
gru_cell/add_3AddV2gru_cell/mul_7:z:0gru_cell/mul_8:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru_cell/add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€Ц   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterХ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource"gru_cell_readvariableop_1_resource"gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€Ц: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_59137*
condR
while_cond_59136*9
output_shapes(
&: : : : :€€€€€€€€€Ц: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€Ц   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ц*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ц2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЈ
IdentityIdentitystrided_slice_3:output:0^gru_cell/ReadVariableOp^gru_cell/ReadVariableOp_1^gru_cell/ReadVariableOp_2^gru_cell/ReadVariableOp_3^gru_cell/ReadVariableOp_4^gru_cell/ReadVariableOp_5^gru_cell/ReadVariableOp_6^while*
T0*(
_output_shapes
:€€€€€€€€€Ц2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€2: : : 22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp26
gru_cell/ReadVariableOp_1gru_cell/ReadVariableOp_126
gru_cell/ReadVariableOp_2gru_cell/ReadVariableOp_226
gru_cell/ReadVariableOp_3gru_cell/ReadVariableOp_326
gru_cell/ReadVariableOp_4gru_cell/ReadVariableOp_426
gru_cell/ReadVariableOp_5gru_cell/ReadVariableOp_526
gru_cell/ReadVariableOp_6gru_cell/ReadVariableOp_62
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
"
_user_specified_name
inputs/0
ч
•
while_cond_59798
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_59798___redundant_placeholder03
/while_while_cond_59798___redundant_placeholder13
/while_while_cond_59798___redundant_placeholder23
/while_while_cond_59798___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :€€€€€€€€€Ц: ::::: 
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
:€€€€€€€€€Ц:

_output_shapes
: :

_output_shapes
:
ч
•
while_cond_57028
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_57028___redundant_placeholder03
/while_while_cond_57028___redundant_placeholder13
/while_while_cond_57028___redundant_placeholder23
/while_while_cond_57028___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :€€€€€€€€€Ц: ::::: 
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
:€€€€€€€€€Ц:

_output_shapes
: :

_output_shapes
:
Г=
т
>__inference_gru_layer_call_and_return_conditional_losses_56785

inputs!
gru_cell_56709:	¬!
gru_cell_56711:	2¬"
gru_cell_56713:
Ц¬
identityИҐ gru_cell/StatefulPartitionedCallҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ц2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ц2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_mask2
strided_slice_2№
 gru_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_56709gru_cell_56711gru_cell_56713*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€Ц:€€€€€€€€€Ц*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_gru_cell_layer_call_and_return_conditional_losses_567082"
 gru_cell/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€Ц   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterџ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_56709gru_cell_56711gru_cell_56713*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€Ц: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_56721*
condR
while_cond_56720*9
output_shapes(
&: : : : :€€€€€€€€€Ц: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€Ц   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ц*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ц2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeШ
IdentityIdentitystrided_slice_3:output:0!^gru_cell/StatefulPartitionedCall^while*
T0*(
_output_shapes
:€€€€€€€€€Ц2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€2: : : 2D
 gru_cell/StatefulPartitionedCall gru_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
 
_user_specified_nameinputs
н
Щ
*__inference_sequential_layer_call_fn_58160
embedding_input
unknown:2
	unknown_0:	¬
	unknown_1:	2¬
	unknown_2:
Ц¬
	unknown_3:	Ц
	unknown_4:
identityИҐStatefulPartitionedCall≤
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_581282
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:€€€€€€€€€
)
_user_specified_nameembedding_input
ё„
ъ
E__inference_sequential_layer_call_and_return_conditional_losses_58553

inputs2
 embedding_embedding_lookup_58261:27
$gru_gru_cell_readvariableop_resource:	¬9
&gru_gru_cell_readvariableop_1_resource:	2¬:
&gru_gru_cell_readvariableop_4_resource:
Ц¬7
$dense_matmul_readvariableop_resource:	Ц3
%dense_biasadd_readvariableop_resource:
identityИҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐembedding/embedding_lookupҐgru/gru_cell/ReadVariableOpҐgru/gru_cell/ReadVariableOp_1Ґgru/gru_cell/ReadVariableOp_2Ґgru/gru_cell/ReadVariableOp_3Ґgru/gru_cell/ReadVariableOp_4Ґgru/gru_cell/ReadVariableOp_5Ґgru/gru_cell/ReadVariableOp_6Ґ	gru/whileq
embedding/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
embedding/Cast≠
embedding/embedding_lookupResourceGather embedding_embedding_lookup_58261embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/58261*+
_output_shapes
:€€€€€€€€€2*
dtype02
embedding/embedding_lookupФ
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/58261*+
_output_shapes
:€€€€€€€€€22%
#embedding/embedding_lookup/IdentityЊ
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€22'
%embedding/embedding_lookup/Identity_1t
	gru/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
	gru/Shape|
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru/strided_slice/stackА
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice/stack_1А
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice/stack_2ъ
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru/strided_slicee
gru/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ц2
gru/zeros/mul/y|
gru/zeros/mulMulgru/strided_slice:output:0gru/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru/zeros/mulg
gru/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
gru/zeros/Less/yw
gru/zeros/LessLessgru/zeros/mul:z:0gru/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru/zeros/Lessk
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ц2
gru/zeros/packed/1У
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru/zeros/packedg
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru/zeros/ConstЖ
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
	gru/zeros}
gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru/transpose/permЃ
gru/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0gru/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
gru/transpose[
gru/Shape_1Shapegru/transpose:y:0*
T0*
_output_shapes
:2
gru/Shape_1А
gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru/strided_slice_1/stackД
gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice_1/stack_1Д
gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice_1/stack_2Ж
gru/strided_slice_1StridedSlicegru/Shape_1:output:0"gru/strided_slice_1/stack:output:0$gru/strided_slice_1/stack_1:output:0$gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru/strided_slice_1Н
gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2!
gru/TensorArrayV2/element_shape¬
gru/TensorArrayV2TensorListReserve(gru/TensorArrayV2/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru/TensorArrayV2«
9gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   2;
9gru/TensorArrayUnstack/TensorListFromTensor/element_shapeИ
+gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru/transpose:y:0Bgru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02-
+gru/TensorArrayUnstack/TensorListFromTensorА
gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru/strided_slice_2/stackД
gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice_2/stack_1Д
gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice_2/stack_2Ф
gru/strided_slice_2StridedSlicegru/transpose:y:0"gru/strided_slice_2/stack:output:0$gru/strided_slice_2/stack_1:output:0$gru/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_mask2
gru/strided_slice_2И
gru/gru_cell/ones_like/ShapeShapegru/strided_slice_2:output:0*
T0*
_output_shapes
:2
gru/gru_cell/ones_like/ShapeБ
gru/gru_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru/gru_cell/ones_like/ConstЄ
gru/gru_cell/ones_likeFill%gru/gru_cell/ones_like/Shape:output:0%gru/gru_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru/gru_cell/ones_likeВ
gru/gru_cell/ones_like_1/ShapeShapegru/zeros:output:0*
T0*
_output_shapes
:2 
gru/gru_cell/ones_like_1/ShapeЕ
gru/gru_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2 
gru/gru_cell/ones_like_1/ConstЅ
gru/gru_cell/ones_like_1Fill'gru/gru_cell/ones_like_1/Shape:output:0'gru/gru_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/ones_like_1†
gru/gru_cell/ReadVariableOpReadVariableOp$gru_gru_cell_readvariableop_resource*
_output_shapes
:	¬*
dtype02
gru/gru_cell/ReadVariableOpУ
gru/gru_cell/unstackUnpack#gru/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:¬:¬*	
num2
gru/gru_cell/unstackЬ
gru/gru_cell/mulMulgru/strided_slice_2:output:0gru/gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru/gru_cell/mul†
gru/gru_cell/mul_1Mulgru/strided_slice_2:output:0gru/gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru/gru_cell/mul_1†
gru/gru_cell/mul_2Mulgru/strided_slice_2:output:0gru/gru_cell/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
gru/gru_cell/mul_2¶
gru/gru_cell/ReadVariableOp_1ReadVariableOp&gru_gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru/gru_cell/ReadVariableOp_1Х
 gru/gru_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru/gru_cell/strided_slice/stackЩ
"gru/gru_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2$
"gru/gru_cell/strided_slice/stack_1Щ
"gru/gru_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru/gru_cell/strided_slice/stack_2Ќ
gru/gru_cell/strided_sliceStridedSlice%gru/gru_cell/ReadVariableOp_1:value:0)gru/gru_cell/strided_slice/stack:output:0+gru/gru_cell/strided_slice/stack_1:output:0+gru/gru_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru/gru_cell/strided_sliceҐ
gru/gru_cell/MatMulMatMulgru/gru_cell/mul:z:0#gru/gru_cell/strided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/MatMul¶
gru/gru_cell/ReadVariableOp_2ReadVariableOp&gru_gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru/gru_cell/ReadVariableOp_2Щ
"gru/gru_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2$
"gru/gru_cell/strided_slice_1/stackЭ
$gru/gru_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2&
$gru/gru_cell/strided_slice_1/stack_1Э
$gru/gru_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru/gru_cell/strided_slice_1/stack_2„
gru/gru_cell/strided_slice_1StridedSlice%gru/gru_cell/ReadVariableOp_2:value:0+gru/gru_cell/strided_slice_1/stack:output:0-gru/gru_cell/strided_slice_1/stack_1:output:0-gru/gru_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru/gru_cell/strided_slice_1™
gru/gru_cell/MatMul_1MatMulgru/gru_cell/mul_1:z:0%gru/gru_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/MatMul_1¶
gru/gru_cell/ReadVariableOp_3ReadVariableOp&gru_gru_cell_readvariableop_1_resource*
_output_shapes
:	2¬*
dtype02
gru/gru_cell/ReadVariableOp_3Щ
"gru/gru_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"gru/gru_cell/strided_slice_2/stackЭ
$gru/gru_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gru/gru_cell/strided_slice_2/stack_1Э
$gru/gru_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru/gru_cell/strided_slice_2/stack_2„
gru/gru_cell/strided_slice_2StridedSlice%gru/gru_cell/ReadVariableOp_3:value:0+gru/gru_cell/strided_slice_2/stack:output:0-gru/gru_cell/strided_slice_2/stack_1:output:0-gru/gru_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2Ц*

begin_mask*
end_mask2
gru/gru_cell/strided_slice_2™
gru/gru_cell/MatMul_2MatMulgru/gru_cell/mul_2:z:0%gru/gru_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/MatMul_2Т
"gru/gru_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"gru/gru_cell/strided_slice_3/stackЧ
$gru/gru_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2&
$gru/gru_cell/strided_slice_3/stack_1Ц
$gru/gru_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$gru/gru_cell/strided_slice_3/stack_2ї
gru/gru_cell/strided_slice_3StridedSlicegru/gru_cell/unstack:output:0+gru/gru_cell/strided_slice_3/stack:output:0-gru/gru_cell/strided_slice_3/stack_1:output:0-gru/gru_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
gru/gru_cell/strided_slice_3∞
gru/gru_cell/BiasAddBiasAddgru/gru_cell/MatMul:product:0%gru/gru_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/BiasAddУ
"gru/gru_cell/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2$
"gru/gru_cell/strided_slice_4/stackЧ
$gru/gru_cell/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2&
$gru/gru_cell/strided_slice_4/stack_1Ц
$gru/gru_cell/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$gru/gru_cell/strided_slice_4/stack_2©
gru/gru_cell/strided_slice_4StridedSlicegru/gru_cell/unstack:output:0+gru/gru_cell/strided_slice_4/stack:output:0-gru/gru_cell/strided_slice_4/stack_1:output:0-gru/gru_cell/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
gru/gru_cell/strided_slice_4ґ
gru/gru_cell/BiasAdd_1BiasAddgru/gru_cell/MatMul_1:product:0%gru/gru_cell/strided_slice_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/BiasAdd_1У
"gru/gru_cell/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2$
"gru/gru_cell/strided_slice_5/stackЦ
$gru/gru_cell/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$gru/gru_cell/strided_slice_5/stack_1Ц
$gru/gru_cell/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$gru/gru_cell/strided_slice_5/stack_2є
gru/gru_cell/strided_slice_5StridedSlicegru/gru_cell/unstack:output:0+gru/gru_cell/strided_slice_5/stack:output:0-gru/gru_cell/strided_slice_5/stack_1:output:0-gru/gru_cell/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
gru/gru_cell/strided_slice_5ґ
gru/gru_cell/BiasAdd_2BiasAddgru/gru_cell/MatMul_2:product:0%gru/gru_cell/strided_slice_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/BiasAdd_2Щ
gru/gru_cell/mul_3Mulgru/zeros:output:0!gru/gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/mul_3Щ
gru/gru_cell/mul_4Mulgru/zeros:output:0!gru/gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/mul_4Щ
gru/gru_cell/mul_5Mulgru/zeros:output:0!gru/gru_cell/ones_like_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/mul_5І
gru/gru_cell/ReadVariableOp_4ReadVariableOp&gru_gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru/gru_cell/ReadVariableOp_4Щ
"gru/gru_cell/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"gru/gru_cell/strided_slice_6/stackЭ
$gru/gru_cell/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ц   2&
$gru/gru_cell/strided_slice_6/stack_1Э
$gru/gru_cell/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru/gru_cell/strided_slice_6/stack_2Ў
gru/gru_cell/strided_slice_6StridedSlice%gru/gru_cell/ReadVariableOp_4:value:0+gru/gru_cell/strided_slice_6/stack:output:0-gru/gru_cell/strided_slice_6/stack_1:output:0-gru/gru_cell/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru/gru_cell/strided_slice_6™
gru/gru_cell/MatMul_3MatMulgru/gru_cell/mul_3:z:0%gru/gru_cell/strided_slice_6:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/MatMul_3І
gru/gru_cell/ReadVariableOp_5ReadVariableOp&gru_gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru/gru_cell/ReadVariableOp_5Щ
"gru/gru_cell/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ц   2$
"gru/gru_cell/strided_slice_7/stackЭ
$gru/gru_cell/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2&
$gru/gru_cell/strided_slice_7/stack_1Э
$gru/gru_cell/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru/gru_cell/strided_slice_7/stack_2Ў
gru/gru_cell/strided_slice_7StridedSlice%gru/gru_cell/ReadVariableOp_5:value:0+gru/gru_cell/strided_slice_7/stack:output:0-gru/gru_cell/strided_slice_7/stack_1:output:0-gru/gru_cell/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru/gru_cell/strided_slice_7™
gru/gru_cell/MatMul_4MatMulgru/gru_cell/mul_4:z:0%gru/gru_cell/strided_slice_7:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/MatMul_4Т
"gru/gru_cell/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"gru/gru_cell/strided_slice_8/stackЧ
$gru/gru_cell/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц2&
$gru/gru_cell/strided_slice_8/stack_1Ц
$gru/gru_cell/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$gru/gru_cell/strided_slice_8/stack_2ї
gru/gru_cell/strided_slice_8StridedSlicegru/gru_cell/unstack:output:1+gru/gru_cell/strided_slice_8/stack:output:0-gru/gru_cell/strided_slice_8/stack_1:output:0-gru/gru_cell/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*

begin_mask2
gru/gru_cell/strided_slice_8ґ
gru/gru_cell/BiasAdd_3BiasAddgru/gru_cell/MatMul_3:product:0%gru/gru_cell/strided_slice_8:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/BiasAdd_3У
"gru/gru_cell/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц2$
"gru/gru_cell/strided_slice_9/stackЧ
$gru/gru_cell/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2&
$gru/gru_cell/strided_slice_9/stack_1Ц
$gru/gru_cell/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$gru/gru_cell/strided_slice_9/stack_2©
gru/gru_cell/strided_slice_9StridedSlicegru/gru_cell/unstack:output:1+gru/gru_cell/strided_slice_9/stack:output:0-gru/gru_cell/strided_slice_9/stack_1:output:0-gru/gru_cell/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц2
gru/gru_cell/strided_slice_9ґ
gru/gru_cell/BiasAdd_4BiasAddgru/gru_cell/MatMul_4:product:0%gru/gru_cell/strided_slice_9:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/BiasAdd_4†
gru/gru_cell/addAddV2gru/gru_cell/BiasAdd:output:0gru/gru_cell/BiasAdd_3:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/addА
gru/gru_cell/SigmoidSigmoidgru/gru_cell/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/Sigmoid¶
gru/gru_cell/add_1AddV2gru/gru_cell/BiasAdd_1:output:0gru/gru_cell/BiasAdd_4:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/add_1Ж
gru/gru_cell/Sigmoid_1Sigmoidgru/gru_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/Sigmoid_1І
gru/gru_cell/ReadVariableOp_6ReadVariableOp&gru_gru_cell_readvariableop_4_resource* 
_output_shapes
:
Ц¬*
dtype02
gru/gru_cell/ReadVariableOp_6Ы
#gru/gru_cell/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2%
#gru/gru_cell/strided_slice_10/stackЯ
%gru/gru_cell/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%gru/gru_cell/strided_slice_10/stack_1Я
%gru/gru_cell/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%gru/gru_cell/strided_slice_10/stack_2Ё
gru/gru_cell/strided_slice_10StridedSlice%gru/gru_cell/ReadVariableOp_6:value:0,gru/gru_cell/strided_slice_10/stack:output:0.gru/gru_cell/strided_slice_10/stack_1:output:0.gru/gru_cell/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ЦЦ*

begin_mask*
end_mask2
gru/gru_cell/strided_slice_10Ђ
gru/gru_cell/MatMul_5MatMulgru/gru_cell/mul_5:z:0&gru/gru_cell/strided_slice_10:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/MatMul_5Х
#gru/gru_cell/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ2%
#gru/gru_cell/strided_slice_11/stackШ
%gru/gru_cell/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2'
%gru/gru_cell/strided_slice_11/stack_1Ш
%gru/gru_cell/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%gru/gru_cell/strided_slice_11/stack_2Њ
gru/gru_cell/strided_slice_11StridedSlicegru/gru_cell/unstack:output:1,gru/gru_cell/strided_slice_11/stack:output:0.gru/gru_cell/strided_slice_11/stack_1:output:0.gru/gru_cell/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:Ц*
end_mask2
gru/gru_cell/strided_slice_11Ј
gru/gru_cell/BiasAdd_5BiasAddgru/gru_cell/MatMul_5:product:0&gru/gru_cell/strided_slice_11:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/BiasAdd_5Я
gru/gru_cell/mul_6Mulgru/gru_cell/Sigmoid_1:y:0gru/gru_cell/BiasAdd_5:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/mul_6Э
gru/gru_cell/add_2AddV2gru/gru_cell/BiasAdd_2:output:0gru/gru_cell/mul_6:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/add_2y
gru/gru_cell/TanhTanhgru/gru_cell/add_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/TanhР
gru/gru_cell/mul_7Mulgru/gru_cell/Sigmoid:y:0gru/zeros:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/mul_7m
gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gru/gru_cell/sub/xХ
gru/gru_cell/subSubgru/gru_cell/sub/x:output:0gru/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/subП
gru/gru_cell/mul_8Mulgru/gru_cell/sub:z:0gru/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/mul_8Ф
gru/gru_cell/add_3AddV2gru/gru_cell/mul_7:z:0gru/gru_cell/mul_8:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ц2
gru/gru_cell/add_3Ч
!gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€Ц   2#
!gru/TensorArrayV2_1/element_shape»
gru/TensorArrayV2_1TensorListReserve*gru/TensorArrayV2_1/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru/TensorArrayV2_1V
gru/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

gru/timeЗ
gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
gru/while/maximum_iterationsr
gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru/while/loop_counterЌ
	gru/whileWhilegru/while/loop_counter:output:0%gru/while/maximum_iterations:output:0gru/time:output:0gru/TensorArrayV2_1:handle:0gru/zeros:output:0gru/strided_slice_1:output:0;gru/TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_gru_cell_readvariableop_resource&gru_gru_cell_readvariableop_1_resource&gru_gru_cell_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€Ц: : : : : *%
_read_only_resource_inputs
	* 
bodyR
gru_while_body_58394* 
condR
gru_while_cond_58393*9
output_shapes(
&: : : : :€€€€€€€€€Ц: : : : : *
parallel_iterations 2
	gru/whileљ
4gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€Ц   26
4gru/TensorArrayV2Stack/TensorListStack/element_shapeщ
&gru/TensorArrayV2Stack/TensorListStackTensorListStackgru/while:output:3=gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€Ц*
element_dtype02(
&gru/TensorArrayV2Stack/TensorListStackЙ
gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
gru/strided_slice_3/stackД
gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru/strided_slice_3/stack_1Д
gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice_3/stack_2≥
gru/strided_slice_3StridedSlice/gru/TensorArrayV2Stack/TensorListStack:tensor:0"gru/strided_slice_3/stack:output:0$gru/strided_slice_3/stack_1:output:0$gru/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€Ц*
shrink_axis_mask2
gru/strided_slice_3Б
gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru/transpose_1/permґ
gru/transpose_1	Transpose/gru/TensorArrayV2Stack/TensorListStack:tensor:0gru/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€Ц2
gru/transpose_1n
gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru/runtime†
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	Ц*
dtype02
dense/MatMul/ReadVariableOpЫ
dense/MatMulMatMulgru/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense/MatMulЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOpЩ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense/BiasAdds
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense/Softmaxѓ
IdentityIdentitydense/Softmax:softmax:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup^gru/gru_cell/ReadVariableOp^gru/gru_cell/ReadVariableOp_1^gru/gru_cell/ReadVariableOp_2^gru/gru_cell/ReadVariableOp_3^gru/gru_cell/ReadVariableOp_4^gru/gru_cell/ReadVariableOp_5^gru/gru_cell/ReadVariableOp_6
^gru/while*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2:
gru/gru_cell/ReadVariableOpgru/gru_cell/ReadVariableOp2>
gru/gru_cell/ReadVariableOp_1gru/gru_cell/ReadVariableOp_12>
gru/gru_cell/ReadVariableOp_2gru/gru_cell/ReadVariableOp_22>
gru/gru_cell/ReadVariableOp_3gru/gru_cell/ReadVariableOp_32>
gru/gru_cell/ReadVariableOp_4gru/gru_cell/ReadVariableOp_42>
gru/gru_cell/ReadVariableOp_5gru/gru_cell/ReadVariableOp_52>
gru/gru_cell/ReadVariableOp_6gru/gru_cell/ReadVariableOp_62
	gru/while	gru/while:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs"ћL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Є
serving_default§
K
embedding_input8
!serving_default_embedding_input:0€€€€€€€€€9
dense0
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:Њє
ў+
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api
	
signatures
X__call__
Y_default_save_signature
*Z&call_and_return_all_conditional_losses"Щ)
_tf_keras_sequentialъ({"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 30]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_input"}}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 30]}, "dtype": "float32", "input_dim": 27, "output_dim": 50, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 30}}, {"class_name": "GRU", "config": {"name": "gru", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 150, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.1, "recurrent_dropout": 0.1, "implementation": 1, "reset_after": true}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 27, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 11, "build_input_shape": {"class_name": "TensorShape", "items": [null, 30]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 30]}, "float32", "embedding_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 30]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_input"}, "shared_object_id": 0}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 30]}, "dtype": "float32", "input_dim": 27, "output_dim": 50, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 1}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 30}, "shared_object_id": 2}, {"class_name": "GRU", "config": {"name": "gru", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 150, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.1, "recurrent_dropout": 0.1, "implementation": 1, "reset_after": true}, "shared_object_id": 7}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 27, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 10}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "acc", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 12}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
–


embeddings
trainable_variables
regularization_losses
	variables
	keras_api
[__call__
*\&call_and_return_all_conditional_losses"±
_tf_keras_layerЧ{"name": "embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 30]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 30]}, "dtype": "float32", "input_dim": 27, "output_dim": 50, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 1}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 30}, "shared_object_id": 2, "build_input_shape": {"class_name": "TensorShape", "items": [null, 30]}}
¶
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
]__call__
*^&call_and_return_all_conditional_losses"э

_tf_keras_rnn_layerя
{"name": "gru", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GRU", "config": {"name": "gru", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 150, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.1, "recurrent_dropout": 0.1, "implementation": 1, "reset_after": true}, "shared_object_id": 7, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 50]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 30, 50]}}
ѕ

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
___call__
*`&call_and_return_all_conditional_losses"™
_tf_keras_layerР{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 27, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 150}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 150]}}
њ
iter

beta_1

beta_2
	decay
learning_rate
mLmMmN mO!mP"mQ
vRvSvT vU!vV"vW"
	optimizer
J

0
 1
!2
"3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
J

0
 1
!2
"3
4
5"
trackable_list_wrapper
 
#metrics
$non_trainable_variables
%layer_metrics

&layers
'layer_regularization_losses
trainable_variables
regularization_losses
	variables
X__call__
Y_default_save_signature
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
,
aserving_default"
signature_map
&:$22embedding/embeddings
'

0"
trackable_list_wrapper
 "
trackable_list_wrapper
'

0"
trackable_list_wrapper
≠
(metrics
)non_trainable_variables
*layer_metrics

+layers
,layer_regularization_losses
trainable_variables
regularization_losses
	variables
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
щ

 kernel
!recurrent_kernel
"bias
-trainable_variables
.regularization_losses
/	variables
0	keras_api
b__call__
*c&call_and_return_all_conditional_losses"Њ
_tf_keras_layer§{"name": "gru_cell", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GRUCell", "config": {"name": "gru_cell", "trainable": true, "dtype": "float32", "units": 150, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.1, "recurrent_dropout": 0.1, "implementation": 1, "reset_after": true}, "shared_object_id": 6}
 "
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
є
1metrics
2non_trainable_variables
3layer_metrics

4states

5layers
6layer_regularization_losses
trainable_variables
regularization_losses
	variables
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
:	Ц2dense/kernel
:2
dense/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
≠
7metrics
8non_trainable_variables
9layer_metrics

:layers
;layer_regularization_losses
trainable_variables
regularization_losses
	variables
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
&:$	2¬2gru/gru_cell/kernel
1:/
Ц¬2gru/gru_cell/recurrent_kernel
$:"	¬2gru/gru_cell/bias
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
≠
>metrics
?non_trainable_variables
@layer_metrics

Alayers
Blayer_regularization_losses
-trainable_variables
.regularization_losses
/	variables
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
‘
	Ctotal
	Dcount
E	variables
F	keras_api"Э
_tf_keras_metricВ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 15}
Н
	Gtotal
	Hcount
I
_fn_kwargs
J	variables
K	keras_api"∆
_tf_keras_metricЂ{"class_name": "MeanMetricWrapper", "name": "acc", "dtype": "float32", "config": {"name": "acc", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 12}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
C0
D1"
trackable_list_wrapper
-
E	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
G0
H1"
trackable_list_wrapper
-
J	variables"
_generic_user_object
+:)22Adam/embedding/embeddings/m
$:"	Ц2Adam/dense/kernel/m
:2Adam/dense/bias/m
+:)	2¬2Adam/gru/gru_cell/kernel/m
6:4
Ц¬2$Adam/gru/gru_cell/recurrent_kernel/m
):'	¬2Adam/gru/gru_cell/bias/m
+:)22Adam/embedding/embeddings/v
$:"	Ц2Adam/dense/kernel/v
:2Adam/dense/bias/v
+:)	2¬2Adam/gru/gru_cell/kernel/v
6:4
Ц¬2$Adam/gru/gru_cell/recurrent_kernel/v
):'	¬2Adam/gru/gru_cell/bias/v
ц2у
*__inference_sequential_layer_call_fn_57671
*__inference_sequential_layer_call_fn_58240
*__inference_sequential_layer_call_fn_58257
*__inference_sequential_layer_call_fn_58160ј
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
ж2г
 __inference__wrapped_model_56571Њ
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *.Ґ+
)К&
embedding_input€€€€€€€€€
в2я
E__inference_sequential_layer_call_and_return_conditional_losses_58553
E__inference_sequential_layer_call_and_return_conditional_losses_58945
E__inference_sequential_layer_call_and_return_conditional_losses_58179
E__inference_sequential_layer_call_and_return_conditional_losses_58198ј
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
”2–
)__inference_embedding_layer_call_fn_58952Ґ
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
о2л
D__inference_embedding_layer_call_and_return_conditional_losses_58962Ґ
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
п2м
#__inference_gru_layer_call_fn_58973
#__inference_gru_layer_call_fn_58984
#__inference_gru_layer_call_fn_58995
#__inference_gru_layer_call_fn_59006’
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
џ2Ў
>__inference_gru_layer_call_and_return_conditional_losses_59289
>__inference_gru_layer_call_and_return_conditional_losses_59668
>__inference_gru_layer_call_and_return_conditional_losses_59951
>__inference_gru_layer_call_and_return_conditional_losses_60330’
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
ѕ2ћ
%__inference_dense_layer_call_fn_60339Ґ
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
к2з
@__inference_dense_layer_call_and_return_conditional_losses_60350Ґ
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
“Bѕ
#__inference_signature_wrapper_58223embedding_input"Ф
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
Ш2Х
(__inference_gru_cell_layer_call_fn_60364
(__inference_gru_cell_layer_call_fn_60378Њ
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
ќ2Ћ
C__inference_gru_cell_layer_call_and_return_conditional_losses_60480
C__inference_gru_cell_layer_call_and_return_conditional_losses_60630Њ
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
 Х
 __inference__wrapped_model_56571q
" !8Ґ5
.Ґ+
)К&
embedding_input€€€€€€€€€
™ "-™*
(
denseК
dense€€€€€€€€€°
@__inference_dense_layer_call_and_return_conditional_losses_60350]0Ґ-
&Ґ#
!К
inputs€€€€€€€€€Ц
™ "%Ґ"
К
0€€€€€€€€€
Ъ y
%__inference_dense_layer_call_fn_60339P0Ґ-
&Ґ#
!К
inputs€€€€€€€€€Ц
™ "К€€€€€€€€€І
D__inference_embedding_layer_call_and_return_conditional_losses_58962_
/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ")Ґ&
К
0€€€€€€€€€2
Ъ 
)__inference_embedding_layer_call_fn_58952R
/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€2В
C__inference_gru_cell_layer_call_and_return_conditional_losses_60480Ї" !]ҐZ
SҐP
 К
inputs€€€€€€€€€2
(Ґ%
#К 
states/0€€€€€€€€€Ц
p 
™ "TҐQ
JҐG
К
0/0€€€€€€€€€Ц
%Ъ"
 К
0/1/0€€€€€€€€€Ц
Ъ В
C__inference_gru_cell_layer_call_and_return_conditional_losses_60630Ї" !]ҐZ
SҐP
 К
inputs€€€€€€€€€2
(Ґ%
#К 
states/0€€€€€€€€€Ц
p
™ "TҐQ
JҐG
К
0/0€€€€€€€€€Ц
%Ъ"
 К
0/1/0€€€€€€€€€Ц
Ъ ў
(__inference_gru_cell_layer_call_fn_60364ђ" !]ҐZ
SҐP
 К
inputs€€€€€€€€€2
(Ґ%
#К 
states/0€€€€€€€€€Ц
p 
™ "FҐC
К
0€€€€€€€€€Ц
#Ъ 
К
1/0€€€€€€€€€Цў
(__inference_gru_cell_layer_call_fn_60378ђ" !]ҐZ
SҐP
 К
inputs€€€€€€€€€2
(Ґ%
#К 
states/0€€€€€€€€€Ц
p
™ "FҐC
К
0€€€€€€€€€Ц
#Ъ 
К
1/0€€€€€€€€€Цј
>__inference_gru_layer_call_and_return_conditional_losses_59289~" !OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€2

 
p 

 
™ "&Ґ#
К
0€€€€€€€€€Ц
Ъ ј
>__inference_gru_layer_call_and_return_conditional_losses_59668~" !OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€2

 
p

 
™ "&Ґ#
К
0€€€€€€€€€Ц
Ъ ∞
>__inference_gru_layer_call_and_return_conditional_losses_59951n" !?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€2

 
p 

 
™ "&Ґ#
К
0€€€€€€€€€Ц
Ъ ∞
>__inference_gru_layer_call_and_return_conditional_losses_60330n" !?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€2

 
p

 
™ "&Ґ#
К
0€€€€€€€€€Ц
Ъ Ш
#__inference_gru_layer_call_fn_58973q" !OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€2

 
p 

 
™ "К€€€€€€€€€ЦШ
#__inference_gru_layer_call_fn_58984q" !OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€2

 
p

 
™ "К€€€€€€€€€ЦИ
#__inference_gru_layer_call_fn_58995a" !?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€2

 
p 

 
™ "К€€€€€€€€€ЦИ
#__inference_gru_layer_call_fn_59006a" !?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€2

 
p

 
™ "К€€€€€€€€€ЦЇ
E__inference_sequential_layer_call_and_return_conditional_losses_58179q
" !@Ґ=
6Ґ3
)К&
embedding_input€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ї
E__inference_sequential_layer_call_and_return_conditional_losses_58198q
" !@Ґ=
6Ґ3
)К&
embedding_input€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ±
E__inference_sequential_layer_call_and_return_conditional_losses_58553h
" !7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ±
E__inference_sequential_layer_call_and_return_conditional_losses_58945h
" !7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Т
*__inference_sequential_layer_call_fn_57671d
" !@Ґ=
6Ґ3
)К&
embedding_input€€€€€€€€€
p 

 
™ "К€€€€€€€€€Т
*__inference_sequential_layer_call_fn_58160d
" !@Ґ=
6Ґ3
)К&
embedding_input€€€€€€€€€
p

 
™ "К€€€€€€€€€Й
*__inference_sequential_layer_call_fn_58240[
" !7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ "К€€€€€€€€€Й
*__inference_sequential_layer_call_fn_58257[
" !7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ "К€€€€€€€€€ђ
#__inference_signature_wrapper_58223Д
" !KҐH
Ґ 
A™>
<
embedding_input)К&
embedding_input€€€€€€€€€"-™*
(
denseК
dense€€€€€€€€€