т╣7
Ьь
:
Add
x"T
y"T
z"T"
Ttype:
2	
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
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

·
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%╖╤8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
.
Rsqrt
x"T
y"T"
Ttype:

2
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
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
╛
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718В▄-
Д
conv2d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_17/kernel
}
$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*&
_output_shapes
: *
dtype0
t
conv2d_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_17/bias
m
"conv2d_17/bias/Read/ReadVariableOpReadVariableOpconv2d_17/bias*
_output_shapes
: *
dtype0
О
batch_normalization_23/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_23/beta
З
/batch_normalization_23/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_23/beta*
_output_shapes
: *
dtype0
Ь
"batch_normalization_23/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_23/moving_mean
Х
6batch_normalization_23/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_23/moving_mean*
_output_shapes
: *
dtype0
д
&batch_normalization_23/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_23/moving_variance
Э
:batch_normalization_23/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_23/moving_variance*
_output_shapes
: *
dtype0
Е
conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: А*!
shared_nameconv2d_18/kernel
~
$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*'
_output_shapes
: А*
dtype0
u
conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_18/bias
n
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes	
:А*
dtype0
П
batch_normalization_24/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namebatch_normalization_24/beta
И
/batch_normalization_24/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_24/beta*
_output_shapes	
:А*
dtype0
Э
"batch_normalization_24/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"batch_normalization_24/moving_mean
Ц
6batch_normalization_24/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_24/moving_mean*
_output_shapes	
:А*
dtype0
е
&batch_normalization_24/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&batch_normalization_24/moving_variance
Ю
:batch_normalization_24/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_24/moving_variance*
_output_shapes	
:А*
dtype0
Е
conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А *!
shared_nameconv2d_19/kernel
~
$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*'
_output_shapes
:А *
dtype0
t
conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_19/bias
m
"conv2d_19/bias/Read/ReadVariableOpReadVariableOpconv2d_19/bias*
_output_shapes
: *
dtype0
О
batch_normalization_25/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_25/beta
З
/batch_normalization_25/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_25/beta*
_output_shapes
: *
dtype0
Ь
"batch_normalization_25/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_25/moving_mean
Х
6batch_normalization_25/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_25/moving_mean*
_output_shapes
: *
dtype0
д
&batch_normalization_25/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_25/moving_variance
Э
:batch_normalization_25/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_25/moving_variance*
_output_shapes
: *
dtype0
Е
conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: А*!
shared_nameconv2d_20/kernel
~
$conv2d_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_20/kernel*'
_output_shapes
: А*
dtype0
u
conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_20/bias
n
"conv2d_20/bias/Read/ReadVariableOpReadVariableOpconv2d_20/bias*
_output_shapes	
:А*
dtype0
П
batch_normalization_26/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namebatch_normalization_26/beta
И
/batch_normalization_26/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_26/beta*
_output_shapes	
:А*
dtype0
Э
"batch_normalization_26/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"batch_normalization_26/moving_mean
Ц
6batch_normalization_26/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_26/moving_mean*
_output_shapes	
:А*
dtype0
е
&batch_normalization_26/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&batch_normalization_26/moving_variance
Ю
:batch_normalization_26/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_26/moving_variance*
_output_shapes	
:А*
dtype0
Ж
conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_21/kernel

$conv2d_21/kernel/Read/ReadVariableOpReadVariableOpconv2d_21/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_21/bias
n
"conv2d_21/bias/Read/ReadVariableOpReadVariableOpconv2d_21/bias*
_output_shapes	
:А*
dtype0
П
batch_normalization_27/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namebatch_normalization_27/beta
И
/batch_normalization_27/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_27/beta*
_output_shapes	
:А*
dtype0
Э
"batch_normalization_27/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"batch_normalization_27/moving_mean
Ц
6batch_normalization_27/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_27/moving_mean*
_output_shapes	
:А*
dtype0
е
&batch_normalization_27/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&batch_normalization_27/moving_variance
Ю
:batch_normalization_27/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_27/moving_variance*
_output_shapes	
:А*
dtype0
Ж
conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_22/kernel

$conv2d_22/kernel/Read/ReadVariableOpReadVariableOpconv2d_22/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_22/bias
n
"conv2d_22/bias/Read/ReadVariableOpReadVariableOpconv2d_22/bias*
_output_shapes	
:А*
dtype0
П
batch_normalization_28/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namebatch_normalization_28/beta
И
/batch_normalization_28/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_28/beta*
_output_shapes	
:А*
dtype0
Э
"batch_normalization_28/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"batch_normalization_28/moving_mean
Ц
6batch_normalization_28/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_28/moving_mean*
_output_shapes	
:А*
dtype0
е
&batch_normalization_28/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&batch_normalization_28/moving_variance
Ю
:batch_normalization_28/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_28/moving_variance*
_output_shapes	
:А*
dtype0
Ж
conv2d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_23/kernel

$conv2d_23/kernel/Read/ReadVariableOpReadVariableOpconv2d_23/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_23/bias
n
"conv2d_23/bias/Read/ReadVariableOpReadVariableOpconv2d_23/bias*
_output_shapes	
:А*
dtype0
П
batch_normalization_29/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namebatch_normalization_29/beta
И
/batch_normalization_29/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_29/beta*
_output_shapes	
:А*
dtype0
Э
"batch_normalization_29/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"batch_normalization_29/moving_mean
Ц
6batch_normalization_29/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_29/moving_mean*
_output_shapes	
:А*
dtype0
е
&batch_normalization_29/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&batch_normalization_29/moving_variance
Ю
:batch_normalization_29/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_29/moving_variance*
_output_shapes	
:А*
dtype0
Ж
conv2d_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_24/kernel

$conv2d_24/kernel/Read/ReadVariableOpReadVariableOpconv2d_24/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_24/bias
n
"conv2d_24/bias/Read/ReadVariableOpReadVariableOpconv2d_24/bias*
_output_shapes	
:А*
dtype0
П
batch_normalization_30/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namebatch_normalization_30/beta
И
/batch_normalization_30/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_30/beta*
_output_shapes	
:А*
dtype0
Э
"batch_normalization_30/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"batch_normalization_30/moving_mean
Ц
6batch_normalization_30/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_30/moving_mean*
_output_shapes	
:А*
dtype0
е
&batch_normalization_30/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&batch_normalization_30/moving_variance
Ю
:batch_normalization_30/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_30/moving_variance*
_output_shapes	
:А*
dtype0
{
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АРм*
shared_namedense_8/kernel
t
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*!
_output_shapes
:АРм*
dtype0
q
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:м*
shared_namedense_8/bias
j
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes	
:м*
dtype0
П
batch_normalization_31/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:м*,
shared_namebatch_normalization_31/beta
И
/batch_normalization_31/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_31/beta*
_output_shapes	
:м*
dtype0
Э
"batch_normalization_31/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:м*3
shared_name$"batch_normalization_31/moving_mean
Ц
6batch_normalization_31/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_31/moving_mean*
_output_shapes	
:м*
dtype0
е
&batch_normalization_31/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:м*7
shared_name(&batch_normalization_31/moving_variance
Ю
:batch_normalization_31/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_31/moving_variance*
_output_shapes	
:м*
dtype0
z
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
м╚*
shared_namedense_9/kernel
s
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel* 
_output_shapes
:
м╚*
dtype0
q
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*
shared_namedense_9/bias
j
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes	
:╚*
dtype0
П
batch_normalization_32/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*,
shared_namebatch_normalization_32/beta
И
/batch_normalization_32/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_32/beta*
_output_shapes	
:╚*
dtype0
Э
"batch_normalization_32/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"batch_normalization_32/moving_mean
Ц
6batch_normalization_32/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_32/moving_mean*
_output_shapes	
:╚*
dtype0
е
&batch_normalization_32/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*7
shared_name(&batch_normalization_32/moving_variance
Ю
:batch_normalization_32/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_32/moving_variance*
_output_shapes	
:╚*
dtype0
{
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	╚d* 
shared_namedense_10/kernel
t
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes
:	╚d*
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
:d*
dtype0
О
batch_normalization_33/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*,
shared_namebatch_normalization_33/beta
З
/batch_normalization_33/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_33/beta*
_output_shapes
:d*
dtype0
Ь
"batch_normalization_33/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*3
shared_name$"batch_normalization_33/moving_mean
Х
6batch_normalization_33/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_33/moving_mean*
_output_shapes
:d*
dtype0
д
&batch_normalization_33/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*7
shared_name(&batch_normalization_33/moving_variance
Э
:batch_normalization_33/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_33/moving_variance*
_output_shapes
:d*
dtype0
z
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_11/kernel
s
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes

:d*
dtype0
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:*
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
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
Ь
RMSprop/conv2d_17/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameRMSprop/conv2d_17/kernel/rms
Х
0RMSprop/conv2d_17/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_17/kernel/rms*&
_output_shapes
: *
dtype0
М
RMSprop/conv2d_17/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameRMSprop/conv2d_17/bias/rms
Е
.RMSprop/conv2d_17/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_17/bias/rms*
_output_shapes
: *
dtype0
ж
'RMSprop/batch_normalization_23/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'RMSprop/batch_normalization_23/beta/rms
Я
;RMSprop/batch_normalization_23/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_23/beta/rms*
_output_shapes
: *
dtype0
Э
RMSprop/conv2d_18/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: А*-
shared_nameRMSprop/conv2d_18/kernel/rms
Ц
0RMSprop/conv2d_18/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_18/kernel/rms*'
_output_shapes
: А*
dtype0
Н
RMSprop/conv2d_18/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_nameRMSprop/conv2d_18/bias/rms
Ж
.RMSprop/conv2d_18/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_18/bias/rms*
_output_shapes	
:А*
dtype0
з
'RMSprop/batch_normalization_24/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*8
shared_name)'RMSprop/batch_normalization_24/beta/rms
а
;RMSprop/batch_normalization_24/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_24/beta/rms*
_output_shapes	
:А*
dtype0
Э
RMSprop/conv2d_19/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А *-
shared_nameRMSprop/conv2d_19/kernel/rms
Ц
0RMSprop/conv2d_19/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_19/kernel/rms*'
_output_shapes
:А *
dtype0
М
RMSprop/conv2d_19/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameRMSprop/conv2d_19/bias/rms
Е
.RMSprop/conv2d_19/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_19/bias/rms*
_output_shapes
: *
dtype0
ж
'RMSprop/batch_normalization_25/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'RMSprop/batch_normalization_25/beta/rms
Я
;RMSprop/batch_normalization_25/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_25/beta/rms*
_output_shapes
: *
dtype0
Э
RMSprop/conv2d_20/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: А*-
shared_nameRMSprop/conv2d_20/kernel/rms
Ц
0RMSprop/conv2d_20/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_20/kernel/rms*'
_output_shapes
: А*
dtype0
Н
RMSprop/conv2d_20/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_nameRMSprop/conv2d_20/bias/rms
Ж
.RMSprop/conv2d_20/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_20/bias/rms*
_output_shapes	
:А*
dtype0
з
'RMSprop/batch_normalization_26/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*8
shared_name)'RMSprop/batch_normalization_26/beta/rms
а
;RMSprop/batch_normalization_26/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_26/beta/rms*
_output_shapes	
:А*
dtype0
Ю
RMSprop/conv2d_21/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*-
shared_nameRMSprop/conv2d_21/kernel/rms
Ч
0RMSprop/conv2d_21/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_21/kernel/rms*(
_output_shapes
:АА*
dtype0
Н
RMSprop/conv2d_21/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_nameRMSprop/conv2d_21/bias/rms
Ж
.RMSprop/conv2d_21/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_21/bias/rms*
_output_shapes	
:А*
dtype0
з
'RMSprop/batch_normalization_27/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*8
shared_name)'RMSprop/batch_normalization_27/beta/rms
а
;RMSprop/batch_normalization_27/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_27/beta/rms*
_output_shapes	
:А*
dtype0
Ю
RMSprop/conv2d_22/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*-
shared_nameRMSprop/conv2d_22/kernel/rms
Ч
0RMSprop/conv2d_22/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_22/kernel/rms*(
_output_shapes
:АА*
dtype0
Н
RMSprop/conv2d_22/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_nameRMSprop/conv2d_22/bias/rms
Ж
.RMSprop/conv2d_22/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_22/bias/rms*
_output_shapes	
:А*
dtype0
з
'RMSprop/batch_normalization_28/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*8
shared_name)'RMSprop/batch_normalization_28/beta/rms
а
;RMSprop/batch_normalization_28/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_28/beta/rms*
_output_shapes	
:А*
dtype0
Ю
RMSprop/conv2d_23/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*-
shared_nameRMSprop/conv2d_23/kernel/rms
Ч
0RMSprop/conv2d_23/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_23/kernel/rms*(
_output_shapes
:АА*
dtype0
Н
RMSprop/conv2d_23/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_nameRMSprop/conv2d_23/bias/rms
Ж
.RMSprop/conv2d_23/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_23/bias/rms*
_output_shapes	
:А*
dtype0
з
'RMSprop/batch_normalization_29/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*8
shared_name)'RMSprop/batch_normalization_29/beta/rms
а
;RMSprop/batch_normalization_29/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_29/beta/rms*
_output_shapes	
:А*
dtype0
Ю
RMSprop/conv2d_24/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*-
shared_nameRMSprop/conv2d_24/kernel/rms
Ч
0RMSprop/conv2d_24/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_24/kernel/rms*(
_output_shapes
:АА*
dtype0
Н
RMSprop/conv2d_24/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_nameRMSprop/conv2d_24/bias/rms
Ж
.RMSprop/conv2d_24/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_24/bias/rms*
_output_shapes	
:А*
dtype0
з
'RMSprop/batch_normalization_30/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*8
shared_name)'RMSprop/batch_normalization_30/beta/rms
а
;RMSprop/batch_normalization_30/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_30/beta/rms*
_output_shapes	
:А*
dtype0
У
RMSprop/dense_8/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:АРм*+
shared_nameRMSprop/dense_8/kernel/rms
М
.RMSprop/dense_8/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_8/kernel/rms*!
_output_shapes
:АРм*
dtype0
Й
RMSprop/dense_8/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:м*)
shared_nameRMSprop/dense_8/bias/rms
В
,RMSprop/dense_8/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_8/bias/rms*
_output_shapes	
:м*
dtype0
з
'RMSprop/batch_normalization_31/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:м*8
shared_name)'RMSprop/batch_normalization_31/beta/rms
а
;RMSprop/batch_normalization_31/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_31/beta/rms*
_output_shapes	
:м*
dtype0
Т
RMSprop/dense_9/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
м╚*+
shared_nameRMSprop/dense_9/kernel/rms
Л
.RMSprop/dense_9/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_9/kernel/rms* 
_output_shapes
:
м╚*
dtype0
Й
RMSprop/dense_9/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*)
shared_nameRMSprop/dense_9/bias/rms
В
,RMSprop/dense_9/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_9/bias/rms*
_output_shapes	
:╚*
dtype0
з
'RMSprop/batch_normalization_32/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*8
shared_name)'RMSprop/batch_normalization_32/beta/rms
а
;RMSprop/batch_normalization_32/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_32/beta/rms*
_output_shapes	
:╚*
dtype0
У
RMSprop/dense_10/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	╚d*,
shared_nameRMSprop/dense_10/kernel/rms
М
/RMSprop/dense_10/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_10/kernel/rms*
_output_shapes
:	╚d*
dtype0
К
RMSprop/dense_10/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:d**
shared_nameRMSprop/dense_10/bias/rms
Г
-RMSprop/dense_10/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_10/bias/rms*
_output_shapes
:d*
dtype0
ж
'RMSprop/batch_normalization_33/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*8
shared_name)'RMSprop/batch_normalization_33/beta/rms
Я
;RMSprop/batch_normalization_33/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_33/beta/rms*
_output_shapes
:d*
dtype0
Т
RMSprop/dense_11/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*,
shared_nameRMSprop/dense_11/kernel/rms
Л
/RMSprop/dense_11/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_11/kernel/rms*
_output_shapes

:d*
dtype0
К
RMSprop/dense_11/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameRMSprop/dense_11/bias/rms
Г
-RMSprop/dense_11/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_11/bias/rms*
_output_shapes
:*
dtype0
R
ConstConst*
_output_shapes
: *
dtype0*
valueB *  А?
V
Const_1Const*
_output_shapes	
:А*
dtype0*
valueBА*  А?
T
Const_2Const*
_output_shapes
: *
dtype0*
valueB *  А?
V
Const_3Const*
_output_shapes	
:А*
dtype0*
valueBА*  А?
V
Const_4Const*
_output_shapes	
:А*
dtype0*
valueBА*  А?
V
Const_5Const*
_output_shapes	
:А*
dtype0*
valueBА*  А?
V
Const_6Const*
_output_shapes	
:А*
dtype0*
valueBА*  А?
V
Const_7Const*
_output_shapes	
:А*
dtype0*
valueBА*  А?

NoOpNoOp
й╥
Const_8Const"/device:CPU:0*
_output_shapes
: *
dtype0*с╤
value╓╤B╥╤ B╩╤
┤	
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer_with_weights-10
layer-14
layer_with_weights-11
layer-15
layer-16
layer-17
layer_with_weights-12
layer-18
layer_with_weights-13
layer-19
layer_with_weights-14
layer-20
layer_with_weights-15
layer-21
layer-22
layer-23
layer-24
layer_with_weights-16
layer-25
layer_with_weights-17
layer-26
layer-27
layer_with_weights-18
layer-28
layer_with_weights-19
layer-29
layer-30
 layer_with_weights-20
 layer-31
!layer_with_weights-21
!layer-32
"layer-33
#layer_with_weights-22
#layer-34
$	optimizer
%regularization_losses
&	variables
'trainable_variables
(	keras_api
)
signatures
h

*kernel
+bias
,regularization_losses
-	variables
.trainable_variables
/	keras_api
М
0axis
1beta
2moving_mean
3moving_variance
4regularization_losses
5	variables
6trainable_variables
7	keras_api
h

8kernel
9bias
:regularization_losses
;	variables
<trainable_variables
=	keras_api
М
>axis
?beta
@moving_mean
Amoving_variance
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
R
Fregularization_losses
G	variables
Htrainable_variables
I	keras_api
R
Jregularization_losses
K	variables
Ltrainable_variables
M	keras_api
h

Nkernel
Obias
Pregularization_losses
Q	variables
Rtrainable_variables
S	keras_api
М
Taxis
Ubeta
Vmoving_mean
Wmoving_variance
Xregularization_losses
Y	variables
Ztrainable_variables
[	keras_api
h

\kernel
]bias
^regularization_losses
_	variables
`trainable_variables
a	keras_api
М
baxis
cbeta
dmoving_mean
emoving_variance
fregularization_losses
g	variables
htrainable_variables
i	keras_api
R
jregularization_losses
k	variables
ltrainable_variables
m	keras_api
R
nregularization_losses
o	variables
ptrainable_variables
q	keras_api
h

rkernel
sbias
tregularization_losses
u	variables
vtrainable_variables
w	keras_api
М
xaxis
ybeta
zmoving_mean
{moving_variance
|regularization_losses
}	variables
~trainable_variables
	keras_api
n
Аkernel
	Бbias
Вregularization_losses
Г	variables
Дtrainable_variables
Е	keras_api
Ф
	Жaxis
	Зbeta
Иmoving_mean
Йmoving_variance
Кregularization_losses
Л	variables
Мtrainable_variables
Н	keras_api
V
Оregularization_losses
П	variables
Рtrainable_variables
С	keras_api
V
Тregularization_losses
У	variables
Фtrainable_variables
Х	keras_api
n
Цkernel
	Чbias
Шregularization_losses
Щ	variables
Ъtrainable_variables
Ы	keras_api
Ф
	Ьaxis
	Эbeta
Юmoving_mean
Яmoving_variance
аregularization_losses
б	variables
вtrainable_variables
г	keras_api
n
дkernel
	еbias
жregularization_losses
з	variables
иtrainable_variables
й	keras_api
Ф
	кaxis
	лbeta
мmoving_mean
нmoving_variance
оregularization_losses
п	variables
░trainable_variables
▒	keras_api
V
▓regularization_losses
│	variables
┤trainable_variables
╡	keras_api
V
╢regularization_losses
╖	variables
╕trainable_variables
╣	keras_api
V
║regularization_losses
╗	variables
╝trainable_variables
╜	keras_api
n
╛kernel
	┐bias
└regularization_losses
┴	variables
┬trainable_variables
├	keras_api
Ф
	─axis
	┼beta
╞moving_mean
╟moving_variance
╚regularization_losses
╔	variables
╩trainable_variables
╦	keras_api
V
╠regularization_losses
═	variables
╬trainable_variables
╧	keras_api
n
╨kernel
	╤bias
╥regularization_losses
╙	variables
╘trainable_variables
╒	keras_api
Ф
	╓axis
	╫beta
╪moving_mean
┘moving_variance
┌regularization_losses
█	variables
▄trainable_variables
▌	keras_api
V
▐regularization_losses
▀	variables
рtrainable_variables
с	keras_api
n
тkernel
	уbias
фregularization_losses
х	variables
цtrainable_variables
ч	keras_api
Ф
	шaxis
	щbeta
ъmoving_mean
ыmoving_variance
ьregularization_losses
э	variables
юtrainable_variables
я	keras_api
V
Ёregularization_losses
ё	variables
Єtrainable_variables
є	keras_api
n
Їkernel
	їbias
Ўregularization_losses
ў	variables
°trainable_variables
∙	keras_api
№
	·iter

√decay
№learning_rate
¤momentum
■rho
*rms╛
+rms┐
1rms└
8rms┴
9rms┬
?rms├
Nrms─
Orms┼
Urms╞
\rms╟
]rms╚
crms╔
rrms╩
srms╦
yrms╠Аrms═Бrms╬Зrms╧Цrms╨Чrms╤Эrms╥дrms╙еrms╘лrms╒╛rms╓┐rms╫┼rms╪╨rms┘╤rms┌╫rms█тrms▄уrms▌щrms▐Їrms▀їrmsр
 
▐
*0
+1
12
23
34
85
96
?7
@8
A9
N10
O11
U12
V13
W14
\15
]16
c17
d18
e19
r20
s21
y22
z23
{24
А25
Б26
З27
И28
Й29
Ц30
Ч31
Э32
Ю33
Я34
д35
е36
л37
м38
н39
╛40
┐41
┼42
╞43
╟44
╨45
╤46
╫47
╪48
┘49
т50
у51
щ52
ъ53
ы54
Ї55
ї56
в
*0
+1
12
83
94
?5
N6
O7
U8
\9
]10
c11
r12
s13
y14
А15
Б16
З17
Ц18
Ч19
Э20
д21
е22
л23
╛24
┐25
┼26
╨27
╤28
╫29
т30
у31
щ32
Ї33
ї34
▓
%regularization_losses
 non_trainable_variables
Аlayers
Бmetrics
&	variables
 Вlayer_regularization_losses
Гlayer_metrics
'trainable_variables
 
\Z
VARIABLE_VALUEconv2d_17/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_17/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

*0
+1

*0
+1
▓
Дnon_trainable_variables
,regularization_losses
Еlayers
Жmetrics
-	variables
 Зlayer_regularization_losses
Иlayer_metrics
.trainable_variables
 
ec
VARIABLE_VALUEbatch_normalization_23/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_23/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_23/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

10
21
32

10
▓
Йnon_trainable_variables
4regularization_losses
Кlayers
Лmetrics
5	variables
 Мlayer_regularization_losses
Нlayer_metrics
6trainable_variables
\Z
VARIABLE_VALUEconv2d_18/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_18/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

80
91

80
91
▓
Оnon_trainable_variables
:regularization_losses
Пlayers
Рmetrics
;	variables
 Сlayer_regularization_losses
Тlayer_metrics
<trainable_variables
 
ec
VARIABLE_VALUEbatch_normalization_24/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_24/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_24/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

?0
@1
A2

?0
▓
Уnon_trainable_variables
Bregularization_losses
Фlayers
Хmetrics
C	variables
 Цlayer_regularization_losses
Чlayer_metrics
Dtrainable_variables
 
 
 
▓
Шnon_trainable_variables
Fregularization_losses
Щlayers
Ъmetrics
G	variables
 Ыlayer_regularization_losses
Ьlayer_metrics
Htrainable_variables
 
 
 
▓
Эnon_trainable_variables
Jregularization_losses
Юlayers
Яmetrics
K	variables
 аlayer_regularization_losses
бlayer_metrics
Ltrainable_variables
\Z
VARIABLE_VALUEconv2d_19/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_19/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

N0
O1

N0
O1
▓
вnon_trainable_variables
Pregularization_losses
гlayers
дmetrics
Q	variables
 еlayer_regularization_losses
жlayer_metrics
Rtrainable_variables
 
ec
VARIABLE_VALUEbatch_normalization_25/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_25/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_25/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

U0
V1
W2

U0
▓
зnon_trainable_variables
Xregularization_losses
иlayers
йmetrics
Y	variables
 кlayer_regularization_losses
лlayer_metrics
Ztrainable_variables
\Z
VARIABLE_VALUEconv2d_20/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_20/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

\0
]1

\0
]1
▓
мnon_trainable_variables
^regularization_losses
нlayers
оmetrics
_	variables
 пlayer_regularization_losses
░layer_metrics
`trainable_variables
 
ec
VARIABLE_VALUEbatch_normalization_26/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_26/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_26/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

c0
d1
e2

c0
▓
▒non_trainable_variables
fregularization_losses
▓layers
│metrics
g	variables
 ┤layer_regularization_losses
╡layer_metrics
htrainable_variables
 
 
 
▓
╢non_trainable_variables
jregularization_losses
╖layers
╕metrics
k	variables
 ╣layer_regularization_losses
║layer_metrics
ltrainable_variables
 
 
 
▓
╗non_trainable_variables
nregularization_losses
╝layers
╜metrics
o	variables
 ╛layer_regularization_losses
┐layer_metrics
ptrainable_variables
\Z
VARIABLE_VALUEconv2d_21/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_21/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

r0
s1

r0
s1
▓
└non_trainable_variables
tregularization_losses
┴layers
┬metrics
u	variables
 ├layer_regularization_losses
─layer_metrics
vtrainable_variables
 
ec
VARIABLE_VALUEbatch_normalization_27/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_27/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_27/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

y0
z1
{2

y0
▓
┼non_trainable_variables
|regularization_losses
╞layers
╟metrics
}	variables
 ╚layer_regularization_losses
╔layer_metrics
~trainable_variables
][
VARIABLE_VALUEconv2d_22/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_22/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 

А0
Б1

А0
Б1
╡
╩non_trainable_variables
Вregularization_losses
╦layers
╠metrics
Г	variables
 ═layer_regularization_losses
╬layer_metrics
Дtrainable_variables
 
fd
VARIABLE_VALUEbatch_normalization_28/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE"batch_normalization_28/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE&batch_normalization_28/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

З0
И1
Й2

З0
╡
╧non_trainable_variables
Кregularization_losses
╨layers
╤metrics
Л	variables
 ╥layer_regularization_losses
╙layer_metrics
Мtrainable_variables
 
 
 
╡
╘non_trainable_variables
Оregularization_losses
╒layers
╓metrics
П	variables
 ╫layer_regularization_losses
╪layer_metrics
Рtrainable_variables
 
 
 
╡
┘non_trainable_variables
Тregularization_losses
┌layers
█metrics
У	variables
 ▄layer_regularization_losses
▌layer_metrics
Фtrainable_variables
][
VARIABLE_VALUEconv2d_23/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_23/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Ц0
Ч1

Ц0
Ч1
╡
▐non_trainable_variables
Шregularization_losses
▀layers
рmetrics
Щ	variables
 сlayer_regularization_losses
тlayer_metrics
Ъtrainable_variables
 
fd
VARIABLE_VALUEbatch_normalization_29/beta5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE"batch_normalization_29/moving_mean<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE&batch_normalization_29/moving_variance@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

Э0
Ю1
Я2

Э0
╡
уnon_trainable_variables
аregularization_losses
фlayers
хmetrics
б	variables
 цlayer_regularization_losses
чlayer_metrics
вtrainable_variables
][
VARIABLE_VALUEconv2d_24/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_24/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE
 

д0
е1

д0
е1
╡
шnon_trainable_variables
жregularization_losses
щlayers
ъmetrics
з	variables
 ыlayer_regularization_losses
ьlayer_metrics
иtrainable_variables
 
fd
VARIABLE_VALUEbatch_normalization_30/beta5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE"batch_normalization_30/moving_mean<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE&batch_normalization_30/moving_variance@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

л0
м1
н2

л0
╡
эnon_trainable_variables
оregularization_losses
юlayers
яmetrics
п	variables
 Ёlayer_regularization_losses
ёlayer_metrics
░trainable_variables
 
 
 
╡
Єnon_trainable_variables
▓regularization_losses
єlayers
Їmetrics
│	variables
 їlayer_regularization_losses
Ўlayer_metrics
┤trainable_variables
 
 
 
╡
ўnon_trainable_variables
╢regularization_losses
°layers
∙metrics
╖	variables
 ·layer_regularization_losses
√layer_metrics
╕trainable_variables
 
 
 
╡
№non_trainable_variables
║regularization_losses
¤layers
■metrics
╗	variables
  layer_regularization_losses
Аlayer_metrics
╝trainable_variables
[Y
VARIABLE_VALUEdense_8/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_8/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE
 

╛0
┐1

╛0
┐1
╡
Бnon_trainable_variables
└regularization_losses
Вlayers
Гmetrics
┴	variables
 Дlayer_regularization_losses
Еlayer_metrics
┬trainable_variables
 
fd
VARIABLE_VALUEbatch_normalization_31/beta5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE"batch_normalization_31/moving_mean<layer_with_weights-17/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE&batch_normalization_31/moving_variance@layer_with_weights-17/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

┼0
╞1
╟2

┼0
╡
Жnon_trainable_variables
╚regularization_losses
Зlayers
Иmetrics
╔	variables
 Йlayer_regularization_losses
Кlayer_metrics
╩trainable_variables
 
 
 
╡
Лnon_trainable_variables
╠regularization_losses
Мlayers
Нmetrics
═	variables
 Оlayer_regularization_losses
Пlayer_metrics
╬trainable_variables
[Y
VARIABLE_VALUEdense_9/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_9/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE
 

╨0
╤1

╨0
╤1
╡
Рnon_trainable_variables
╥regularization_losses
Сlayers
Тmetrics
╙	variables
 Уlayer_regularization_losses
Фlayer_metrics
╘trainable_variables
 
fd
VARIABLE_VALUEbatch_normalization_32/beta5layer_with_weights-19/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE"batch_normalization_32/moving_mean<layer_with_weights-19/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE&batch_normalization_32/moving_variance@layer_with_weights-19/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

╫0
╪1
┘2

╫0
╡
Хnon_trainable_variables
┌regularization_losses
Цlayers
Чmetrics
█	variables
 Шlayer_regularization_losses
Щlayer_metrics
▄trainable_variables
 
 
 
╡
Ъnon_trainable_variables
▐regularization_losses
Ыlayers
Ьmetrics
▀	variables
 Эlayer_regularization_losses
Юlayer_metrics
рtrainable_variables
\Z
VARIABLE_VALUEdense_10/kernel7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_10/bias5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUE
 

т0
у1

т0
у1
╡
Яnon_trainable_variables
фregularization_losses
аlayers
бmetrics
х	variables
 вlayer_regularization_losses
гlayer_metrics
цtrainable_variables
 
fd
VARIABLE_VALUEbatch_normalization_33/beta5layer_with_weights-21/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE"batch_normalization_33/moving_mean<layer_with_weights-21/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE&batch_normalization_33/moving_variance@layer_with_weights-21/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

щ0
ъ1
ы2

щ0
╡
дnon_trainable_variables
ьregularization_losses
еlayers
жmetrics
э	variables
 зlayer_regularization_losses
иlayer_metrics
юtrainable_variables
 
 
 
╡
йnon_trainable_variables
Ёregularization_losses
кlayers
лmetrics
ё	variables
 мlayer_regularization_losses
нlayer_metrics
Єtrainable_variables
\Z
VARIABLE_VALUEdense_11/kernel7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_11/bias5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Ї0
ї1

Ї0
ї1
╡
оnon_trainable_variables
Ўregularization_losses
пlayers
░metrics
ў	variables
 ▒layer_regularization_losses
▓layer_metrics
°trainable_variables
KI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
▓
20
31
@2
A3
V4
W5
d6
e7
z8
{9
И10
Й11
Ю12
Я13
м14
н15
╞16
╟17
╪18
┘19
ъ20
ы21
О
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34

│0
┤1
 
 
 
 
 
 
 

20
31
 
 
 
 
 
 
 
 
 

@0
A1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

V0
W1
 
 
 
 
 
 
 
 
 

d0
e1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

z0
{1
 
 
 
 
 
 
 
 
 

И0
Й1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

Ю0
Я1
 
 
 
 
 
 
 
 
 

м0
н1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

╞0
╟1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

╪0
┘1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

ъ0
ы1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

╡total

╢count
╖	variables
╕	keras_api
I

╣total

║count
╗
_fn_kwargs
╝	variables
╜	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

╡0
╢1

╖	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

╣0
║1

╝	variables
ЗД
VARIABLE_VALUERMSprop/conv2d_17/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUERMSprop/conv2d_17/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
РН
VARIABLE_VALUE'RMSprop/batch_normalization_23/beta/rmsRlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUERMSprop/conv2d_18/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUERMSprop/conv2d_18/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
РН
VARIABLE_VALUE'RMSprop/batch_normalization_24/beta/rmsRlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUERMSprop/conv2d_19/kernel/rmsTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUERMSprop/conv2d_19/bias/rmsRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
РН
VARIABLE_VALUE'RMSprop/batch_normalization_25/beta/rmsRlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUERMSprop/conv2d_20/kernel/rmsTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUERMSprop/conv2d_20/bias/rmsRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
РН
VARIABLE_VALUE'RMSprop/batch_normalization_26/beta/rmsRlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUERMSprop/conv2d_21/kernel/rmsTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUERMSprop/conv2d_21/bias/rmsRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
РН
VARIABLE_VALUE'RMSprop/batch_normalization_27/beta/rmsRlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUERMSprop/conv2d_22/kernel/rmsUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUERMSprop/conv2d_22/bias/rmsSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUE'RMSprop/batch_normalization_28/beta/rmsSlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUERMSprop/conv2d_23/kernel/rmsUlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUERMSprop/conv2d_23/bias/rmsSlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUE'RMSprop/batch_normalization_29/beta/rmsSlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUERMSprop/conv2d_24/kernel/rmsUlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUERMSprop/conv2d_24/bias/rmsSlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUE'RMSprop/batch_normalization_30/beta/rmsSlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUERMSprop/dense_8/kernel/rmsUlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUERMSprop/dense_8/bias/rmsSlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUE'RMSprop/batch_normalization_31/beta/rmsSlayer_with_weights-17/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUERMSprop/dense_9/kernel/rmsUlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUERMSprop/dense_9/bias/rmsSlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUE'RMSprop/batch_normalization_32/beta/rmsSlayer_with_weights-19/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUERMSprop/dense_10/kernel/rmsUlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUERMSprop/dense_10/bias/rmsSlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUE'RMSprop/batch_normalization_33/beta/rmsSlayer_with_weights-21/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUERMSprop/dense_11/kernel/rmsUlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUERMSprop/dense_11/bias/rmsSlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
Ц
serving_default_conv2d_17_inputPlaceholder*1
_output_shapes
:         мм*
dtype0*&
shape:         мм
Л
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_17_inputconv2d_17/kernelconv2d_17/biasConstbatch_normalization_23/beta"batch_normalization_23/moving_mean&batch_normalization_23/moving_varianceconv2d_18/kernelconv2d_18/biasConst_1batch_normalization_24/beta"batch_normalization_24/moving_mean&batch_normalization_24/moving_varianceconv2d_19/kernelconv2d_19/biasConst_2batch_normalization_25/beta"batch_normalization_25/moving_mean&batch_normalization_25/moving_varianceconv2d_20/kernelconv2d_20/biasConst_3batch_normalization_26/beta"batch_normalization_26/moving_mean&batch_normalization_26/moving_varianceconv2d_21/kernelconv2d_21/biasConst_4batch_normalization_27/beta"batch_normalization_27/moving_mean&batch_normalization_27/moving_varianceconv2d_22/kernelconv2d_22/biasConst_5batch_normalization_28/beta"batch_normalization_28/moving_mean&batch_normalization_28/moving_varianceconv2d_23/kernelconv2d_23/biasConst_6batch_normalization_29/beta"batch_normalization_29/moving_mean&batch_normalization_29/moving_varianceconv2d_24/kernelconv2d_24/biasConst_7batch_normalization_30/beta"batch_normalization_30/moving_mean&batch_normalization_30/moving_variancedense_8/kerneldense_8/bias&batch_normalization_31/moving_variance"batch_normalization_31/moving_meanbatch_normalization_31/betadense_9/kerneldense_9/bias&batch_normalization_32/moving_variance"batch_normalization_32/moving_meanbatch_normalization_32/betadense_10/kerneldense_10/bias&batch_normalization_33/moving_variance"batch_normalization_33/moving_meanbatch_normalization_33/betadense_11/kerneldense_11/bias*M
TinF
D2B*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *[
_read_only_resource_inputs=
;9
 "#$%&()*+,./0123456789:;<=>?@A*0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference_signature_wrapper_32593
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
┘(
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_17/kernel/Read/ReadVariableOp"conv2d_17/bias/Read/ReadVariableOp/batch_normalization_23/beta/Read/ReadVariableOp6batch_normalization_23/moving_mean/Read/ReadVariableOp:batch_normalization_23/moving_variance/Read/ReadVariableOp$conv2d_18/kernel/Read/ReadVariableOp"conv2d_18/bias/Read/ReadVariableOp/batch_normalization_24/beta/Read/ReadVariableOp6batch_normalization_24/moving_mean/Read/ReadVariableOp:batch_normalization_24/moving_variance/Read/ReadVariableOp$conv2d_19/kernel/Read/ReadVariableOp"conv2d_19/bias/Read/ReadVariableOp/batch_normalization_25/beta/Read/ReadVariableOp6batch_normalization_25/moving_mean/Read/ReadVariableOp:batch_normalization_25/moving_variance/Read/ReadVariableOp$conv2d_20/kernel/Read/ReadVariableOp"conv2d_20/bias/Read/ReadVariableOp/batch_normalization_26/beta/Read/ReadVariableOp6batch_normalization_26/moving_mean/Read/ReadVariableOp:batch_normalization_26/moving_variance/Read/ReadVariableOp$conv2d_21/kernel/Read/ReadVariableOp"conv2d_21/bias/Read/ReadVariableOp/batch_normalization_27/beta/Read/ReadVariableOp6batch_normalization_27/moving_mean/Read/ReadVariableOp:batch_normalization_27/moving_variance/Read/ReadVariableOp$conv2d_22/kernel/Read/ReadVariableOp"conv2d_22/bias/Read/ReadVariableOp/batch_normalization_28/beta/Read/ReadVariableOp6batch_normalization_28/moving_mean/Read/ReadVariableOp:batch_normalization_28/moving_variance/Read/ReadVariableOp$conv2d_23/kernel/Read/ReadVariableOp"conv2d_23/bias/Read/ReadVariableOp/batch_normalization_29/beta/Read/ReadVariableOp6batch_normalization_29/moving_mean/Read/ReadVariableOp:batch_normalization_29/moving_variance/Read/ReadVariableOp$conv2d_24/kernel/Read/ReadVariableOp"conv2d_24/bias/Read/ReadVariableOp/batch_normalization_30/beta/Read/ReadVariableOp6batch_normalization_30/moving_mean/Read/ReadVariableOp:batch_normalization_30/moving_variance/Read/ReadVariableOp"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp/batch_normalization_31/beta/Read/ReadVariableOp6batch_normalization_31/moving_mean/Read/ReadVariableOp:batch_normalization_31/moving_variance/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOp/batch_normalization_32/beta/Read/ReadVariableOp6batch_normalization_32/moving_mean/Read/ReadVariableOp:batch_normalization_32/moving_variance/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp/batch_normalization_33/beta/Read/ReadVariableOp6batch_normalization_33/moving_mean/Read/ReadVariableOp:batch_normalization_33/moving_variance/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp0RMSprop/conv2d_17/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_17/bias/rms/Read/ReadVariableOp;RMSprop/batch_normalization_23/beta/rms/Read/ReadVariableOp0RMSprop/conv2d_18/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_18/bias/rms/Read/ReadVariableOp;RMSprop/batch_normalization_24/beta/rms/Read/ReadVariableOp0RMSprop/conv2d_19/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_19/bias/rms/Read/ReadVariableOp;RMSprop/batch_normalization_25/beta/rms/Read/ReadVariableOp0RMSprop/conv2d_20/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_20/bias/rms/Read/ReadVariableOp;RMSprop/batch_normalization_26/beta/rms/Read/ReadVariableOp0RMSprop/conv2d_21/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_21/bias/rms/Read/ReadVariableOp;RMSprop/batch_normalization_27/beta/rms/Read/ReadVariableOp0RMSprop/conv2d_22/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_22/bias/rms/Read/ReadVariableOp;RMSprop/batch_normalization_28/beta/rms/Read/ReadVariableOp0RMSprop/conv2d_23/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_23/bias/rms/Read/ReadVariableOp;RMSprop/batch_normalization_29/beta/rms/Read/ReadVariableOp0RMSprop/conv2d_24/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_24/bias/rms/Read/ReadVariableOp;RMSprop/batch_normalization_30/beta/rms/Read/ReadVariableOp.RMSprop/dense_8/kernel/rms/Read/ReadVariableOp,RMSprop/dense_8/bias/rms/Read/ReadVariableOp;RMSprop/batch_normalization_31/beta/rms/Read/ReadVariableOp.RMSprop/dense_9/kernel/rms/Read/ReadVariableOp,RMSprop/dense_9/bias/rms/Read/ReadVariableOp;RMSprop/batch_normalization_32/beta/rms/Read/ReadVariableOp/RMSprop/dense_10/kernel/rms/Read/ReadVariableOp-RMSprop/dense_10/bias/rms/Read/ReadVariableOp;RMSprop/batch_normalization_33/beta/rms/Read/ReadVariableOp/RMSprop/dense_11/kernel/rms/Read/ReadVariableOp-RMSprop/dense_11/bias/rms/Read/ReadVariableOpConst_8*r
Tink
i2g	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *'
f"R 
__inference__traced_save_35386
ю
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_17/kernelconv2d_17/biasbatch_normalization_23/beta"batch_normalization_23/moving_mean&batch_normalization_23/moving_varianceconv2d_18/kernelconv2d_18/biasbatch_normalization_24/beta"batch_normalization_24/moving_mean&batch_normalization_24/moving_varianceconv2d_19/kernelconv2d_19/biasbatch_normalization_25/beta"batch_normalization_25/moving_mean&batch_normalization_25/moving_varianceconv2d_20/kernelconv2d_20/biasbatch_normalization_26/beta"batch_normalization_26/moving_mean&batch_normalization_26/moving_varianceconv2d_21/kernelconv2d_21/biasbatch_normalization_27/beta"batch_normalization_27/moving_mean&batch_normalization_27/moving_varianceconv2d_22/kernelconv2d_22/biasbatch_normalization_28/beta"batch_normalization_28/moving_mean&batch_normalization_28/moving_varianceconv2d_23/kernelconv2d_23/biasbatch_normalization_29/beta"batch_normalization_29/moving_mean&batch_normalization_29/moving_varianceconv2d_24/kernelconv2d_24/biasbatch_normalization_30/beta"batch_normalization_30/moving_mean&batch_normalization_30/moving_variancedense_8/kerneldense_8/biasbatch_normalization_31/beta"batch_normalization_31/moving_mean&batch_normalization_31/moving_variancedense_9/kerneldense_9/biasbatch_normalization_32/beta"batch_normalization_32/moving_mean&batch_normalization_32/moving_variancedense_10/kerneldense_10/biasbatch_normalization_33/beta"batch_normalization_33/moving_mean&batch_normalization_33/moving_variancedense_11/kerneldense_11/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototalcounttotal_1count_1RMSprop/conv2d_17/kernel/rmsRMSprop/conv2d_17/bias/rms'RMSprop/batch_normalization_23/beta/rmsRMSprop/conv2d_18/kernel/rmsRMSprop/conv2d_18/bias/rms'RMSprop/batch_normalization_24/beta/rmsRMSprop/conv2d_19/kernel/rmsRMSprop/conv2d_19/bias/rms'RMSprop/batch_normalization_25/beta/rmsRMSprop/conv2d_20/kernel/rmsRMSprop/conv2d_20/bias/rms'RMSprop/batch_normalization_26/beta/rmsRMSprop/conv2d_21/kernel/rmsRMSprop/conv2d_21/bias/rms'RMSprop/batch_normalization_27/beta/rmsRMSprop/conv2d_22/kernel/rmsRMSprop/conv2d_22/bias/rms'RMSprop/batch_normalization_28/beta/rmsRMSprop/conv2d_23/kernel/rmsRMSprop/conv2d_23/bias/rms'RMSprop/batch_normalization_29/beta/rmsRMSprop/conv2d_24/kernel/rmsRMSprop/conv2d_24/bias/rms'RMSprop/batch_normalization_30/beta/rmsRMSprop/dense_8/kernel/rmsRMSprop/dense_8/bias/rms'RMSprop/batch_normalization_31/beta/rmsRMSprop/dense_9/kernel/rmsRMSprop/dense_9/bias/rms'RMSprop/batch_normalization_32/beta/rmsRMSprop/dense_10/kernel/rmsRMSprop/dense_10/bias/rms'RMSprop/batch_normalization_33/beta/rmsRMSprop/dense_11/kernel/rmsRMSprop/dense_11/bias/rms*q
Tinj
h2f*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__traced_restore_35699┤╤)
А
ю
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_30500

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╝
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         CCА:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3╚
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*0
_output_shapes
:         CCА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         CCА:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:         CCА
 
_user_specified_nameinputs:!

_output_shapes	
:А
╚
ю
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_34145

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╬
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
ь
П
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_33855

inputs	
scale%
readvariableop_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpз
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╫
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1¤
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs: 

_output_shapes
: 
╚
ю
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_34452

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╬
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
Е	
╟
6__inference_batch_normalization_25_layer_call_fn_33795

inputs
unknown
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCall╡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_291422
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs: 

_output_shapes
: 
┴
d
E__inference_dropout_18_layer_call_and_return_conditional_losses_31003

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         м2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape┬
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         м*
dtype0*
seedА2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         м2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         м2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         м2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         м2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         м:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
╚
ю
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_34592

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╬
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
┌
╕
6__inference_batch_normalization_33_layer_call_fn_34957

inputs
unknown:d
	unknown_0:d
	unknown_1:d
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_33_layer_call_and_return_conditional_losses_302042
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
┼
╟
6__inference_batch_normalization_23_layer_call_fn_33514

inputs
unknown
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ии *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_315172
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         ии 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         ии : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ии 
 
_user_specified_nameinputs: 

_output_shapes
: 
°
ы
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_30406

inputs	
scale%
readvariableop_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpз
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╣
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         РР : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3╔
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*1
_output_shapes
:         РР 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         РР : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:Y U
1
_output_shapes
:         РР 
 
_user_specified_nameinputs: 

_output_shapes
: 
О	
╩
6__inference_batch_normalization_26_layer_call_fn_33935

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCall╢
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_292642
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
Ч&
Ц
Q__inference_batch_normalization_33_layer_call_and_return_conditional_losses_35005

inputs5
'assignmovingavg_readvariableop_resource:d7
)assignmovingavg_1_readvariableop_resource:d/
!batchnorm_readvariableop_resource:d
identityИвAssignMovingAvgвAssignMovingAvg/ReadVariableOpвAssignMovingAvg_1в AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpК
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesП
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:d2
moments/StopGradientд
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:         d2
moments/SquaredDifferenceТ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices▓
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(2
moments/varianceА
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 2
moments/SqueezeИ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg/decayд
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:d*
dtype02 
AssignMovingAvg/ReadVariableOpШ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:d2
AssignMovingAvg/subП
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:d2
AssignMovingAvg/mul┐
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg_1/decayк
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:d*
dtype02"
 AssignMovingAvg_1/ReadVariableOpа
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:d2
AssignMovingAvg_1/subЧ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:d2
AssignMovingAvg_1/mul╔
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yВ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:d2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d2
batchnorm/Rsqrtt
batchnorm/mulMulinputsbatchnorm/Rsqrt:y:0*
T0*'
_output_shapes
:         d2
batchnorm/mul}
batchnorm/mul_1Mulmoments/Squeeze:output:0batchnorm/Rsqrt:y:0*
T0*
_output_shapes
:d2
batchnorm/mul_1Т
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOpБ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_1:z:0*
T0*
_output_shapes
:d2
batchnorm/subГ
batchnorm/add_1AddV2batchnorm/mul:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:         d2
batchnorm/add_1ь
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp*
T0*'
_output_shapes
:         d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         d: : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
╕
ы
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_29099

inputs	
scale%
readvariableop_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpз
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╔
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┘
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs: 

_output_shapes
: 
Р	
╩
6__inference_batch_normalization_26_layer_call_fn_33922

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCall╕
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_292212
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
е

ї
C__inference_dense_10_layer_call_and_return_conditional_losses_30736

inputs1
matmul_readvariableop_resource:	╚d-
biasadd_readvariableop_resource:d
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	╚d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp}
BiasAddAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2	
BiasAddS
ReluReluBiasAdd:z:0*
T0*'
_output_shapes
:         d2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ╚: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs
№
Т
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_34609

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
╕
d
E__inference_dropout_20_layer_call_and_return_conditional_losses_35032

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         d2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape┴
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seedА2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y╛
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         d2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         d2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         d2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         d:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
ё
c
*__inference_dropout_17_layer_call_fn_34653

inputs
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_17_layer_call_and_return_conditional_losses_310422
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
В
d
E__inference_dropout_17_layer_call_and_return_conditional_losses_34670

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╩
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0*
seedА2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y╟
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╕
ы
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_33531

inputs	
scale%
readvariableop_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpз
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╔
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┘
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs: 

_output_shapes
: 
И
ю
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_30449

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╛
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*R
_output_shapes@
>:         ООА:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3╩
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*2
_output_shapes 
:         ООА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         ООА:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:Z V
2
_output_shapes 
:         ООА
 
_user_specified_nameinputs:!

_output_shapes	
:А
╥
а
)__inference_conv2d_18_layer_call_fn_33591

inputs"
unknown: А
	unknown_0:	А
identityИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ддА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_303332
StatefulPartitionedCallЩ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*2
_output_shapes 
:         ддА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ии : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ии 
 
_user_specified_nameinputs
Ш
А
D__inference_conv2d_22_layer_call_and_return_conditional_losses_34216

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ??А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЕ
BiasAddAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ??А2	
BiasAdd\
ReluReluBiasAdd:z:0*
T0*0
_output_shapes
:         ??А2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ??А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         CCА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         CCА
 
_user_specified_nameinputs
┴
d
E__inference_dropout_18_layer_call_and_return_conditional_losses_34798

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         м2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape┬
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         м*
dtype0*
seedА2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         м2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         м2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         м2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         м2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         м:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
О	
╩
6__inference_batch_normalization_24_layer_call_fn_33628

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCall╢
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_290082
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
╪
K
/__inference_max_pooling2d_9_layer_call_fn_29334

inputs
identityю
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_293282
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ш
А
D__inference_conv2d_23_layer_call_and_return_conditional_losses_30572

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЕ
BiasAddAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdd\
ReluReluBiasAdd:z:0*
T0*0
_output_shapes
:         А2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
╞
╩
6__inference_batch_normalization_28_layer_call_fn_34268

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ??А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_312062
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ??А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         ??А:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ??А
 
_user_specified_nameinputs:!

_output_shapes	
:А
╚
ю
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_29611

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╬
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
Ь
Х
(__inference_dense_11_layer_call_fn_35041

inputs
unknown:d
	unknown_0:
identityИвStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_307672
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
░&
Щ
Q__inference_batch_normalization_32_layer_call_and_return_conditional_losses_30062

inputs6
'assignmovingavg_readvariableop_resource:	╚8
)assignmovingavg_1_readvariableop_resource:	╚0
!batchnorm_readvariableop_resource:	╚
identityИвAssignMovingAvgвAssignMovingAvg/ReadVariableOpвAssignMovingAvg_1в AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpК
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesР
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	╚*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	╚2
moments/StopGradientе
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         ╚2
moments/SquaredDifferenceТ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices│
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	╚*
	keep_dims(2
moments/varianceБ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:╚*
squeeze_dims
 2
moments/SqueezeЙ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:╚*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg/decayе
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:╚*
dtype02 
AssignMovingAvg/ReadVariableOpЩ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:╚2
AssignMovingAvg/subР
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:╚2
AssignMovingAvg/mul┐
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg_1/decayл
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:╚*
dtype02"
 AssignMovingAvg_1/ReadVariableOpб
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:╚2
AssignMovingAvg_1/subШ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:╚2
AssignMovingAvg_1/mul╔
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yГ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:╚2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:╚2
batchnorm/Rsqrtu
batchnorm/mulMulinputsbatchnorm/Rsqrt:y:0*
T0*(
_output_shapes
:         ╚2
batchnorm/mul~
batchnorm/mul_1Mulmoments/Squeeze:output:0batchnorm/Rsqrt:y:0*
T0*
_output_shapes	
:╚2
batchnorm/mul_1У
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:╚*
dtype02
batchnorm/ReadVariableOpВ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_1:z:0*
T0*
_output_shapes	
:╚2
batchnorm/subД
batchnorm/add_1AddV2batchnorm/mul:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         ╚2
batchnorm/add_1э
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp*
T0*(
_output_shapes
:         ╚2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:         ╚: : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs
Ю
c
E__inference_dropout_14_layer_call_and_return_conditional_losses_30371

inputs

identity_1e
IdentityIdentityinputs*
T0*2
_output_shapes 
:         ТТА2

Identityt

Identity_1IdentityIdentity:output:0*
T0*2
_output_shapes 
:         ТТА2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         ТТА:Z V
2
_output_shapes 
:         ТТА
 
_user_specified_nameinputs
Ш
А
D__inference_conv2d_24_layer_call_and_return_conditional_losses_30615

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЕ
BiasAddAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdd\
ReluReluBiasAdd:z:0*
T0*0
_output_shapes
:         А2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ъ
├
,__inference_sequential_5_layer_call_fn_32863

inputs!
unknown: 
	unknown_0: 
	unknown_1
	unknown_2: 
	unknown_3: 
	unknown_4: $
	unknown_5: А
	unknown_6:	А
	unknown_7
	unknown_8:	А
	unknown_9:	А

unknown_10:	А%

unknown_11:А 

unknown_12: 

unknown_13

unknown_14: 

unknown_15: 

unknown_16: %

unknown_17: А

unknown_18:	А

unknown_19

unknown_20:	А

unknown_21:	А

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25

unknown_26:	А

unknown_27:	А

unknown_28:	А&

unknown_29:АА

unknown_30:	А

unknown_31

unknown_32:	А

unknown_33:	А

unknown_34:	А&

unknown_35:АА

unknown_36:	А

unknown_37

unknown_38:	А

unknown_39:	А

unknown_40:	А&

unknown_41:АА

unknown_42:	А

unknown_43

unknown_44:	А

unknown_45:	А

unknown_46:	А

unknown_47:АРм

unknown_48:	м

unknown_49:	м

unknown_50:	м

unknown_51:	м

unknown_52:
м╚

unknown_53:	╚

unknown_54:	╚

unknown_55:	╚

unknown_56:	╚

unknown_57:	╚d

unknown_58:d

unknown_59:d

unknown_60:d

unknown_61:d

unknown_62:d

unknown_63:
identityИвStatefulPartitionedCall┼	
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63*M
TinF
D2B*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *E
_read_only_resource_inputs'
%#
 "%&(+,.12567:;<?@A*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_318442
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*┌
_input_shapes╚
┼:         мм: : : : : : : : :А: : : : : : : : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         мм
 
_user_specified_nameinputs: 

_output_shapes
: :!	

_output_shapes	
:А: 

_output_shapes
: :!

_output_shapes	
:А:!

_output_shapes	
:А:!!

_output_shapes	
:А:!'

_output_shapes	
:А:!-

_output_shapes	
:А
№
Т
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_29008

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
╒
E
)__inference_flatten_2_layer_call_fn_34675

inputs
identity╟
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         АР* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_306612
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:         АР2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
░&
Щ
Q__inference_batch_normalization_32_layer_call_and_return_conditional_losses_34888

inputs6
'assignmovingavg_readvariableop_resource:	╚8
)assignmovingavg_1_readvariableop_resource:	╚0
!batchnorm_readvariableop_resource:	╚
identityИвAssignMovingAvgвAssignMovingAvg/ReadVariableOpвAssignMovingAvg_1в AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpК
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesР
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	╚*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	╚2
moments/StopGradientе
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         ╚2
moments/SquaredDifferenceТ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices│
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	╚*
	keep_dims(2
moments/varianceБ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:╚*
squeeze_dims
 2
moments/SqueezeЙ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:╚*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg/decayе
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:╚*
dtype02 
AssignMovingAvg/ReadVariableOpЩ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:╚2
AssignMovingAvg/subР
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:╚2
AssignMovingAvg/mul┐
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg_1/decayл
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:╚*
dtype02"
 AssignMovingAvg_1/ReadVariableOpб
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:╚2
AssignMovingAvg_1/subШ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:╚2
AssignMovingAvg_1/mul╔
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yГ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:╚2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:╚2
batchnorm/Rsqrtu
batchnorm/mulMulinputsbatchnorm/Rsqrt:y:0*
T0*(
_output_shapes
:         ╚2
batchnorm/mul~
batchnorm/mul_1Mulmoments/Squeeze:output:0batchnorm/Rsqrt:y:0*
T0*
_output_shapes	
:╚2
batchnorm/mul_1У
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:╚*
dtype02
batchnorm/ReadVariableOpВ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_1:z:0*
T0*
_output_shapes	
:╚2
batchnorm/subД
batchnorm/add_1AddV2batchnorm/mul:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         ╚2
batchnorm/add_1э
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp*
T0*(
_output_shapes
:         ╚2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:         ╚: : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs
ь
П
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_29142

inputs	
scale%
readvariableop_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpз
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╫
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1¤
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs: 

_output_shapes
: 
█╞
Ё
G__inference_sequential_5_layer_call_and_return_conditional_losses_32450
conv2d_17_input)
conv2d_17_32284: 
conv2d_17_32286:  
batch_normalization_23_32289*
batch_normalization_23_32291: *
batch_normalization_23_32293: *
batch_normalization_23_32295: *
conv2d_18_32298: А
conv2d_18_32300:	А 
batch_normalization_24_32303+
batch_normalization_24_32305:	А+
batch_normalization_24_32307:	А+
batch_normalization_24_32309:	А*
conv2d_19_32314:А 
conv2d_19_32316:  
batch_normalization_25_32319*
batch_normalization_25_32321: *
batch_normalization_25_32323: *
batch_normalization_25_32325: *
conv2d_20_32328: А
conv2d_20_32330:	А 
batch_normalization_26_32333+
batch_normalization_26_32335:	А+
batch_normalization_26_32337:	А+
batch_normalization_26_32339:	А+
conv2d_21_32344:АА
conv2d_21_32346:	А 
batch_normalization_27_32349+
batch_normalization_27_32351:	А+
batch_normalization_27_32353:	А+
batch_normalization_27_32355:	А+
conv2d_22_32358:АА
conv2d_22_32360:	А 
batch_normalization_28_32363+
batch_normalization_28_32365:	А+
batch_normalization_28_32367:	А+
batch_normalization_28_32369:	А+
conv2d_23_32374:АА
conv2d_23_32376:	А 
batch_normalization_29_32379+
batch_normalization_29_32381:	А+
batch_normalization_29_32383:	А+
batch_normalization_29_32385:	А+
conv2d_24_32388:АА
conv2d_24_32390:	А 
batch_normalization_30_32393+
batch_normalization_30_32395:	А+
batch_normalization_30_32397:	А+
batch_normalization_30_32399:	А"
dense_8_32405:АРм
dense_8_32407:	м+
batch_normalization_31_32410:	м+
batch_normalization_31_32412:	м+
batch_normalization_31_32414:	м!
dense_9_32418:
м╚
dense_9_32420:	╚+
batch_normalization_32_32423:	╚+
batch_normalization_32_32425:	╚+
batch_normalization_32_32427:	╚!
dense_10_32431:	╚d
dense_10_32433:d*
batch_normalization_33_32436:d*
batch_normalization_33_32438:d*
batch_normalization_33_32440:d 
dense_11_32444:d
dense_11_32446:
identityИв.batch_normalization_23/StatefulPartitionedCallв.batch_normalization_24/StatefulPartitionedCallв.batch_normalization_25/StatefulPartitionedCallв.batch_normalization_26/StatefulPartitionedCallв.batch_normalization_27/StatefulPartitionedCallв.batch_normalization_28/StatefulPartitionedCallв.batch_normalization_29/StatefulPartitionedCallв.batch_normalization_30/StatefulPartitionedCallв.batch_normalization_31/StatefulPartitionedCallв.batch_normalization_32/StatefulPartitionedCallв.batch_normalization_33/StatefulPartitionedCallв!conv2d_17/StatefulPartitionedCallв!conv2d_18/StatefulPartitionedCallв!conv2d_19/StatefulPartitionedCallв!conv2d_20/StatefulPartitionedCallв!conv2d_21/StatefulPartitionedCallв!conv2d_22/StatefulPartitionedCallв!conv2d_23/StatefulPartitionedCallв!conv2d_24/StatefulPartitionedCallв dense_10/StatefulPartitionedCallв dense_11/StatefulPartitionedCallвdense_8/StatefulPartitionedCallвdense_9/StatefulPartitionedCallв"dropout_14/StatefulPartitionedCallв"dropout_15/StatefulPartitionedCallв"dropout_16/StatefulPartitionedCallв"dropout_17/StatefulPartitionedCallв"dropout_18/StatefulPartitionedCallв"dropout_19/StatefulPartitionedCallв"dropout_20/StatefulPartitionedCallм
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCallconv2d_17_inputconv2d_17_32284conv2d_17_32286*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ии *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_302902#
!conv2d_17/StatefulPartitionedCall┼
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0batch_normalization_23_32289batch_normalization_23_32291batch_normalization_23_32293batch_normalization_23_32295*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ии *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_3151720
.batch_normalization_23/StatefulPartitionedCall╒
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0conv2d_18_32298conv2d_18_32300*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ддА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_303332#
!conv2d_18/StatefulPartitionedCall╞
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0batch_normalization_24_32303batch_normalization_24_32305batch_normalization_24_32307batch_normalization_24_32309*
Tin	
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ддА*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_3146420
.batch_normalization_24/StatefulPartitionedCallз
max_pooling2d_8/PartitionedCallPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ТТА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_290722!
max_pooling2d_8/PartitionedCallб
"dropout_14/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ТТА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_14_layer_call_and_return_conditional_losses_314292$
"dropout_14/StatefulPartitionedCall╚
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall+dropout_14/StatefulPartitionedCall:output:0conv2d_19_32314conv2d_19_32316*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         РР *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_303842#
!conv2d_19/StatefulPartitionedCall┼
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0batch_normalization_25_32319batch_normalization_25_32321batch_normalization_25_32323batch_normalization_25_32325*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         РР *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_3138820
.batch_normalization_25/StatefulPartitionedCall╒
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0conv2d_20_32328conv2d_20_32330*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ООА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_304272#
!conv2d_20/StatefulPartitionedCall╞
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0batch_normalization_26_32333batch_normalization_26_32335batch_normalization_26_32337batch_normalization_26_32339*
Tin	
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ООА*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_3133520
.batch_normalization_26/StatefulPartitionedCallе
max_pooling2d_9/PartitionedCallPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         GGА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_293282!
max_pooling2d_9/PartitionedCall─
"dropout_15/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0#^dropout_14/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         GGА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_313002$
"dropout_15/StatefulPartitionedCall╟
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall+dropout_15/StatefulPartitionedCall:output:0conv2d_21_32344conv2d_21_32346*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         CCА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_304782#
!conv2d_21/StatefulPartitionedCall─
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0batch_normalization_27_32349batch_normalization_27_32351batch_normalization_27_32353batch_normalization_27_32355*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         CCА*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_3125920
.batch_normalization_27/StatefulPartitionedCall╙
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0conv2d_22_32358conv2d_22_32360*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_305212#
!conv2d_22/StatefulPartitionedCall─
.batch_normalization_28/StatefulPartitionedCallStatefulPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0batch_normalization_28_32363batch_normalization_28_32365batch_normalization_28_32367batch_normalization_28_32369*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ??А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_3120620
.batch_normalization_28/StatefulPartitionedCallи
 max_pooling2d_10/PartitionedCallPartitionedCall7batch_normalization_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_295842"
 max_pooling2d_10/PartitionedCall┼
"dropout_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0#^dropout_15/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_16_layer_call_and_return_conditional_losses_311712$
"dropout_16/StatefulPartitionedCall╟
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall+dropout_16/StatefulPartitionedCall:output:0conv2d_23_32374conv2d_23_32376*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_305722#
!conv2d_23/StatefulPartitionedCall─
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0batch_normalization_29_32379batch_normalization_29_32381batch_normalization_29_32383batch_normalization_29_32385*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_3113020
.batch_normalization_29/StatefulPartitionedCall╙
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0conv2d_24_32388conv2d_24_32390*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_306152#
!conv2d_24/StatefulPartitionedCall─
.batch_normalization_30/StatefulPartitionedCallStatefulPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0batch_normalization_30_32393batch_normalization_30_32395batch_normalization_30_32397batch_normalization_30_32399*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_3107720
.batch_normalization_30/StatefulPartitionedCallи
 max_pooling2d_11/PartitionedCallPartitionedCall7batch_normalization_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_298402"
 max_pooling2d_11/PartitionedCall┼
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0#^dropout_16/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_17_layer_call_and_return_conditional_losses_310422$
"dropout_17/StatefulPartitionedCallА
flatten_2/PartitionedCallPartitionedCall+dropout_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         АР* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_306612
flatten_2/PartitionedCallм
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_8_32405dense_8_32407*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_306742!
dense_8/StatefulPartitionedCallЫ
.batch_normalization_31/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0batch_normalization_31_32410batch_normalization_31_32412batch_normalization_31_32414*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_2992020
.batch_normalization_31/StatefulPartitionedCall╦
"dropout_18/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_31/StatefulPartitionedCall:output:0#^dropout_17/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_310032$
"dropout_18/StatefulPartitionedCall╡
dense_9/StatefulPartitionedCallStatefulPartitionedCall+dropout_18/StatefulPartitionedCall:output:0dense_9_32418dense_9_32420*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_307052!
dense_9/StatefulPartitionedCallЫ
.batch_normalization_32/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0batch_normalization_32_32423batch_normalization_32_32425batch_normalization_32_32427*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_32_layer_call_and_return_conditional_losses_3006220
.batch_normalization_32/StatefulPartitionedCall╦
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_32/StatefulPartitionedCall:output:0#^dropout_18/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_309702$
"dropout_19/StatefulPartitionedCall╣
 dense_10/StatefulPartitionedCallStatefulPartitionedCall+dropout_19/StatefulPartitionedCall:output:0dense_10_32431dense_10_32433*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_307362"
 dense_10/StatefulPartitionedCallЫ
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0batch_normalization_33_32436batch_normalization_33_32438batch_normalization_33_32440*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_33_layer_call_and_return_conditional_losses_3020420
.batch_normalization_33/StatefulPartitionedCall╩
"dropout_20/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0#^dropout_19/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_20_layer_call_and_return_conditional_losses_309372$
"dropout_20/StatefulPartitionedCall╣
 dense_11/StatefulPartitionedCallStatefulPartitionedCall+dropout_20/StatefulPartitionedCall:output:0dense_11_32444dense_11_32446*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_307672"
 dense_11/StatefulPartitionedCall┼

IdentityIdentity)dense_11/StatefulPartitionedCall:output:0/^batch_normalization_23/StatefulPartitionedCall/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall/^batch_normalization_28/StatefulPartitionedCall/^batch_normalization_29/StatefulPartitionedCall/^batch_normalization_30/StatefulPartitionedCall/^batch_normalization_31/StatefulPartitionedCall/^batch_normalization_32/StatefulPartitionedCall/^batch_normalization_33/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall#^dropout_16/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall#^dropout_20/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*┌
_input_shapes╚
┼:         мм: : : : : : : : :А: : : : : : : : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2`
.batch_normalization_28/StatefulPartitionedCall.batch_normalization_28/StatefulPartitionedCall2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2`
.batch_normalization_30/StatefulPartitionedCall.batch_normalization_30/StatefulPartitionedCall2`
.batch_normalization_31/StatefulPartitionedCall.batch_normalization_31/StatefulPartitionedCall2`
.batch_normalization_32/StatefulPartitionedCall.batch_normalization_32/StatefulPartitionedCall2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2H
"dropout_14/StatefulPartitionedCall"dropout_14/StatefulPartitionedCall2H
"dropout_15/StatefulPartitionedCall"dropout_15/StatefulPartitionedCall2H
"dropout_16/StatefulPartitionedCall"dropout_16/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall2H
"dropout_18/StatefulPartitionedCall"dropout_18/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall2H
"dropout_20/StatefulPartitionedCall"dropout_20/StatefulPartitionedCall:b ^
1
_output_shapes
:         мм
)
_user_specified_nameconv2d_17_input: 

_output_shapes
: :!	

_output_shapes	
:А: 

_output_shapes
: :!

_output_shapes	
:А:!

_output_shapes	
:А:!!

_output_shapes	
:А:!'

_output_shapes	
:А:!-

_output_shapes	
:А
╚
╩
6__inference_batch_normalization_29_layer_call_fn_34422

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_305942
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         А:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:!

_output_shapes	
:А
№
Т
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_34302

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
ъ
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_34681

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"     И 2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         АР2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         АР2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ш
¤
D__inference_conv2d_17_layer_call_and_return_conditional_losses_33462

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpж
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ии *
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpЖ
BiasAddAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ии 2	
BiasAdd]
ReluReluBiasAdd:z:0*
T0*1
_output_shapes
:         ии 2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         ии 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         мм: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         мм
 
_user_specified_nameinputs
╨
╩
6__inference_batch_normalization_26_layer_call_fn_33948

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ООА*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_304492
StatefulPartitionedCallЩ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*2
_output_shapes 
:         ООА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         ООА:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:         ООА
 
_user_specified_nameinputs:!

_output_shapes	
:А
Ц
c
E__inference_dropout_16_layer_call_and_return_conditional_losses_34351

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:           А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:           А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:           А:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
Ь
■
D__inference_conv2d_19_layer_call_and_return_conditional_losses_33769

inputs9
conv2d_readvariableop_resource:А -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:А *
dtype02
Conv2D/ReadVariableOpж
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         РР *
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpЖ
BiasAddAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         РР 2	
BiasAdd]
ReluReluBiasAdd:z:0*
T0*1
_output_shapes
:         РР 2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         РР 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         ТТА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:         ТТА
 
_user_specified_nameinputs
Р	
╩
6__inference_batch_normalization_29_layer_call_fn_34396

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCall╕
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_296112
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
╕
ы
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_33838

inputs	
scale%
readvariableop_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpз
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╔
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┘
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs: 

_output_shapes
: 
┤
Т
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_34336

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         ??А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1ь
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*0
_output_shapes
:         ??А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         ??А:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:         ??А
 
_user_specified_nameinputs:!

_output_shapes	
:А
№
Т
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_34469

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
Ц
c
E__inference_dropout_17_layer_call_and_return_conditional_losses_34658

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:         А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ў
c
E__inference_dropout_19_layer_call_and_return_conditional_losses_34903

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         ╚2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         ╚2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ╚:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs
╚
╩
6__inference_batch_normalization_30_layer_call_fn_34562

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_306372
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         А:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:!

_output_shapes	
:А
а
 
D__inference_conv2d_18_layer_call_and_return_conditional_losses_30333

inputs9
conv2d_readvariableop_resource: А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
: А*
dtype02
Conv2D/ReadVariableOpз
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ддА*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЗ
BiasAddAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ддА2	
BiasAdd^
ReluReluBiasAdd:z:0*
T0*2
_output_shapes 
:         ддА2
Reluв
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*2
_output_shapes 
:         ддА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ии : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ии 
 
_user_specified_nameinputs
Ц
c
E__inference_dropout_15_layer_call_and_return_conditional_losses_30465

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:         GGА2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         GGА2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         GGА:X T
0
_output_shapes
:         GGА
 
_user_specified_nameinputs
№
Т
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_33688

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
м
П
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_31517

inputs	
scale%
readvariableop_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpз
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╟
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ии : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1э
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*1
_output_shapes
:         ии 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         ии : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:Y U
1
_output_shapes
:         ии 
 
_user_specified_nameinputs: 

_output_shapes
: 
з╗
э
G__inference_sequential_5_layer_call_and_return_conditional_losses_32281
conv2d_17_input)
conv2d_17_32115: 
conv2d_17_32117:  
batch_normalization_23_32120*
batch_normalization_23_32122: *
batch_normalization_23_32124: *
batch_normalization_23_32126: *
conv2d_18_32129: А
conv2d_18_32131:	А 
batch_normalization_24_32134+
batch_normalization_24_32136:	А+
batch_normalization_24_32138:	А+
batch_normalization_24_32140:	А*
conv2d_19_32145:А 
conv2d_19_32147:  
batch_normalization_25_32150*
batch_normalization_25_32152: *
batch_normalization_25_32154: *
batch_normalization_25_32156: *
conv2d_20_32159: А
conv2d_20_32161:	А 
batch_normalization_26_32164+
batch_normalization_26_32166:	А+
batch_normalization_26_32168:	А+
batch_normalization_26_32170:	А+
conv2d_21_32175:АА
conv2d_21_32177:	А 
batch_normalization_27_32180+
batch_normalization_27_32182:	А+
batch_normalization_27_32184:	А+
batch_normalization_27_32186:	А+
conv2d_22_32189:АА
conv2d_22_32191:	А 
batch_normalization_28_32194+
batch_normalization_28_32196:	А+
batch_normalization_28_32198:	А+
batch_normalization_28_32200:	А+
conv2d_23_32205:АА
conv2d_23_32207:	А 
batch_normalization_29_32210+
batch_normalization_29_32212:	А+
batch_normalization_29_32214:	А+
batch_normalization_29_32216:	А+
conv2d_24_32219:АА
conv2d_24_32221:	А 
batch_normalization_30_32224+
batch_normalization_30_32226:	А+
batch_normalization_30_32228:	А+
batch_normalization_30_32230:	А"
dense_8_32236:АРм
dense_8_32238:	м+
batch_normalization_31_32241:	м+
batch_normalization_31_32243:	м+
batch_normalization_31_32245:	м!
dense_9_32249:
м╚
dense_9_32251:	╚+
batch_normalization_32_32254:	╚+
batch_normalization_32_32256:	╚+
batch_normalization_32_32258:	╚!
dense_10_32262:	╚d
dense_10_32264:d*
batch_normalization_33_32267:d*
batch_normalization_33_32269:d*
batch_normalization_33_32271:d 
dense_11_32275:d
dense_11_32277:
identityИв.batch_normalization_23/StatefulPartitionedCallв.batch_normalization_24/StatefulPartitionedCallв.batch_normalization_25/StatefulPartitionedCallв.batch_normalization_26/StatefulPartitionedCallв.batch_normalization_27/StatefulPartitionedCallв.batch_normalization_28/StatefulPartitionedCallв.batch_normalization_29/StatefulPartitionedCallв.batch_normalization_30/StatefulPartitionedCallв.batch_normalization_31/StatefulPartitionedCallв.batch_normalization_32/StatefulPartitionedCallв.batch_normalization_33/StatefulPartitionedCallв!conv2d_17/StatefulPartitionedCallв!conv2d_18/StatefulPartitionedCallв!conv2d_19/StatefulPartitionedCallв!conv2d_20/StatefulPartitionedCallв!conv2d_21/StatefulPartitionedCallв!conv2d_22/StatefulPartitionedCallв!conv2d_23/StatefulPartitionedCallв!conv2d_24/StatefulPartitionedCallв dense_10/StatefulPartitionedCallв dense_11/StatefulPartitionedCallвdense_8/StatefulPartitionedCallвdense_9/StatefulPartitionedCallм
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCallconv2d_17_inputconv2d_17_32115conv2d_17_32117*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ии *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_302902#
!conv2d_17/StatefulPartitionedCall╟
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0batch_normalization_23_32120batch_normalization_23_32122batch_normalization_23_32124batch_normalization_23_32126*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ии *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_3031220
.batch_normalization_23/StatefulPartitionedCall╒
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0conv2d_18_32129conv2d_18_32131*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ддА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_303332#
!conv2d_18/StatefulPartitionedCall╚
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0batch_normalization_24_32134batch_normalization_24_32136batch_normalization_24_32138batch_normalization_24_32140*
Tin	
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ддА*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_3035520
.batch_normalization_24/StatefulPartitionedCallз
max_pooling2d_8/PartitionedCallPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ТТА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_290722!
max_pooling2d_8/PartitionedCallЙ
dropout_14/PartitionedCallPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ТТА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_14_layer_call_and_return_conditional_losses_303712
dropout_14/PartitionedCall└
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall#dropout_14/PartitionedCall:output:0conv2d_19_32145conv2d_19_32147*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         РР *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_303842#
!conv2d_19/StatefulPartitionedCall╟
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0batch_normalization_25_32150batch_normalization_25_32152batch_normalization_25_32154batch_normalization_25_32156*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         РР *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_3040620
.batch_normalization_25/StatefulPartitionedCall╒
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0conv2d_20_32159conv2d_20_32161*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ООА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_304272#
!conv2d_20/StatefulPartitionedCall╚
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0batch_normalization_26_32164batch_normalization_26_32166batch_normalization_26_32168batch_normalization_26_32170*
Tin	
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ООА*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_3044920
.batch_normalization_26/StatefulPartitionedCallе
max_pooling2d_9/PartitionedCallPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         GGА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_293282!
max_pooling2d_9/PartitionedCallЗ
dropout_15/PartitionedCallPartitionedCall(max_pooling2d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         GGА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_304652
dropout_15/PartitionedCall┐
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall#dropout_15/PartitionedCall:output:0conv2d_21_32175conv2d_21_32177*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         CCА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_304782#
!conv2d_21/StatefulPartitionedCall╞
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0batch_normalization_27_32180batch_normalization_27_32182batch_normalization_27_32184batch_normalization_27_32186*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         CCА*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_3050020
.batch_normalization_27/StatefulPartitionedCall╙
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0conv2d_22_32189conv2d_22_32191*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_305212#
!conv2d_22/StatefulPartitionedCall╞
.batch_normalization_28/StatefulPartitionedCallStatefulPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0batch_normalization_28_32194batch_normalization_28_32196batch_normalization_28_32198batch_normalization_28_32200*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ??А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_3054320
.batch_normalization_28/StatefulPartitionedCallи
 max_pooling2d_10/PartitionedCallPartitionedCall7batch_normalization_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_295842"
 max_pooling2d_10/PartitionedCallИ
dropout_16/PartitionedCallPartitionedCall)max_pooling2d_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_16_layer_call_and_return_conditional_losses_305592
dropout_16/PartitionedCall┐
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall#dropout_16/PartitionedCall:output:0conv2d_23_32205conv2d_23_32207*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_305722#
!conv2d_23/StatefulPartitionedCall╞
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0batch_normalization_29_32210batch_normalization_29_32212batch_normalization_29_32214batch_normalization_29_32216*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_3059420
.batch_normalization_29/StatefulPartitionedCall╙
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0conv2d_24_32219conv2d_24_32221*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_306152#
!conv2d_24/StatefulPartitionedCall╞
.batch_normalization_30/StatefulPartitionedCallStatefulPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0batch_normalization_30_32224batch_normalization_30_32226batch_normalization_30_32228batch_normalization_30_32230*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_3063720
.batch_normalization_30/StatefulPartitionedCallи
 max_pooling2d_11/PartitionedCallPartitionedCall7batch_normalization_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_298402"
 max_pooling2d_11/PartitionedCallИ
dropout_17/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_17_layer_call_and_return_conditional_losses_306532
dropout_17/PartitionedCall°
flatten_2/PartitionedCallPartitionedCall#dropout_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         АР* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_306612
flatten_2/PartitionedCallм
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_8_32236dense_8_32238*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_306742!
dense_8/StatefulPartitionedCallЭ
.batch_normalization_31/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0batch_normalization_31_32241batch_normalization_31_32243batch_normalization_31_32245*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_2986720
.batch_normalization_31/StatefulPartitionedCallО
dropout_18/PartitionedCallPartitionedCall7batch_normalization_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_306922
dropout_18/PartitionedCallн
dense_9/StatefulPartitionedCallStatefulPartitionedCall#dropout_18/PartitionedCall:output:0dense_9_32249dense_9_32251*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_307052!
dense_9/StatefulPartitionedCallЭ
.batch_normalization_32/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0batch_normalization_32_32254batch_normalization_32_32256batch_normalization_32_32258*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_32_layer_call_and_return_conditional_losses_3000920
.batch_normalization_32/StatefulPartitionedCallО
dropout_19/PartitionedCallPartitionedCall7batch_normalization_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_307232
dropout_19/PartitionedCall▒
 dense_10/StatefulPartitionedCallStatefulPartitionedCall#dropout_19/PartitionedCall:output:0dense_10_32262dense_10_32264*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_307362"
 dense_10/StatefulPartitionedCallЭ
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0batch_normalization_33_32267batch_normalization_33_32269batch_normalization_33_32271*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_33_layer_call_and_return_conditional_losses_3015120
.batch_normalization_33/StatefulPartitionedCallН
dropout_20/PartitionedCallPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_20_layer_call_and_return_conditional_losses_307542
dropout_20/PartitionedCall▒
 dense_11/StatefulPartitionedCallStatefulPartitionedCall#dropout_20/PartitionedCall:output:0dense_11_32275dense_11_32277*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_307672"
 dense_11/StatefulPartitionedCall┬
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0/^batch_normalization_23/StatefulPartitionedCall/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall/^batch_normalization_28/StatefulPartitionedCall/^batch_normalization_29/StatefulPartitionedCall/^batch_normalization_30/StatefulPartitionedCall/^batch_normalization_31/StatefulPartitionedCall/^batch_normalization_32/StatefulPartitionedCall/^batch_normalization_33/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*┌
_input_shapes╚
┼:         мм: : : : : : : : :А: : : : : : : : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2`
.batch_normalization_28/StatefulPartitionedCall.batch_normalization_28/StatefulPartitionedCall2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2`
.batch_normalization_30/StatefulPartitionedCall.batch_normalization_30/StatefulPartitionedCall2`
.batch_normalization_31/StatefulPartitionedCall.batch_normalization_31/StatefulPartitionedCall2`
.batch_normalization_32/StatefulPartitionedCall.batch_normalization_32/StatefulPartitionedCall2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:b ^
1
_output_shapes
:         мм
)
_user_specified_nameconv2d_17_input: 

_output_shapes
: :!	

_output_shapes	
:А: 

_output_shapes
: :!

_output_shapes	
:А:!

_output_shapes	
:А:!!

_output_shapes	
:А:!'

_output_shapes	
:А:!-

_output_shapes	
:А
х
F
*__inference_dropout_16_layer_call_fn_34341

inputs
identity╧
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_16_layer_call_and_return_conditional_losses_305592
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:           А:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
╞
╩
6__inference_batch_normalization_27_layer_call_fn_34128

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         CCА*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_312592
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         CCА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         CCА:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         CCА
 
_user_specified_nameinputs:!

_output_shapes	
:А
┼
F
*__inference_dropout_19_layer_call_fn_34893

inputs
identity╟
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_307232
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ╚2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ╚:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs
ы
├
#__inference_signature_wrapper_32593
conv2d_17_input!
unknown: 
	unknown_0: 
	unknown_1
	unknown_2: 
	unknown_3: 
	unknown_4: $
	unknown_5: А
	unknown_6:	А
	unknown_7
	unknown_8:	А
	unknown_9:	А

unknown_10:	А%

unknown_11:А 

unknown_12: 

unknown_13

unknown_14: 

unknown_15: 

unknown_16: %

unknown_17: А

unknown_18:	А

unknown_19

unknown_20:	А

unknown_21:	А

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25

unknown_26:	А

unknown_27:	А

unknown_28:	А&

unknown_29:АА

unknown_30:	А

unknown_31

unknown_32:	А

unknown_33:	А

unknown_34:	А&

unknown_35:АА

unknown_36:	А

unknown_37

unknown_38:	А

unknown_39:	А

unknown_40:	А&

unknown_41:АА

unknown_42:	А

unknown_43

unknown_44:	А

unknown_45:	А

unknown_46:	А

unknown_47:АРм

unknown_48:	м

unknown_49:	м

unknown_50:	м

unknown_51:	м

unknown_52:
м╚

unknown_53:	╚

unknown_54:	╚

unknown_55:	╚

unknown_56:	╚

unknown_57:	╚d

unknown_58:d

unknown_59:d

unknown_60:d

unknown_61:d

unknown_62:d

unknown_63:
identityИвStatefulPartitionedCall╜	
StatefulPartitionedCallStatefulPartitionedCallconv2d_17_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63*M
TinF
D2B*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *[
_read_only_resource_inputs=
;9
 "#$%&()*+,./0123456789:;<=>?@A*0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__wrapped_model_288222
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*┌
_input_shapes╚
┼:         мм: : : : : : : : :А: : : : : : : : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:         мм
)
_user_specified_nameconv2d_17_input: 

_output_shapes
: :!	

_output_shapes	
:А: 

_output_shapes
: :!

_output_shapes	
:А:!

_output_shapes	
:А:!!

_output_shapes	
:А:!'

_output_shapes	
:А:!-

_output_shapes	
:А
М╗
ф
G__inference_sequential_5_layer_call_and_return_conditional_losses_30774

inputs)
conv2d_17_30291: 
conv2d_17_30293:  
batch_normalization_23_30313*
batch_normalization_23_30315: *
batch_normalization_23_30317: *
batch_normalization_23_30319: *
conv2d_18_30334: А
conv2d_18_30336:	А 
batch_normalization_24_30356+
batch_normalization_24_30358:	А+
batch_normalization_24_30360:	А+
batch_normalization_24_30362:	А*
conv2d_19_30385:А 
conv2d_19_30387:  
batch_normalization_25_30407*
batch_normalization_25_30409: *
batch_normalization_25_30411: *
batch_normalization_25_30413: *
conv2d_20_30428: А
conv2d_20_30430:	А 
batch_normalization_26_30450+
batch_normalization_26_30452:	А+
batch_normalization_26_30454:	А+
batch_normalization_26_30456:	А+
conv2d_21_30479:АА
conv2d_21_30481:	А 
batch_normalization_27_30501+
batch_normalization_27_30503:	А+
batch_normalization_27_30505:	А+
batch_normalization_27_30507:	А+
conv2d_22_30522:АА
conv2d_22_30524:	А 
batch_normalization_28_30544+
batch_normalization_28_30546:	А+
batch_normalization_28_30548:	А+
batch_normalization_28_30550:	А+
conv2d_23_30573:АА
conv2d_23_30575:	А 
batch_normalization_29_30595+
batch_normalization_29_30597:	А+
batch_normalization_29_30599:	А+
batch_normalization_29_30601:	А+
conv2d_24_30616:АА
conv2d_24_30618:	А 
batch_normalization_30_30638+
batch_normalization_30_30640:	А+
batch_normalization_30_30642:	А+
batch_normalization_30_30644:	А"
dense_8_30675:АРм
dense_8_30677:	м+
batch_normalization_31_30680:	м+
batch_normalization_31_30682:	м+
batch_normalization_31_30684:	м!
dense_9_30706:
м╚
dense_9_30708:	╚+
batch_normalization_32_30711:	╚+
batch_normalization_32_30713:	╚+
batch_normalization_32_30715:	╚!
dense_10_30737:	╚d
dense_10_30739:d*
batch_normalization_33_30742:d*
batch_normalization_33_30744:d*
batch_normalization_33_30746:d 
dense_11_30768:d
dense_11_30770:
identityИв.batch_normalization_23/StatefulPartitionedCallв.batch_normalization_24/StatefulPartitionedCallв.batch_normalization_25/StatefulPartitionedCallв.batch_normalization_26/StatefulPartitionedCallв.batch_normalization_27/StatefulPartitionedCallв.batch_normalization_28/StatefulPartitionedCallв.batch_normalization_29/StatefulPartitionedCallв.batch_normalization_30/StatefulPartitionedCallв.batch_normalization_31/StatefulPartitionedCallв.batch_normalization_32/StatefulPartitionedCallв.batch_normalization_33/StatefulPartitionedCallв!conv2d_17/StatefulPartitionedCallв!conv2d_18/StatefulPartitionedCallв!conv2d_19/StatefulPartitionedCallв!conv2d_20/StatefulPartitionedCallв!conv2d_21/StatefulPartitionedCallв!conv2d_22/StatefulPartitionedCallв!conv2d_23/StatefulPartitionedCallв!conv2d_24/StatefulPartitionedCallв dense_10/StatefulPartitionedCallв dense_11/StatefulPartitionedCallвdense_8/StatefulPartitionedCallвdense_9/StatefulPartitionedCallг
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_17_30291conv2d_17_30293*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ии *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_302902#
!conv2d_17/StatefulPartitionedCall╟
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0batch_normalization_23_30313batch_normalization_23_30315batch_normalization_23_30317batch_normalization_23_30319*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ии *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_3031220
.batch_normalization_23/StatefulPartitionedCall╒
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0conv2d_18_30334conv2d_18_30336*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ддА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_303332#
!conv2d_18/StatefulPartitionedCall╚
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0batch_normalization_24_30356batch_normalization_24_30358batch_normalization_24_30360batch_normalization_24_30362*
Tin	
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ддА*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_3035520
.batch_normalization_24/StatefulPartitionedCallз
max_pooling2d_8/PartitionedCallPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ТТА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_290722!
max_pooling2d_8/PartitionedCallЙ
dropout_14/PartitionedCallPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ТТА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_14_layer_call_and_return_conditional_losses_303712
dropout_14/PartitionedCall└
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall#dropout_14/PartitionedCall:output:0conv2d_19_30385conv2d_19_30387*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         РР *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_303842#
!conv2d_19/StatefulPartitionedCall╟
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0batch_normalization_25_30407batch_normalization_25_30409batch_normalization_25_30411batch_normalization_25_30413*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         РР *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_3040620
.batch_normalization_25/StatefulPartitionedCall╒
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0conv2d_20_30428conv2d_20_30430*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ООА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_304272#
!conv2d_20/StatefulPartitionedCall╚
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0batch_normalization_26_30450batch_normalization_26_30452batch_normalization_26_30454batch_normalization_26_30456*
Tin	
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ООА*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_3044920
.batch_normalization_26/StatefulPartitionedCallе
max_pooling2d_9/PartitionedCallPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         GGА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_293282!
max_pooling2d_9/PartitionedCallЗ
dropout_15/PartitionedCallPartitionedCall(max_pooling2d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         GGА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_304652
dropout_15/PartitionedCall┐
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall#dropout_15/PartitionedCall:output:0conv2d_21_30479conv2d_21_30481*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         CCА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_304782#
!conv2d_21/StatefulPartitionedCall╞
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0batch_normalization_27_30501batch_normalization_27_30503batch_normalization_27_30505batch_normalization_27_30507*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         CCА*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_3050020
.batch_normalization_27/StatefulPartitionedCall╙
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0conv2d_22_30522conv2d_22_30524*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_305212#
!conv2d_22/StatefulPartitionedCall╞
.batch_normalization_28/StatefulPartitionedCallStatefulPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0batch_normalization_28_30544batch_normalization_28_30546batch_normalization_28_30548batch_normalization_28_30550*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ??А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_3054320
.batch_normalization_28/StatefulPartitionedCallи
 max_pooling2d_10/PartitionedCallPartitionedCall7batch_normalization_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_295842"
 max_pooling2d_10/PartitionedCallИ
dropout_16/PartitionedCallPartitionedCall)max_pooling2d_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_16_layer_call_and_return_conditional_losses_305592
dropout_16/PartitionedCall┐
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall#dropout_16/PartitionedCall:output:0conv2d_23_30573conv2d_23_30575*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_305722#
!conv2d_23/StatefulPartitionedCall╞
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0batch_normalization_29_30595batch_normalization_29_30597batch_normalization_29_30599batch_normalization_29_30601*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_3059420
.batch_normalization_29/StatefulPartitionedCall╙
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0conv2d_24_30616conv2d_24_30618*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_306152#
!conv2d_24/StatefulPartitionedCall╞
.batch_normalization_30/StatefulPartitionedCallStatefulPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0batch_normalization_30_30638batch_normalization_30_30640batch_normalization_30_30642batch_normalization_30_30644*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_3063720
.batch_normalization_30/StatefulPartitionedCallи
 max_pooling2d_11/PartitionedCallPartitionedCall7batch_normalization_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_298402"
 max_pooling2d_11/PartitionedCallИ
dropout_17/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_17_layer_call_and_return_conditional_losses_306532
dropout_17/PartitionedCall°
flatten_2/PartitionedCallPartitionedCall#dropout_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         АР* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_306612
flatten_2/PartitionedCallм
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_8_30675dense_8_30677*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_306742!
dense_8/StatefulPartitionedCallЭ
.batch_normalization_31/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0batch_normalization_31_30680batch_normalization_31_30682batch_normalization_31_30684*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_2986720
.batch_normalization_31/StatefulPartitionedCallО
dropout_18/PartitionedCallPartitionedCall7batch_normalization_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_306922
dropout_18/PartitionedCallн
dense_9/StatefulPartitionedCallStatefulPartitionedCall#dropout_18/PartitionedCall:output:0dense_9_30706dense_9_30708*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_307052!
dense_9/StatefulPartitionedCallЭ
.batch_normalization_32/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0batch_normalization_32_30711batch_normalization_32_30713batch_normalization_32_30715*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_32_layer_call_and_return_conditional_losses_3000920
.batch_normalization_32/StatefulPartitionedCallО
dropout_19/PartitionedCallPartitionedCall7batch_normalization_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_307232
dropout_19/PartitionedCall▒
 dense_10/StatefulPartitionedCallStatefulPartitionedCall#dropout_19/PartitionedCall:output:0dense_10_30737dense_10_30739*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_307362"
 dense_10/StatefulPartitionedCallЭ
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0batch_normalization_33_30742batch_normalization_33_30744batch_normalization_33_30746*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_33_layer_call_and_return_conditional_losses_3015120
.batch_normalization_33/StatefulPartitionedCallН
dropout_20/PartitionedCallPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_20_layer_call_and_return_conditional_losses_307542
dropout_20/PartitionedCall▒
 dense_11/StatefulPartitionedCallStatefulPartitionedCall#dropout_20/PartitionedCall:output:0dense_11_30768dense_11_30770*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_307672"
 dense_11/StatefulPartitionedCall┬
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0/^batch_normalization_23/StatefulPartitionedCall/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall/^batch_normalization_28/StatefulPartitionedCall/^batch_normalization_29/StatefulPartitionedCall/^batch_normalization_30/StatefulPartitionedCall/^batch_normalization_31/StatefulPartitionedCall/^batch_normalization_32/StatefulPartitionedCall/^batch_normalization_33/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*┌
_input_shapes╚
┼:         мм: : : : : : : : :А: : : : : : : : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2`
.batch_normalization_28/StatefulPartitionedCall.batch_normalization_28/StatefulPartitionedCall2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2`
.batch_normalization_30/StatefulPartitionedCall.batch_normalization_30/StatefulPartitionedCall2`
.batch_normalization_31/StatefulPartitionedCall.batch_normalization_31/StatefulPartitionedCall2`
.batch_normalization_32/StatefulPartitionedCall.batch_normalization_32/StatefulPartitionedCall2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:Y U
1
_output_shapes
:         мм
 
_user_specified_nameinputs: 

_output_shapes
: :!	

_output_shapes	
:А: 

_output_shapes
: :!

_output_shapes	
:А:!

_output_shapes	
:А:!!

_output_shapes	
:А:!'

_output_shapes	
:А:!-

_output_shapes	
:А
╬
Ю
)__inference_conv2d_17_layer_call_fn_33451

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ии *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_302902
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         ии 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         мм: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         мм
 
_user_specified_nameinputs
╤
c
*__inference_dropout_19_layer_call_fn_34898

inputs
identityИвStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_309702
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         ╚2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ╚22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs
╨
╩
6__inference_batch_normalization_24_layer_call_fn_33641

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ддА*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_303552
StatefulPartitionedCallЩ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*2
_output_shapes 
:         ддА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         ддА:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:         ддА
 
_user_specified_nameinputs:!

_output_shapes	
:А
И
ю
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_33705

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╛
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*R
_output_shapes@
>:         ддА:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3╩
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*2
_output_shapes 
:         ддА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         ддА:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:Z V
2
_output_shapes 
:         ддА
 
_user_specified_nameinputs:!

_output_shapes	
:А
└
▄
Q__inference_batch_normalization_33_layer_call_and_return_conditional_losses_34974

inputs/
!batchnorm_readvariableop_resource:d1
#batchnorm_readvariableop_1_resource:d1
#batchnorm_readvariableop_2_resource:d
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2Т
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yИ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:d2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d2
batchnorm/Rsqrtt
batchnorm/mulMulinputsbatchnorm/Rsqrt:y:0*
T0*'
_output_shapes
:         d2
batchnorm/mulШ
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOp_1З
batchnorm/mul_1Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/Rsqrt:y:0*
T0*
_output_shapes
:d2
batchnorm/mul_1Ш
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOp_2Г
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_1:z:0*
T0*
_output_shapes
:d2
batchnorm/subГ
batchnorm/add_1AddV2batchnorm/mul:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:         d2
batchnorm/add_1╝
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2*
T0*'
_output_shapes
:         d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         d: : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_2:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
╞
╩
6__inference_batch_normalization_30_layer_call_fn_34575

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_310772
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         А:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:!

_output_shapes	
:А
б╟
Щ/
__inference__traced_save_35386
file_prefix/
+savev2_conv2d_17_kernel_read_readvariableop-
)savev2_conv2d_17_bias_read_readvariableop:
6savev2_batch_normalization_23_beta_read_readvariableopA
=savev2_batch_normalization_23_moving_mean_read_readvariableopE
Asavev2_batch_normalization_23_moving_variance_read_readvariableop/
+savev2_conv2d_18_kernel_read_readvariableop-
)savev2_conv2d_18_bias_read_readvariableop:
6savev2_batch_normalization_24_beta_read_readvariableopA
=savev2_batch_normalization_24_moving_mean_read_readvariableopE
Asavev2_batch_normalization_24_moving_variance_read_readvariableop/
+savev2_conv2d_19_kernel_read_readvariableop-
)savev2_conv2d_19_bias_read_readvariableop:
6savev2_batch_normalization_25_beta_read_readvariableopA
=savev2_batch_normalization_25_moving_mean_read_readvariableopE
Asavev2_batch_normalization_25_moving_variance_read_readvariableop/
+savev2_conv2d_20_kernel_read_readvariableop-
)savev2_conv2d_20_bias_read_readvariableop:
6savev2_batch_normalization_26_beta_read_readvariableopA
=savev2_batch_normalization_26_moving_mean_read_readvariableopE
Asavev2_batch_normalization_26_moving_variance_read_readvariableop/
+savev2_conv2d_21_kernel_read_readvariableop-
)savev2_conv2d_21_bias_read_readvariableop:
6savev2_batch_normalization_27_beta_read_readvariableopA
=savev2_batch_normalization_27_moving_mean_read_readvariableopE
Asavev2_batch_normalization_27_moving_variance_read_readvariableop/
+savev2_conv2d_22_kernel_read_readvariableop-
)savev2_conv2d_22_bias_read_readvariableop:
6savev2_batch_normalization_28_beta_read_readvariableopA
=savev2_batch_normalization_28_moving_mean_read_readvariableopE
Asavev2_batch_normalization_28_moving_variance_read_readvariableop/
+savev2_conv2d_23_kernel_read_readvariableop-
)savev2_conv2d_23_bias_read_readvariableop:
6savev2_batch_normalization_29_beta_read_readvariableopA
=savev2_batch_normalization_29_moving_mean_read_readvariableopE
Asavev2_batch_normalization_29_moving_variance_read_readvariableop/
+savev2_conv2d_24_kernel_read_readvariableop-
)savev2_conv2d_24_bias_read_readvariableop:
6savev2_batch_normalization_30_beta_read_readvariableopA
=savev2_batch_normalization_30_moving_mean_read_readvariableopE
Asavev2_batch_normalization_30_moving_variance_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop:
6savev2_batch_normalization_31_beta_read_readvariableopA
=savev2_batch_normalization_31_moving_mean_read_readvariableopE
Asavev2_batch_normalization_31_moving_variance_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop:
6savev2_batch_normalization_32_beta_read_readvariableopA
=savev2_batch_normalization_32_moving_mean_read_readvariableopE
Asavev2_batch_normalization_32_moving_variance_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop:
6savev2_batch_normalization_33_beta_read_readvariableopA
=savev2_batch_normalization_33_moving_mean_read_readvariableopE
Asavev2_batch_normalization_33_moving_variance_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop;
7savev2_rmsprop_conv2d_17_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_17_bias_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_23_beta_rms_read_readvariableop;
7savev2_rmsprop_conv2d_18_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_18_bias_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_24_beta_rms_read_readvariableop;
7savev2_rmsprop_conv2d_19_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_19_bias_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_25_beta_rms_read_readvariableop;
7savev2_rmsprop_conv2d_20_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_20_bias_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_26_beta_rms_read_readvariableop;
7savev2_rmsprop_conv2d_21_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_21_bias_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_27_beta_rms_read_readvariableop;
7savev2_rmsprop_conv2d_22_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_22_bias_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_28_beta_rms_read_readvariableop;
7savev2_rmsprop_conv2d_23_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_23_bias_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_29_beta_rms_read_readvariableop;
7savev2_rmsprop_conv2d_24_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_24_bias_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_30_beta_rms_read_readvariableop9
5savev2_rmsprop_dense_8_kernel_rms_read_readvariableop7
3savev2_rmsprop_dense_8_bias_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_31_beta_rms_read_readvariableop9
5savev2_rmsprop_dense_9_kernel_rms_read_readvariableop7
3savev2_rmsprop_dense_9_bias_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_32_beta_rms_read_readvariableop:
6savev2_rmsprop_dense_10_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_10_bias_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_33_beta_rms_read_readvariableop:
6savev2_rmsprop_dense_11_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_11_bias_rms_read_readvariableop
savev2_const_8

identity_1ИвMergeV2CheckpointsП
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
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameЙ6
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:f*
dtype0*Ы5
valueС5BО5fB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-17/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-17/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-19/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-19/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-21/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-21/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names╫
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:f*
dtype0*с
value╫B╘fB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices╣-
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_17_kernel_read_readvariableop)savev2_conv2d_17_bias_read_readvariableop6savev2_batch_normalization_23_beta_read_readvariableop=savev2_batch_normalization_23_moving_mean_read_readvariableopAsavev2_batch_normalization_23_moving_variance_read_readvariableop+savev2_conv2d_18_kernel_read_readvariableop)savev2_conv2d_18_bias_read_readvariableop6savev2_batch_normalization_24_beta_read_readvariableop=savev2_batch_normalization_24_moving_mean_read_readvariableopAsavev2_batch_normalization_24_moving_variance_read_readvariableop+savev2_conv2d_19_kernel_read_readvariableop)savev2_conv2d_19_bias_read_readvariableop6savev2_batch_normalization_25_beta_read_readvariableop=savev2_batch_normalization_25_moving_mean_read_readvariableopAsavev2_batch_normalization_25_moving_variance_read_readvariableop+savev2_conv2d_20_kernel_read_readvariableop)savev2_conv2d_20_bias_read_readvariableop6savev2_batch_normalization_26_beta_read_readvariableop=savev2_batch_normalization_26_moving_mean_read_readvariableopAsavev2_batch_normalization_26_moving_variance_read_readvariableop+savev2_conv2d_21_kernel_read_readvariableop)savev2_conv2d_21_bias_read_readvariableop6savev2_batch_normalization_27_beta_read_readvariableop=savev2_batch_normalization_27_moving_mean_read_readvariableopAsavev2_batch_normalization_27_moving_variance_read_readvariableop+savev2_conv2d_22_kernel_read_readvariableop)savev2_conv2d_22_bias_read_readvariableop6savev2_batch_normalization_28_beta_read_readvariableop=savev2_batch_normalization_28_moving_mean_read_readvariableopAsavev2_batch_normalization_28_moving_variance_read_readvariableop+savev2_conv2d_23_kernel_read_readvariableop)savev2_conv2d_23_bias_read_readvariableop6savev2_batch_normalization_29_beta_read_readvariableop=savev2_batch_normalization_29_moving_mean_read_readvariableopAsavev2_batch_normalization_29_moving_variance_read_readvariableop+savev2_conv2d_24_kernel_read_readvariableop)savev2_conv2d_24_bias_read_readvariableop6savev2_batch_normalization_30_beta_read_readvariableop=savev2_batch_normalization_30_moving_mean_read_readvariableopAsavev2_batch_normalization_30_moving_variance_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop6savev2_batch_normalization_31_beta_read_readvariableop=savev2_batch_normalization_31_moving_mean_read_readvariableopAsavev2_batch_normalization_31_moving_variance_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop6savev2_batch_normalization_32_beta_read_readvariableop=savev2_batch_normalization_32_moving_mean_read_readvariableopAsavev2_batch_normalization_32_moving_variance_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop6savev2_batch_normalization_33_beta_read_readvariableop=savev2_batch_normalization_33_moving_mean_read_readvariableopAsavev2_batch_normalization_33_moving_variance_read_readvariableop*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop7savev2_rmsprop_conv2d_17_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_17_bias_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_23_beta_rms_read_readvariableop7savev2_rmsprop_conv2d_18_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_18_bias_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_24_beta_rms_read_readvariableop7savev2_rmsprop_conv2d_19_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_19_bias_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_25_beta_rms_read_readvariableop7savev2_rmsprop_conv2d_20_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_20_bias_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_26_beta_rms_read_readvariableop7savev2_rmsprop_conv2d_21_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_21_bias_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_27_beta_rms_read_readvariableop7savev2_rmsprop_conv2d_22_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_22_bias_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_28_beta_rms_read_readvariableop7savev2_rmsprop_conv2d_23_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_23_bias_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_29_beta_rms_read_readvariableop7savev2_rmsprop_conv2d_24_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_24_bias_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_30_beta_rms_read_readvariableop5savev2_rmsprop_dense_8_kernel_rms_read_readvariableop3savev2_rmsprop_dense_8_bias_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_31_beta_rms_read_readvariableop5savev2_rmsprop_dense_9_kernel_rms_read_readvariableop3savev2_rmsprop_dense_9_bias_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_32_beta_rms_read_readvariableop6savev2_rmsprop_dense_10_kernel_rms_read_readvariableop4savev2_rmsprop_dense_10_bias_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_33_beta_rms_read_readvariableop6savev2_rmsprop_dense_11_kernel_rms_read_readvariableop4savev2_rmsprop_dense_11_bias_rms_read_readvariableopsavev2_const_8"/device:CPU:0*
_output_shapes
 *t
dtypesj
h2f	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
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

identity_1Identity_1:output:0*Е
_input_shapesє
Ё: : : : : : : А:А:А:А:А:А : : : : : А:А:А:А:А:АА:А:А:А:А:АА:А:А:А:А:АА:А:А:А:А:АА:А:А:А:А:АРм:м:м:м:м:
м╚:╚:╚:╚:╚:	╚d:d:d:d:d:d:: : : : : : : : : : : : : А:А:А:А : : : А:А:А:АА:А:А:АА:А:А:АА:А:А:АА:А:А:АРм:м:м:
м╚:╚:╚:	╚d:d:d:d:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :-)
'
_output_shapes
: А:!

_output_shapes	
:А:!

_output_shapes	
:А:!	

_output_shapes	
:А:!


_output_shapes	
:А:-)
'
_output_shapes
:А : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :-)
'
_output_shapes
: А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:! 

_output_shapes	
:А:!!

_output_shapes	
:А:!"

_output_shapes	
:А:!#

_output_shapes	
:А:.$*
(
_output_shapes
:АА:!%

_output_shapes	
:А:!&

_output_shapes	
:А:!'

_output_shapes	
:А:!(

_output_shapes	
:А:')#
!
_output_shapes
:АРм:!*

_output_shapes	
:м:!+

_output_shapes	
:м:!,

_output_shapes	
:м:!-

_output_shapes	
:м:&."
 
_output_shapes
:
м╚:!/

_output_shapes	
:╚:!0

_output_shapes	
:╚:!1

_output_shapes	
:╚:!2

_output_shapes	
:╚:%3!

_output_shapes
:	╚d: 4

_output_shapes
:d: 5

_output_shapes
:d: 6

_output_shapes
:d: 7

_output_shapes
:d:$8 

_output_shapes

:d: 9

_output_shapes
:::

_output_shapes
: :;

_output_shapes
: :<

_output_shapes
: :=

_output_shapes
: :>

_output_shapes
: :?

_output_shapes
: :@

_output_shapes
: :A

_output_shapes
: :B

_output_shapes
: :,C(
&
_output_shapes
: : D

_output_shapes
: : E

_output_shapes
: :-F)
'
_output_shapes
: А:!G

_output_shapes	
:А:!H

_output_shapes	
:А:-I)
'
_output_shapes
:А : J

_output_shapes
: : K

_output_shapes
: :-L)
'
_output_shapes
: А:!M

_output_shapes	
:А:!N

_output_shapes	
:А:.O*
(
_output_shapes
:АА:!P

_output_shapes	
:А:!Q

_output_shapes	
:А:.R*
(
_output_shapes
:АА:!S

_output_shapes	
:А:!T

_output_shapes	
:А:.U*
(
_output_shapes
:АА:!V

_output_shapes	
:А:!W

_output_shapes	
:А:.X*
(
_output_shapes
:АА:!Y

_output_shapes	
:А:!Z

_output_shapes	
:А:'[#
!
_output_shapes
:АРм:!\

_output_shapes	
:м:!]

_output_shapes	
:м:&^"
 
_output_shapes
:
м╚:!_

_output_shapes	
:╚:!`

_output_shapes	
:╚:%a!

_output_shapes
:	╚d: b

_output_shapes
:d: c

_output_shapes
:d:$d 

_output_shapes

:d: e

_output_shapes
::f

_output_shapes
: 
О	
╩
6__inference_batch_normalization_29_layer_call_fn_34409

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCall╢
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_296542
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
╚
ю
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_34285

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╬
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
Ш
¤
D__inference_conv2d_17_layer_call_and_return_conditional_losses_30290

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpж
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ии *
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpЖ
BiasAddAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ии 2	
BiasAdd]
ReluReluBiasAdd:z:0*
T0*1
_output_shapes
:         ии 2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         ии 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         мм: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         мм
 
_user_specified_nameinputs
ё
c
*__inference_dropout_16_layer_call_fn_34346

inputs
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_16_layer_call_and_return_conditional_losses_311712
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:           А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
┤
Т
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_31206

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         ??А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1ь
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*0
_output_shapes
:         ??А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         ??А:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:         ??А
 
_user_specified_nameinputs:!

_output_shapes	
:А
О	
╩
6__inference_batch_normalization_27_layer_call_fn_34102

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCall╢
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_293982
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
Р	
╩
6__inference_batch_normalization_30_layer_call_fn_34536

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCall╕
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_297332
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
к
g
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_29584

inputs
identityм
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingSAME*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
░&
Щ
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_29920

inputs6
'assignmovingavg_readvariableop_resource:	м8
)assignmovingavg_1_readvariableop_resource:	м0
!batchnorm_readvariableop_resource:	м
identityИвAssignMovingAvgвAssignMovingAvg/ReadVariableOpвAssignMovingAvg_1в AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpК
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesР
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	м*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	м2
moments/StopGradientе
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         м2
moments/SquaredDifferenceТ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices│
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	м*
	keep_dims(2
moments/varianceБ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:м*
squeeze_dims
 2
moments/SqueezeЙ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:м*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg/decayе
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:м*
dtype02 
AssignMovingAvg/ReadVariableOpЩ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:м2
AssignMovingAvg/subР
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:м2
AssignMovingAvg/mul┐
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg_1/decayл
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:м*
dtype02"
 AssignMovingAvg_1/ReadVariableOpб
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:м2
AssignMovingAvg_1/subШ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:м2
AssignMovingAvg_1/mul╔
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yГ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:м2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:м2
batchnorm/Rsqrtu
batchnorm/mulMulinputsbatchnorm/Rsqrt:y:0*
T0*(
_output_shapes
:         м2
batchnorm/mul~
batchnorm/mul_1Mulmoments/Squeeze:output:0batchnorm/Rsqrt:y:0*
T0*
_output_shapes	
:м2
batchnorm/mul_1У
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:м*
dtype02
batchnorm/ReadVariableOpВ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_1:z:0*
T0*
_output_shapes	
:м2
batchnorm/subД
batchnorm/add_1AddV2batchnorm/mul:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         м2
batchnorm/add_1э
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp*
T0*(
_output_shapes
:         м2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:         м: : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
Ш
А
D__inference_conv2d_24_layer_call_and_return_conditional_losses_34523

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЕ
BiasAddAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdd\
ReluReluBiasAdd:z:0*
T0*0
_output_shapes
:         А2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
у
╗
6__inference_batch_normalization_31_layer_call_fn_34712

inputs
unknown:	м
	unknown_0:	м
	unknown_1:	м
identityИвStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_298672
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         м2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:         м: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
Е	
╟
6__inference_batch_normalization_23_layer_call_fn_33488

inputs
unknown
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCall╡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_288862
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs: 

_output_shapes
: 
п╤
╣5
G__inference_sequential_5_layer_call_and_return_conditional_losses_33107

inputsB
(conv2d_17_conv2d_readvariableop_resource: 7
)conv2d_17_biasadd_readvariableop_resource:  
batch_normalization_23_scale<
.batch_normalization_23_readvariableop_resource: M
?batch_normalization_23_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_23_fusedbatchnormv3_readvariableop_1_resource: C
(conv2d_18_conv2d_readvariableop_resource: А8
)conv2d_18_biasadd_readvariableop_resource:	А 
batch_normalization_24_scale=
.batch_normalization_24_readvariableop_resource:	АN
?batch_normalization_24_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource:	АC
(conv2d_19_conv2d_readvariableop_resource:А 7
)conv2d_19_biasadd_readvariableop_resource:  
batch_normalization_25_scale<
.batch_normalization_25_readvariableop_resource: M
?batch_normalization_25_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource: C
(conv2d_20_conv2d_readvariableop_resource: А8
)conv2d_20_biasadd_readvariableop_resource:	А 
batch_normalization_26_scale=
.batch_normalization_26_readvariableop_resource:	АN
?batch_normalization_26_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource:	АD
(conv2d_21_conv2d_readvariableop_resource:АА8
)conv2d_21_biasadd_readvariableop_resource:	А 
batch_normalization_27_scale=
.batch_normalization_27_readvariableop_resource:	АN
?batch_normalization_27_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_27_fusedbatchnormv3_readvariableop_1_resource:	АD
(conv2d_22_conv2d_readvariableop_resource:АА8
)conv2d_22_biasadd_readvariableop_resource:	А 
batch_normalization_28_scale=
.batch_normalization_28_readvariableop_resource:	АN
?batch_normalization_28_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_28_fusedbatchnormv3_readvariableop_1_resource:	АD
(conv2d_23_conv2d_readvariableop_resource:АА8
)conv2d_23_biasadd_readvariableop_resource:	А 
batch_normalization_29_scale=
.batch_normalization_29_readvariableop_resource:	АN
?batch_normalization_29_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_29_fusedbatchnormv3_readvariableop_1_resource:	АD
(conv2d_24_conv2d_readvariableop_resource:АА8
)conv2d_24_biasadd_readvariableop_resource:	А 
batch_normalization_30_scale=
.batch_normalization_30_readvariableop_resource:	АN
?batch_normalization_30_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_30_fusedbatchnormv3_readvariableop_1_resource:	А;
&dense_8_matmul_readvariableop_resource:АРм6
'dense_8_biasadd_readvariableop_resource:	мG
8batch_normalization_31_batchnorm_readvariableop_resource:	мI
:batch_normalization_31_batchnorm_readvariableop_1_resource:	мI
:batch_normalization_31_batchnorm_readvariableop_2_resource:	м:
&dense_9_matmul_readvariableop_resource:
м╚6
'dense_9_biasadd_readvariableop_resource:	╚G
8batch_normalization_32_batchnorm_readvariableop_resource:	╚I
:batch_normalization_32_batchnorm_readvariableop_1_resource:	╚I
:batch_normalization_32_batchnorm_readvariableop_2_resource:	╚:
'dense_10_matmul_readvariableop_resource:	╚d6
(dense_10_biasadd_readvariableop_resource:dF
8batch_normalization_33_batchnorm_readvariableop_resource:dH
:batch_normalization_33_batchnorm_readvariableop_1_resource:dH
:batch_normalization_33_batchnorm_readvariableop_2_resource:d9
'dense_11_matmul_readvariableop_resource:d6
(dense_11_biasadd_readvariableop_resource:
identityИв6batch_normalization_23/FusedBatchNormV3/ReadVariableOpв8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_23/ReadVariableOpв6batch_normalization_24/FusedBatchNormV3/ReadVariableOpв8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_24/ReadVariableOpв6batch_normalization_25/FusedBatchNormV3/ReadVariableOpв8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_25/ReadVariableOpв6batch_normalization_26/FusedBatchNormV3/ReadVariableOpв8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_26/ReadVariableOpв6batch_normalization_27/FusedBatchNormV3/ReadVariableOpв8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_27/ReadVariableOpв6batch_normalization_28/FusedBatchNormV3/ReadVariableOpв8batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_28/ReadVariableOpв6batch_normalization_29/FusedBatchNormV3/ReadVariableOpв8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_29/ReadVariableOpв6batch_normalization_30/FusedBatchNormV3/ReadVariableOpв8batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_30/ReadVariableOpв/batch_normalization_31/batchnorm/ReadVariableOpв1batch_normalization_31/batchnorm/ReadVariableOp_1в1batch_normalization_31/batchnorm/ReadVariableOp_2в/batch_normalization_32/batchnorm/ReadVariableOpв1batch_normalization_32/batchnorm/ReadVariableOp_1в1batch_normalization_32/batchnorm/ReadVariableOp_2в/batch_normalization_33/batchnorm/ReadVariableOpв1batch_normalization_33/batchnorm/ReadVariableOp_1в1batch_normalization_33/batchnorm/ReadVariableOp_2в conv2d_17/BiasAdd/ReadVariableOpвconv2d_17/Conv2D/ReadVariableOpв conv2d_18/BiasAdd/ReadVariableOpвconv2d_18/Conv2D/ReadVariableOpв conv2d_19/BiasAdd/ReadVariableOpвconv2d_19/Conv2D/ReadVariableOpв conv2d_20/BiasAdd/ReadVariableOpвconv2d_20/Conv2D/ReadVariableOpв conv2d_21/BiasAdd/ReadVariableOpвconv2d_21/Conv2D/ReadVariableOpв conv2d_22/BiasAdd/ReadVariableOpвconv2d_22/Conv2D/ReadVariableOpв conv2d_23/BiasAdd/ReadVariableOpвconv2d_23/Conv2D/ReadVariableOpв conv2d_24/BiasAdd/ReadVariableOpвconv2d_24/Conv2D/ReadVariableOpвdense_10/BiasAdd/ReadVariableOpвdense_10/MatMul/ReadVariableOpвdense_11/BiasAdd/ReadVariableOpвdense_11/MatMul/ReadVariableOpвdense_8/BiasAdd/ReadVariableOpвdense_8/MatMul/ReadVariableOpвdense_9/BiasAdd/ReadVariableOpвdense_9/MatMul/ReadVariableOp│
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_17/Conv2D/ReadVariableOp─
conv2d_17/Conv2DConv2Dinputs'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ии *
paddingVALID*
strides
2
conv2d_17/Conv2Dк
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_17/BiasAdd/ReadVariableOpо
conv2d_17/BiasAddAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ии 2
conv2d_17/BiasAdd{
conv2d_17/ReluReluconv2d_17/BiasAdd:z:0*
T0*1
_output_shapes
:         ии 2
conv2d_17/Relu╣
%batch_normalization_23/ReadVariableOpReadVariableOp.batch_normalization_23_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_23/ReadVariableOpь
6batch_normalization_23/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_23_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_23/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_23_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1┘
'batch_normalization_23/FusedBatchNormV3FusedBatchNormV3conv2d_17/Relu:activations:0batch_normalization_23_scale-batch_normalization_23/ReadVariableOp:value:0>batch_normalization_23/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ии : : : : :*
epsilon%oГ:*
is_training( 2)
'batch_normalization_23/FusedBatchNormV3┤
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*'
_output_shapes
: А*
dtype02!
conv2d_18/Conv2D/ReadVariableOpъ
conv2d_18/Conv2DConv2D+batch_normalization_23/FusedBatchNormV3:y:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ддА*
paddingVALID*
strides
2
conv2d_18/Conv2Dл
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_18/BiasAdd/ReadVariableOpп
conv2d_18/BiasAddAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ддА2
conv2d_18/BiasAdd|
conv2d_18/ReluReluconv2d_18/BiasAdd:z:0*
T0*2
_output_shapes 
:         ддА2
conv2d_18/Relu║
%batch_normalization_24/ReadVariableOpReadVariableOp.batch_normalization_24_readvariableop_resource*
_output_shapes	
:А*
dtype02'
%batch_normalization_24/ReadVariableOpэ
6batch_normalization_24/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_24_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype028
6batch_normalization_24/FusedBatchNormV3/ReadVariableOpє
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02:
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1▐
'batch_normalization_24/FusedBatchNormV3FusedBatchNormV3conv2d_18/Relu:activations:0batch_normalization_24_scale-batch_normalization_24/ReadVariableOp:value:0>batch_normalization_24/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*R
_output_shapes@
>:         ддА:А:А:А:А:*
epsilon%oГ:*
is_training( 2)
'batch_normalization_24/FusedBatchNormV3┘
max_pooling2d_8/MaxPoolMaxPool+batch_normalization_24/FusedBatchNormV3:y:0*2
_output_shapes 
:         ТТА*
ksize
*
paddingSAME*
strides
2
max_pooling2d_8/MaxPoolХ
dropout_14/IdentityIdentity max_pooling2d_8/MaxPool:output:0*
T0*2
_output_shapes 
:         ТТА2
dropout_14/Identity┤
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*'
_output_shapes
:А *
dtype02!
conv2d_19/Conv2D/ReadVariableOp┌
conv2d_19/Conv2DConv2Ddropout_14/Identity:output:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         РР *
paddingVALID*
strides
2
conv2d_19/Conv2Dк
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_19/BiasAdd/ReadVariableOpо
conv2d_19/BiasAddAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         РР 2
conv2d_19/BiasAdd{
conv2d_19/ReluReluconv2d_19/BiasAdd:z:0*
T0*1
_output_shapes
:         РР 2
conv2d_19/Relu╣
%batch_normalization_25/ReadVariableOpReadVariableOp.batch_normalization_25_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_25/ReadVariableOpь
6batch_normalization_25/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_25_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_25/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1┘
'batch_normalization_25/FusedBatchNormV3FusedBatchNormV3conv2d_19/Relu:activations:0batch_normalization_25_scale-batch_normalization_25/ReadVariableOp:value:0>batch_normalization_25/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         РР : : : : :*
epsilon%oГ:*
is_training( 2)
'batch_normalization_25/FusedBatchNormV3┤
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*'
_output_shapes
: А*
dtype02!
conv2d_20/Conv2D/ReadVariableOpъ
conv2d_20/Conv2DConv2D+batch_normalization_25/FusedBatchNormV3:y:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ООА*
paddingVALID*
strides
2
conv2d_20/Conv2Dл
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_20/BiasAdd/ReadVariableOpп
conv2d_20/BiasAddAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ООА2
conv2d_20/BiasAdd|
conv2d_20/ReluReluconv2d_20/BiasAdd:z:0*
T0*2
_output_shapes 
:         ООА2
conv2d_20/Relu║
%batch_normalization_26/ReadVariableOpReadVariableOp.batch_normalization_26_readvariableop_resource*
_output_shapes	
:А*
dtype02'
%batch_normalization_26/ReadVariableOpэ
6batch_normalization_26/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_26_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype028
6batch_normalization_26/FusedBatchNormV3/ReadVariableOpє
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02:
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1▐
'batch_normalization_26/FusedBatchNormV3FusedBatchNormV3conv2d_20/Relu:activations:0batch_normalization_26_scale-batch_normalization_26/ReadVariableOp:value:0>batch_normalization_26/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*R
_output_shapes@
>:         ООА:А:А:А:А:*
epsilon%oГ:*
is_training( 2)
'batch_normalization_26/FusedBatchNormV3╫
max_pooling2d_9/MaxPoolMaxPool+batch_normalization_26/FusedBatchNormV3:y:0*0
_output_shapes
:         GGА*
ksize
*
paddingSAME*
strides
2
max_pooling2d_9/MaxPoolУ
dropout_15/IdentityIdentity max_pooling2d_9/MaxPool:output:0*
T0*0
_output_shapes
:         GGА2
dropout_15/Identity╡
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_21/Conv2D/ReadVariableOp┘
conv2d_21/Conv2DConv2Ddropout_15/Identity:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         CCА*
paddingVALID*
strides
2
conv2d_21/Conv2Dл
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_21/BiasAdd/ReadVariableOpн
conv2d_21/BiasAddAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         CCА2
conv2d_21/BiasAddz
conv2d_21/ReluReluconv2d_21/BiasAdd:z:0*
T0*0
_output_shapes
:         CCА2
conv2d_21/Relu║
%batch_normalization_27/ReadVariableOpReadVariableOp.batch_normalization_27_readvariableop_resource*
_output_shapes	
:А*
dtype02'
%batch_normalization_27/ReadVariableOpэ
6batch_normalization_27/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_27_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype028
6batch_normalization_27/FusedBatchNormV3/ReadVariableOpє
8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_27_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02:
8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1▄
'batch_normalization_27/FusedBatchNormV3FusedBatchNormV3conv2d_21/Relu:activations:0batch_normalization_27_scale-batch_normalization_27/ReadVariableOp:value:0>batch_normalization_27/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         CCА:А:А:А:А:*
epsilon%oГ:*
is_training( 2)
'batch_normalization_27/FusedBatchNormV3╡
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_22/Conv2D/ReadVariableOpш
conv2d_22/Conv2DConv2D+batch_normalization_27/FusedBatchNormV3:y:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ??А*
paddingVALID*
strides
2
conv2d_22/Conv2Dл
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOpн
conv2d_22/BiasAddAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ??А2
conv2d_22/BiasAddz
conv2d_22/ReluReluconv2d_22/BiasAdd:z:0*
T0*0
_output_shapes
:         ??А2
conv2d_22/Relu║
%batch_normalization_28/ReadVariableOpReadVariableOp.batch_normalization_28_readvariableop_resource*
_output_shapes	
:А*
dtype02'
%batch_normalization_28/ReadVariableOpэ
6batch_normalization_28/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_28_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype028
6batch_normalization_28/FusedBatchNormV3/ReadVariableOpє
8batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_28_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02:
8batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1▄
'batch_normalization_28/FusedBatchNormV3FusedBatchNormV3conv2d_22/Relu:activations:0batch_normalization_28_scale-batch_normalization_28/ReadVariableOp:value:0>batch_normalization_28/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         ??А:А:А:А:А:*
epsilon%oГ:*
is_training( 2)
'batch_normalization_28/FusedBatchNormV3┘
max_pooling2d_10/MaxPoolMaxPool+batch_normalization_28/FusedBatchNormV3:y:0*0
_output_shapes
:           А*
ksize
*
paddingSAME*
strides
2
max_pooling2d_10/MaxPoolФ
dropout_16/IdentityIdentity!max_pooling2d_10/MaxPool:output:0*
T0*0
_output_shapes
:           А2
dropout_16/Identity╡
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_23/Conv2D/ReadVariableOp┘
conv2d_23/Conv2DConv2Ddropout_16/Identity:output:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
conv2d_23/Conv2Dл
 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_23/BiasAdd/ReadVariableOpн
conv2d_23/BiasAddAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_23/BiasAddz
conv2d_23/ReluReluconv2d_23/BiasAdd:z:0*
T0*0
_output_shapes
:         А2
conv2d_23/Relu║
%batch_normalization_29/ReadVariableOpReadVariableOp.batch_normalization_29_readvariableop_resource*
_output_shapes	
:А*
dtype02'
%batch_normalization_29/ReadVariableOpэ
6batch_normalization_29/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_29_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype028
6batch_normalization_29/FusedBatchNormV3/ReadVariableOpє
8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_29_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02:
8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1▄
'batch_normalization_29/FusedBatchNormV3FusedBatchNormV3conv2d_23/Relu:activations:0batch_normalization_29_scale-batch_normalization_29/ReadVariableOp:value:0>batch_normalization_29/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2)
'batch_normalization_29/FusedBatchNormV3╡
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_24/Conv2D/ReadVariableOpш
conv2d_24/Conv2DConv2D+batch_normalization_29/FusedBatchNormV3:y:0'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
conv2d_24/Conv2Dл
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_24/BiasAdd/ReadVariableOpн
conv2d_24/BiasAddAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_24/BiasAddz
conv2d_24/ReluReluconv2d_24/BiasAdd:z:0*
T0*0
_output_shapes
:         А2
conv2d_24/Relu║
%batch_normalization_30/ReadVariableOpReadVariableOp.batch_normalization_30_readvariableop_resource*
_output_shapes	
:А*
dtype02'
%batch_normalization_30/ReadVariableOpэ
6batch_normalization_30/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_30_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype028
6batch_normalization_30/FusedBatchNormV3/ReadVariableOpє
8batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_30_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02:
8batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1▄
'batch_normalization_30/FusedBatchNormV3FusedBatchNormV3conv2d_24/Relu:activations:0batch_normalization_30_scale-batch_normalization_30/ReadVariableOp:value:0>batch_normalization_30/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2)
'batch_normalization_30/FusedBatchNormV3┘
max_pooling2d_11/MaxPoolMaxPool+batch_normalization_30/FusedBatchNormV3:y:0*0
_output_shapes
:         А*
ksize
*
paddingSAME*
strides
2
max_pooling2d_11/MaxPoolФ
dropout_17/IdentityIdentity!max_pooling2d_11/MaxPool:output:0*
T0*0
_output_shapes
:         А2
dropout_17/Identitys
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"     И 2
flatten_2/ConstЭ
flatten_2/ReshapeReshapedropout_17/Identity:output:0flatten_2/Const:output:0*
T0*)
_output_shapes
:         АР2
flatten_2/Reshapeи
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*!
_output_shapes
:АРм*
dtype02
dense_8/MatMul/ReadVariableOpа
dense_8/MatMulMatMulflatten_2/Reshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         м2
dense_8/MatMulе
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes	
:м*
dtype02 
dense_8/BiasAdd/ReadVariableOpЮ
dense_8/BiasAddAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         м2
dense_8/BiasAddl
dense_8/ReluReludense_8/BiasAdd:z:0*
T0*(
_output_shapes
:         м2
dense_8/Relu╪
/batch_normalization_31/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_31_batchnorm_readvariableop_resource*
_output_shapes	
:м*
dtype021
/batch_normalization_31/batchnorm/ReadVariableOpХ
&batch_normalization_31/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2(
&batch_normalization_31/batchnorm/add/yх
$batch_normalization_31/batchnorm/addAddV27batch_normalization_31/batchnorm/ReadVariableOp:value:0/batch_normalization_31/batchnorm/add/y:output:0*
T0*
_output_shapes	
:м2&
$batch_normalization_31/batchnorm/addй
&batch_normalization_31/batchnorm/RsqrtRsqrt(batch_normalization_31/batchnorm/add:z:0*
T0*
_output_shapes	
:м2(
&batch_normalization_31/batchnorm/Rsqrt╬
$batch_normalization_31/batchnorm/mulMuldense_8/Relu:activations:0*batch_normalization_31/batchnorm/Rsqrt:y:0*
T0*(
_output_shapes
:         м2&
$batch_normalization_31/batchnorm/mul▐
1batch_normalization_31/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_31_batchnorm_readvariableop_1_resource*
_output_shapes	
:м*
dtype023
1batch_normalization_31/batchnorm/ReadVariableOp_1ф
&batch_normalization_31/batchnorm/mul_1Mul9batch_normalization_31/batchnorm/ReadVariableOp_1:value:0*batch_normalization_31/batchnorm/Rsqrt:y:0*
T0*
_output_shapes	
:м2(
&batch_normalization_31/batchnorm/mul_1▐
1batch_normalization_31/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_31_batchnorm_readvariableop_2_resource*
_output_shapes	
:м*
dtype023
1batch_normalization_31/batchnorm/ReadVariableOp_2р
$batch_normalization_31/batchnorm/subSub9batch_normalization_31/batchnorm/ReadVariableOp_2:value:0*batch_normalization_31/batchnorm/mul_1:z:0*
T0*
_output_shapes	
:м2&
$batch_normalization_31/batchnorm/subр
&batch_normalization_31/batchnorm/add_1AddV2(batch_normalization_31/batchnorm/mul:z:0(batch_normalization_31/batchnorm/sub:z:0*
T0*(
_output_shapes
:         м2(
&batch_normalization_31/batchnorm/add_1Х
dropout_18/IdentityIdentity*batch_normalization_31/batchnorm/add_1:z:0*
T0*(
_output_shapes
:         м2
dropout_18/Identityз
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource* 
_output_shapes
:
м╚*
dtype02
dense_9/MatMul/ReadVariableOpв
dense_9/MatMulMatMuldropout_18/Identity:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚2
dense_9/MatMulе
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype02 
dense_9/BiasAdd/ReadVariableOpЮ
dense_9/BiasAddAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚2
dense_9/BiasAddl
dense_9/ReluReludense_9/BiasAdd:z:0*
T0*(
_output_shapes
:         ╚2
dense_9/Relu╪
/batch_normalization_32/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_32_batchnorm_readvariableop_resource*
_output_shapes	
:╚*
dtype021
/batch_normalization_32/batchnorm/ReadVariableOpХ
&batch_normalization_32/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2(
&batch_normalization_32/batchnorm/add/yх
$batch_normalization_32/batchnorm/addAddV27batch_normalization_32/batchnorm/ReadVariableOp:value:0/batch_normalization_32/batchnorm/add/y:output:0*
T0*
_output_shapes	
:╚2&
$batch_normalization_32/batchnorm/addй
&batch_normalization_32/batchnorm/RsqrtRsqrt(batch_normalization_32/batchnorm/add:z:0*
T0*
_output_shapes	
:╚2(
&batch_normalization_32/batchnorm/Rsqrt╬
$batch_normalization_32/batchnorm/mulMuldense_9/Relu:activations:0*batch_normalization_32/batchnorm/Rsqrt:y:0*
T0*(
_output_shapes
:         ╚2&
$batch_normalization_32/batchnorm/mul▐
1batch_normalization_32/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_32_batchnorm_readvariableop_1_resource*
_output_shapes	
:╚*
dtype023
1batch_normalization_32/batchnorm/ReadVariableOp_1ф
&batch_normalization_32/batchnorm/mul_1Mul9batch_normalization_32/batchnorm/ReadVariableOp_1:value:0*batch_normalization_32/batchnorm/Rsqrt:y:0*
T0*
_output_shapes	
:╚2(
&batch_normalization_32/batchnorm/mul_1▐
1batch_normalization_32/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_32_batchnorm_readvariableop_2_resource*
_output_shapes	
:╚*
dtype023
1batch_normalization_32/batchnorm/ReadVariableOp_2р
$batch_normalization_32/batchnorm/subSub9batch_normalization_32/batchnorm/ReadVariableOp_2:value:0*batch_normalization_32/batchnorm/mul_1:z:0*
T0*
_output_shapes	
:╚2&
$batch_normalization_32/batchnorm/subр
&batch_normalization_32/batchnorm/add_1AddV2(batch_normalization_32/batchnorm/mul:z:0(batch_normalization_32/batchnorm/sub:z:0*
T0*(
_output_shapes
:         ╚2(
&batch_normalization_32/batchnorm/add_1Х
dropout_19/IdentityIdentity*batch_normalization_32/batchnorm/add_1:z:0*
T0*(
_output_shapes
:         ╚2
dropout_19/Identityй
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes
:	╚d*
dtype02 
dense_10/MatMul/ReadVariableOpд
dense_10/MatMulMatMuldropout_19/Identity:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_10/MatMulз
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_10/BiasAdd/ReadVariableOpб
dense_10/BiasAddAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_10/BiasAddn
dense_10/ReluReludense_10/BiasAdd:z:0*
T0*'
_output_shapes
:         d2
dense_10/Relu╫
/batch_normalization_33/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_33_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype021
/batch_normalization_33/batchnorm/ReadVariableOpХ
&batch_normalization_33/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2(
&batch_normalization_33/batchnorm/add/yф
$batch_normalization_33/batchnorm/addAddV27batch_normalization_33/batchnorm/ReadVariableOp:value:0/batch_normalization_33/batchnorm/add/y:output:0*
T0*
_output_shapes
:d2&
$batch_normalization_33/batchnorm/addи
&batch_normalization_33/batchnorm/RsqrtRsqrt(batch_normalization_33/batchnorm/add:z:0*
T0*
_output_shapes
:d2(
&batch_normalization_33/batchnorm/Rsqrt╬
$batch_normalization_33/batchnorm/mulMuldense_10/Relu:activations:0*batch_normalization_33/batchnorm/Rsqrt:y:0*
T0*'
_output_shapes
:         d2&
$batch_normalization_33/batchnorm/mul▌
1batch_normalization_33/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_33_batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype023
1batch_normalization_33/batchnorm/ReadVariableOp_1у
&batch_normalization_33/batchnorm/mul_1Mul9batch_normalization_33/batchnorm/ReadVariableOp_1:value:0*batch_normalization_33/batchnorm/Rsqrt:y:0*
T0*
_output_shapes
:d2(
&batch_normalization_33/batchnorm/mul_1▌
1batch_normalization_33/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_33_batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype023
1batch_normalization_33/batchnorm/ReadVariableOp_2▀
$batch_normalization_33/batchnorm/subSub9batch_normalization_33/batchnorm/ReadVariableOp_2:value:0*batch_normalization_33/batchnorm/mul_1:z:0*
T0*
_output_shapes
:d2&
$batch_normalization_33/batchnorm/sub▀
&batch_normalization_33/batchnorm/add_1AddV2(batch_normalization_33/batchnorm/mul:z:0(batch_normalization_33/batchnorm/sub:z:0*
T0*'
_output_shapes
:         d2(
&batch_normalization_33/batchnorm/add_1Ф
dropout_20/IdentityIdentity*batch_normalization_33/batchnorm/add_1:z:0*
T0*'
_output_shapes
:         d2
dropout_20/Identityи
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_11/MatMul/ReadVariableOpд
dense_11/MatMulMatMuldropout_20/Identity:output:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_11/MatMulз
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_11/BiasAdd/ReadVariableOpб
dense_11/BiasAddAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_11/BiasAddw
dense_11/SoftmaxSoftmaxdense_11/BiasAdd:z:0*
T0*'
_output_shapes
:         2
dense_11/Softmax╠
IdentityIdentitydense_11/Softmax:softmax:07^batch_normalization_23/FusedBatchNormV3/ReadVariableOp9^batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_23/ReadVariableOp7^batch_normalization_24/FusedBatchNormV3/ReadVariableOp9^batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_24/ReadVariableOp7^batch_normalization_25/FusedBatchNormV3/ReadVariableOp9^batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_25/ReadVariableOp7^batch_normalization_26/FusedBatchNormV3/ReadVariableOp9^batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_26/ReadVariableOp7^batch_normalization_27/FusedBatchNormV3/ReadVariableOp9^batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_27/ReadVariableOp7^batch_normalization_28/FusedBatchNormV3/ReadVariableOp9^batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_28/ReadVariableOp7^batch_normalization_29/FusedBatchNormV3/ReadVariableOp9^batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_29/ReadVariableOp7^batch_normalization_30/FusedBatchNormV3/ReadVariableOp9^batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_30/ReadVariableOp0^batch_normalization_31/batchnorm/ReadVariableOp2^batch_normalization_31/batchnorm/ReadVariableOp_12^batch_normalization_31/batchnorm/ReadVariableOp_20^batch_normalization_32/batchnorm/ReadVariableOp2^batch_normalization_32/batchnorm/ReadVariableOp_12^batch_normalization_32/batchnorm/ReadVariableOp_20^batch_normalization_33/batchnorm/ReadVariableOp2^batch_normalization_33/batchnorm/ReadVariableOp_12^batch_normalization_33/batchnorm/ReadVariableOp_2!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*┌
_input_shapes╚
┼:         мм: : : : : : : : :А: : : : : : : : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : : : : : : : : : : : : : : : : 2p
6batch_normalization_23/FusedBatchNormV3/ReadVariableOp6batch_normalization_23/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_18batch_normalization_23/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_23/ReadVariableOp%batch_normalization_23/ReadVariableOp2p
6batch_normalization_24/FusedBatchNormV3/ReadVariableOp6batch_normalization_24/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_18batch_normalization_24/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_24/ReadVariableOp%batch_normalization_24/ReadVariableOp2p
6batch_normalization_25/FusedBatchNormV3/ReadVariableOp6batch_normalization_25/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_18batch_normalization_25/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_25/ReadVariableOp%batch_normalization_25/ReadVariableOp2p
6batch_normalization_26/FusedBatchNormV3/ReadVariableOp6batch_normalization_26/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_18batch_normalization_26/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_26/ReadVariableOp%batch_normalization_26/ReadVariableOp2p
6batch_normalization_27/FusedBatchNormV3/ReadVariableOp6batch_normalization_27/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_18batch_normalization_27/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_27/ReadVariableOp%batch_normalization_27/ReadVariableOp2p
6batch_normalization_28/FusedBatchNormV3/ReadVariableOp6batch_normalization_28/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_28/FusedBatchNormV3/ReadVariableOp_18batch_normalization_28/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_28/ReadVariableOp%batch_normalization_28/ReadVariableOp2p
6batch_normalization_29/FusedBatchNormV3/ReadVariableOp6batch_normalization_29/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_18batch_normalization_29/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_29/ReadVariableOp%batch_normalization_29/ReadVariableOp2p
6batch_normalization_30/FusedBatchNormV3/ReadVariableOp6batch_normalization_30/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_30/FusedBatchNormV3/ReadVariableOp_18batch_normalization_30/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_30/ReadVariableOp%batch_normalization_30/ReadVariableOp2b
/batch_normalization_31/batchnorm/ReadVariableOp/batch_normalization_31/batchnorm/ReadVariableOp2f
1batch_normalization_31/batchnorm/ReadVariableOp_11batch_normalization_31/batchnorm/ReadVariableOp_12f
1batch_normalization_31/batchnorm/ReadVariableOp_21batch_normalization_31/batchnorm/ReadVariableOp_22b
/batch_normalization_32/batchnorm/ReadVariableOp/batch_normalization_32/batchnorm/ReadVariableOp2f
1batch_normalization_32/batchnorm/ReadVariableOp_11batch_normalization_32/batchnorm/ReadVariableOp_12f
1batch_normalization_32/batchnorm/ReadVariableOp_21batch_normalization_32/batchnorm/ReadVariableOp_22b
/batch_normalization_33/batchnorm/ReadVariableOp/batch_normalization_33/batchnorm/ReadVariableOp2f
1batch_normalization_33/batchnorm/ReadVariableOp_11batch_normalization_33/batchnorm/ReadVariableOp_12f
1batch_normalization_33/batchnorm/ReadVariableOp_21batch_normalization_33/batchnorm/ReadVariableOp_22D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         мм
 
_user_specified_nameinputs: 

_output_shapes
: :!	

_output_shapes	
:А: 

_output_shapes
: :!

_output_shapes	
:А:!

_output_shapes	
:А:!!

_output_shapes	
:А:!'

_output_shapes	
:А:!-

_output_shapes	
:А
ё
c
*__inference_dropout_15_layer_call_fn_34039

inputs
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         GGА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_313002
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         GGА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         GGА22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         GGА
 
_user_specified_nameinputs
В
d
E__inference_dropout_16_layer_call_and_return_conditional_losses_31171

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:           А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╩
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:           А*
dtype0*
seedА2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y╟
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:           А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:           А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:           А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:           А:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
┤
Т
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_31130

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1ь
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         А:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:!

_output_shapes	
:А
Ц
c
E__inference_dropout_17_layer_call_and_return_conditional_losses_30653

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:         А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
А
ю
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_34626

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╝
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3╚
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         А:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:!

_output_shapes	
:А
Є
c
E__inference_dropout_20_layer_call_and_return_conditional_losses_35020

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:         d2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         d2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         d:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
Е
╠
,__inference_sequential_5_layer_call_fn_32112
conv2d_17_input!
unknown: 
	unknown_0: 
	unknown_1
	unknown_2: 
	unknown_3: 
	unknown_4: $
	unknown_5: А
	unknown_6:	А
	unknown_7
	unknown_8:	А
	unknown_9:	А

unknown_10:	А%

unknown_11:А 

unknown_12: 

unknown_13

unknown_14: 

unknown_15: 

unknown_16: %

unknown_17: А

unknown_18:	А

unknown_19

unknown_20:	А

unknown_21:	А

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25

unknown_26:	А

unknown_27:	А

unknown_28:	А&

unknown_29:АА

unknown_30:	А

unknown_31

unknown_32:	А

unknown_33:	А

unknown_34:	А&

unknown_35:АА

unknown_36:	А

unknown_37

unknown_38:	А

unknown_39:	А

unknown_40:	А&

unknown_41:АА

unknown_42:	А

unknown_43

unknown_44:	А

unknown_45:	А

unknown_46:	А

unknown_47:АРм

unknown_48:	м

unknown_49:	м

unknown_50:	м

unknown_51:	м

unknown_52:
м╚

unknown_53:	╚

unknown_54:	╚

unknown_55:	╚

unknown_56:	╚

unknown_57:	╚d

unknown_58:d

unknown_59:d

unknown_60:d

unknown_61:d

unknown_62:d

unknown_63:
identityИвStatefulPartitionedCall╬	
StatefulPartitionedCallStatefulPartitionedCallconv2d_17_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63*M
TinF
D2B*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *E
_read_only_resource_inputs'
%#
 "%&(+,.12567:;<?@A*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_318442
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*┌
_input_shapes╚
┼:         мм: : : : : : : : :А: : : : : : : : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:         мм
)
_user_specified_nameconv2d_17_input: 

_output_shapes
: :!	

_output_shapes	
:А: 

_output_shapes
: :!

_output_shapes	
:А:!

_output_shapes	
:А:!!

_output_shapes	
:А:!'

_output_shapes	
:А:!-

_output_shapes	
:А
└╞
ч
G__inference_sequential_5_layer_call_and_return_conditional_losses_31844

inputs)
conv2d_17_31678: 
conv2d_17_31680:  
batch_normalization_23_31683*
batch_normalization_23_31685: *
batch_normalization_23_31687: *
batch_normalization_23_31689: *
conv2d_18_31692: А
conv2d_18_31694:	А 
batch_normalization_24_31697+
batch_normalization_24_31699:	А+
batch_normalization_24_31701:	А+
batch_normalization_24_31703:	А*
conv2d_19_31708:А 
conv2d_19_31710:  
batch_normalization_25_31713*
batch_normalization_25_31715: *
batch_normalization_25_31717: *
batch_normalization_25_31719: *
conv2d_20_31722: А
conv2d_20_31724:	А 
batch_normalization_26_31727+
batch_normalization_26_31729:	А+
batch_normalization_26_31731:	А+
batch_normalization_26_31733:	А+
conv2d_21_31738:АА
conv2d_21_31740:	А 
batch_normalization_27_31743+
batch_normalization_27_31745:	А+
batch_normalization_27_31747:	А+
batch_normalization_27_31749:	А+
conv2d_22_31752:АА
conv2d_22_31754:	А 
batch_normalization_28_31757+
batch_normalization_28_31759:	А+
batch_normalization_28_31761:	А+
batch_normalization_28_31763:	А+
conv2d_23_31768:АА
conv2d_23_31770:	А 
batch_normalization_29_31773+
batch_normalization_29_31775:	А+
batch_normalization_29_31777:	А+
batch_normalization_29_31779:	А+
conv2d_24_31782:АА
conv2d_24_31784:	А 
batch_normalization_30_31787+
batch_normalization_30_31789:	А+
batch_normalization_30_31791:	А+
batch_normalization_30_31793:	А"
dense_8_31799:АРм
dense_8_31801:	м+
batch_normalization_31_31804:	м+
batch_normalization_31_31806:	м+
batch_normalization_31_31808:	м!
dense_9_31812:
м╚
dense_9_31814:	╚+
batch_normalization_32_31817:	╚+
batch_normalization_32_31819:	╚+
batch_normalization_32_31821:	╚!
dense_10_31825:	╚d
dense_10_31827:d*
batch_normalization_33_31830:d*
batch_normalization_33_31832:d*
batch_normalization_33_31834:d 
dense_11_31838:d
dense_11_31840:
identityИв.batch_normalization_23/StatefulPartitionedCallв.batch_normalization_24/StatefulPartitionedCallв.batch_normalization_25/StatefulPartitionedCallв.batch_normalization_26/StatefulPartitionedCallв.batch_normalization_27/StatefulPartitionedCallв.batch_normalization_28/StatefulPartitionedCallв.batch_normalization_29/StatefulPartitionedCallв.batch_normalization_30/StatefulPartitionedCallв.batch_normalization_31/StatefulPartitionedCallв.batch_normalization_32/StatefulPartitionedCallв.batch_normalization_33/StatefulPartitionedCallв!conv2d_17/StatefulPartitionedCallв!conv2d_18/StatefulPartitionedCallв!conv2d_19/StatefulPartitionedCallв!conv2d_20/StatefulPartitionedCallв!conv2d_21/StatefulPartitionedCallв!conv2d_22/StatefulPartitionedCallв!conv2d_23/StatefulPartitionedCallв!conv2d_24/StatefulPartitionedCallв dense_10/StatefulPartitionedCallв dense_11/StatefulPartitionedCallвdense_8/StatefulPartitionedCallвdense_9/StatefulPartitionedCallв"dropout_14/StatefulPartitionedCallв"dropout_15/StatefulPartitionedCallв"dropout_16/StatefulPartitionedCallв"dropout_17/StatefulPartitionedCallв"dropout_18/StatefulPartitionedCallв"dropout_19/StatefulPartitionedCallв"dropout_20/StatefulPartitionedCallг
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_17_31678conv2d_17_31680*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ии *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_302902#
!conv2d_17/StatefulPartitionedCall┼
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0batch_normalization_23_31683batch_normalization_23_31685batch_normalization_23_31687batch_normalization_23_31689*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ии *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_3151720
.batch_normalization_23/StatefulPartitionedCall╒
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0conv2d_18_31692conv2d_18_31694*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ддА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_303332#
!conv2d_18/StatefulPartitionedCall╞
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0batch_normalization_24_31697batch_normalization_24_31699batch_normalization_24_31701batch_normalization_24_31703*
Tin	
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ддА*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_3146420
.batch_normalization_24/StatefulPartitionedCallз
max_pooling2d_8/PartitionedCallPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ТТА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_290722!
max_pooling2d_8/PartitionedCallб
"dropout_14/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ТТА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_14_layer_call_and_return_conditional_losses_314292$
"dropout_14/StatefulPartitionedCall╚
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall+dropout_14/StatefulPartitionedCall:output:0conv2d_19_31708conv2d_19_31710*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         РР *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_303842#
!conv2d_19/StatefulPartitionedCall┼
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0batch_normalization_25_31713batch_normalization_25_31715batch_normalization_25_31717batch_normalization_25_31719*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         РР *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_3138820
.batch_normalization_25/StatefulPartitionedCall╒
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0conv2d_20_31722conv2d_20_31724*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ООА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_304272#
!conv2d_20/StatefulPartitionedCall╞
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0batch_normalization_26_31727batch_normalization_26_31729batch_normalization_26_31731batch_normalization_26_31733*
Tin	
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ООА*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_3133520
.batch_normalization_26/StatefulPartitionedCallе
max_pooling2d_9/PartitionedCallPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         GGА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_293282!
max_pooling2d_9/PartitionedCall─
"dropout_15/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0#^dropout_14/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         GGА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_313002$
"dropout_15/StatefulPartitionedCall╟
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall+dropout_15/StatefulPartitionedCall:output:0conv2d_21_31738conv2d_21_31740*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         CCА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_304782#
!conv2d_21/StatefulPartitionedCall─
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0batch_normalization_27_31743batch_normalization_27_31745batch_normalization_27_31747batch_normalization_27_31749*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         CCА*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_3125920
.batch_normalization_27/StatefulPartitionedCall╙
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0conv2d_22_31752conv2d_22_31754*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_305212#
!conv2d_22/StatefulPartitionedCall─
.batch_normalization_28/StatefulPartitionedCallStatefulPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0batch_normalization_28_31757batch_normalization_28_31759batch_normalization_28_31761batch_normalization_28_31763*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ??А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_3120620
.batch_normalization_28/StatefulPartitionedCallи
 max_pooling2d_10/PartitionedCallPartitionedCall7batch_normalization_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_295842"
 max_pooling2d_10/PartitionedCall┼
"dropout_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0#^dropout_15/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_16_layer_call_and_return_conditional_losses_311712$
"dropout_16/StatefulPartitionedCall╟
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall+dropout_16/StatefulPartitionedCall:output:0conv2d_23_31768conv2d_23_31770*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_305722#
!conv2d_23/StatefulPartitionedCall─
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0batch_normalization_29_31773batch_normalization_29_31775batch_normalization_29_31777batch_normalization_29_31779*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_3113020
.batch_normalization_29/StatefulPartitionedCall╙
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0conv2d_24_31782conv2d_24_31784*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_306152#
!conv2d_24/StatefulPartitionedCall─
.batch_normalization_30/StatefulPartitionedCallStatefulPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0batch_normalization_30_31787batch_normalization_30_31789batch_normalization_30_31791batch_normalization_30_31793*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_3107720
.batch_normalization_30/StatefulPartitionedCallи
 max_pooling2d_11/PartitionedCallPartitionedCall7batch_normalization_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_298402"
 max_pooling2d_11/PartitionedCall┼
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0#^dropout_16/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_17_layer_call_and_return_conditional_losses_310422$
"dropout_17/StatefulPartitionedCallА
flatten_2/PartitionedCallPartitionedCall+dropout_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         АР* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_306612
flatten_2/PartitionedCallм
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_8_31799dense_8_31801*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_306742!
dense_8/StatefulPartitionedCallЫ
.batch_normalization_31/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0batch_normalization_31_31804batch_normalization_31_31806batch_normalization_31_31808*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_2992020
.batch_normalization_31/StatefulPartitionedCall╦
"dropout_18/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_31/StatefulPartitionedCall:output:0#^dropout_17/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_310032$
"dropout_18/StatefulPartitionedCall╡
dense_9/StatefulPartitionedCallStatefulPartitionedCall+dropout_18/StatefulPartitionedCall:output:0dense_9_31812dense_9_31814*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_307052!
dense_9/StatefulPartitionedCallЫ
.batch_normalization_32/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0batch_normalization_32_31817batch_normalization_32_31819batch_normalization_32_31821*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_32_layer_call_and_return_conditional_losses_3006220
.batch_normalization_32/StatefulPartitionedCall╦
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_32/StatefulPartitionedCall:output:0#^dropout_18/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_309702$
"dropout_19/StatefulPartitionedCall╣
 dense_10/StatefulPartitionedCallStatefulPartitionedCall+dropout_19/StatefulPartitionedCall:output:0dense_10_31825dense_10_31827*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_307362"
 dense_10/StatefulPartitionedCallЫ
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0batch_normalization_33_31830batch_normalization_33_31832batch_normalization_33_31834*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_33_layer_call_and_return_conditional_losses_3020420
.batch_normalization_33/StatefulPartitionedCall╩
"dropout_20/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0#^dropout_19/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_20_layer_call_and_return_conditional_losses_309372$
"dropout_20/StatefulPartitionedCall╣
 dense_11/StatefulPartitionedCallStatefulPartitionedCall+dropout_20/StatefulPartitionedCall:output:0dense_11_31838dense_11_31840*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_307672"
 dense_11/StatefulPartitionedCall┼

IdentityIdentity)dense_11/StatefulPartitionedCall:output:0/^batch_normalization_23/StatefulPartitionedCall/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall/^batch_normalization_28/StatefulPartitionedCall/^batch_normalization_29/StatefulPartitionedCall/^batch_normalization_30/StatefulPartitionedCall/^batch_normalization_31/StatefulPartitionedCall/^batch_normalization_32/StatefulPartitionedCall/^batch_normalization_33/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall#^dropout_16/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall#^dropout_20/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*┌
_input_shapes╚
┼:         мм: : : : : : : : :А: : : : : : : : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2`
.batch_normalization_28/StatefulPartitionedCall.batch_normalization_28/StatefulPartitionedCall2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2`
.batch_normalization_30/StatefulPartitionedCall.batch_normalization_30/StatefulPartitionedCall2`
.batch_normalization_31/StatefulPartitionedCall.batch_normalization_31/StatefulPartitionedCall2`
.batch_normalization_32/StatefulPartitionedCall.batch_normalization_32/StatefulPartitionedCall2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2H
"dropout_14/StatefulPartitionedCall"dropout_14/StatefulPartitionedCall2H
"dropout_15/StatefulPartitionedCall"dropout_15/StatefulPartitionedCall2H
"dropout_16/StatefulPartitionedCall"dropout_16/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall2H
"dropout_18/StatefulPartitionedCall"dropout_18/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall2H
"dropout_20/StatefulPartitionedCall"dropout_20/StatefulPartitionedCall:Y U
1
_output_shapes
:         мм
 
_user_specified_nameinputs: 

_output_shapes
: :!	

_output_shapes	
:А: 

_output_shapes
: :!

_output_shapes	
:А:!

_output_shapes	
:А:!!

_output_shapes	
:А:!'

_output_shapes	
:А:!-

_output_shapes	
:А
№
Т
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_29654

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
А
├
,__inference_sequential_5_layer_call_fn_32728

inputs!
unknown: 
	unknown_0: 
	unknown_1
	unknown_2: 
	unknown_3: 
	unknown_4: $
	unknown_5: А
	unknown_6:	А
	unknown_7
	unknown_8:	А
	unknown_9:	А

unknown_10:	А%

unknown_11:А 

unknown_12: 

unknown_13

unknown_14: 

unknown_15: 

unknown_16: %

unknown_17: А

unknown_18:	А

unknown_19

unknown_20:	А

unknown_21:	А

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25

unknown_26:	А

unknown_27:	А

unknown_28:	А&

unknown_29:АА

unknown_30:	А

unknown_31

unknown_32:	А

unknown_33:	А

unknown_34:	А&

unknown_35:АА

unknown_36:	А

unknown_37

unknown_38:	А

unknown_39:	А

unknown_40:	А&

unknown_41:АА

unknown_42:	А

unknown_43

unknown_44:	А

unknown_45:	А

unknown_46:	А

unknown_47:АРм

unknown_48:	м

unknown_49:	м

unknown_50:	м

unknown_51:	м

unknown_52:
м╚

unknown_53:	╚

unknown_54:	╚

unknown_55:	╚

unknown_56:	╚

unknown_57:	╚d

unknown_58:d

unknown_59:d

unknown_60:d

unknown_61:d

unknown_62:d

unknown_63:
identityИвStatefulPartitionedCall█	
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63*M
TinF
D2B*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *[
_read_only_resource_inputs=
;9
 "#$%&()*+,./0123456789:;<=>?@A*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_307742
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*┌
_input_shapes╚
┼:         мм: : : : : : : : :А: : : : : : : : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         мм
 
_user_specified_nameinputs: 

_output_shapes
: :!	

_output_shapes	
:А: 

_output_shapes
: :!

_output_shapes	
:А:!

_output_shapes	
:А:!!

_output_shapes	
:А:!'

_output_shapes	
:А:!-

_output_shapes	
:А
Ш
А
D__inference_conv2d_22_layer_call_and_return_conditional_losses_30521

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ??А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЕ
BiasAddAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ??А2	
BiasAdd\
ReluReluBiasAdd:z:0*
T0*0
_output_shapes
:         ??А2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ??А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         CCА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         CCА
 
_user_specified_nameinputs
у
╗
6__inference_batch_normalization_32_layer_call_fn_34829

inputs
unknown:	╚
	unknown_0:	╚
	unknown_1:	╚
identityИвStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_32_layer_call_and_return_conditional_losses_300092
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         ╚2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:         ╚: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs
░

ў
B__inference_dense_8_layer_call_and_return_conditional_losses_34701

inputs3
matmul_readvariableop_resource:АРм.
biasadd_readvariableop_resource:	м
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpР
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:АРм*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         м2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:м*
dtype02
BiasAdd/ReadVariableOp~
BiasAddAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         м2	
BiasAddT
ReluReluBiasAdd:z:0*
T0*(
_output_shapes
:         м2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         м2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         АР: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         АР
 
_user_specified_nameinputs
Т
d
E__inference_dropout_14_layer_call_and_return_conditional_losses_31429

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Const~
dropout/MulMulinputsdropout/Const:output:0*
T0*2
_output_shapes 
:         ТТА2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╠
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*2
_output_shapes 
:         ТТА*
dtype0*
seedА2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y╔
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*2
_output_shapes 
:         ТТА2
dropout/GreaterEqualК
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*2
_output_shapes 
:         ТТА2
dropout/CastЕ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*2
_output_shapes 
:         ТТА2
dropout/Mul_1p
IdentityIdentitydropout/Mul_1:z:0*
T0*2
_output_shapes 
:         ТТА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         ТТА:Z V
2
_output_shapes 
:         ТТА
 
_user_specified_nameinputs
В
d
E__inference_dropout_15_layer_call_and_return_conditional_losses_34056

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         GGА2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╩
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         GGА*
dtype0*
seedА2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y╟
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         GGА2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         GGА2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         GGА2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         GGА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         GGА:X T
0
_output_shapes
:         GGА
 
_user_specified_nameinputs
З	
╟
6__inference_batch_normalization_23_layer_call_fn_33475

inputs
unknown
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_288432
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs: 

_output_shapes
: 
╟
╟
6__inference_batch_normalization_25_layer_call_fn_33808

inputs
unknown
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         РР *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_304062
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         РР 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         РР : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         РР 
 
_user_specified_nameinputs: 

_output_shapes
: 
И
ю
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_34012

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╛
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*R
_output_shapes@
>:         ООА:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3╩
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*2
_output_shapes 
:         ООА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         ООА:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:Z V
2
_output_shapes 
:         ООА
 
_user_specified_nameinputs:!

_output_shapes	
:А
═
б
)__inference_conv2d_22_layer_call_fn_34205

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_305212
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ??А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         CCА: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         CCА
 
_user_specified_nameinputs
Р	
╩
6__inference_batch_normalization_27_layer_call_fn_34089

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCall╕
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_293552
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
Я
Ц
(__inference_dense_10_layer_call_fn_34924

inputs
unknown:	╚d
	unknown_0:d
identityИвStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_307362
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ╚: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs
с
╗
6__inference_batch_normalization_31_layer_call_fn_34723

inputs
unknown:	м
	unknown_0:	м
	unknown_1:	м
identityИвStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_299202
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         м2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:         м: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
Ю
c
E__inference_dropout_14_layer_call_and_return_conditional_losses_33737

inputs

identity_1e
IdentityIdentityinputs*
T0*2
_output_shapes 
:         ТТА2

Identityt

Identity_1IdentityIdentity:output:0*
T0*2
_output_shapes 
:         ТТА2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         ТТА:Z V
2
_output_shapes 
:         ТТА
 
_user_specified_nameinputs
╧
▀
Q__inference_batch_normalization_32_layer_call_and_return_conditional_losses_30009

inputs0
!batchnorm_readvariableop_resource:	╚2
#batchnorm_readvariableop_1_resource:	╚2
#batchnorm_readvariableop_2_resource:	╚
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2У
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:╚*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yЙ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:╚2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:╚2
batchnorm/Rsqrtu
batchnorm/mulMulinputsbatchnorm/Rsqrt:y:0*
T0*(
_output_shapes
:         ╚2
batchnorm/mulЩ
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:╚*
dtype02
batchnorm/ReadVariableOp_1И
batchnorm/mul_1Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/Rsqrt:y:0*
T0*
_output_shapes	
:╚2
batchnorm/mul_1Щ
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:╚*
dtype02
batchnorm/ReadVariableOp_2Д
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_1:z:0*
T0*
_output_shapes	
:╚2
batchnorm/subД
batchnorm/add_1AddV2batchnorm/mul:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         ╚2
batchnorm/add_1╜
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2*
T0*(
_output_shapes
:         ╚2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:         ╚: : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_2:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs
д
Ш
'__inference_dense_8_layer_call_fn_34690

inputs
unknown:АРм
	unknown_0:	м
identityИвStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_306742
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         м2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         АР: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:         АР
 
_user_specified_nameinputs
ъ
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_30661

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"     И 2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         АР2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         АР2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
е

ї
C__inference_dense_10_layer_call_and_return_conditional_losses_34935

inputs1
matmul_readvariableop_resource:	╚d-
biasadd_readvariableop_resource:d
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	╚d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp}
BiasAddAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2	
BiasAddS
ReluReluBiasAdd:z:0*
T0*'
_output_shapes
:         d2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ╚: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs
┤
Т
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_34196

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         CCА:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1ь
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*0
_output_shapes
:         CCА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         CCА:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:         CCА
 
_user_specified_nameinputs:!

_output_shapes	
:А
═
б
)__inference_conv2d_23_layer_call_fn_34372

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_305722
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
Ь
■
D__inference_conv2d_19_layer_call_and_return_conditional_losses_30384

inputs9
conv2d_readvariableop_resource:А -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:А *
dtype02
Conv2D/ReadVariableOpж
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         РР *
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpЖ
BiasAddAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         РР 2	
BiasAdd]
ReluReluBiasAdd:z:0*
T0*1
_output_shapes
:         РР 2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         РР 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         ТТА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:         ТТА
 
_user_specified_nameinputs
№
Т
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_29520

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
╚
ю
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_33671

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╬
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
а
 
D__inference_conv2d_20_layer_call_and_return_conditional_losses_30427

inputs9
conv2d_readvariableop_resource: А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
: А*
dtype02
Conv2D/ReadVariableOpз
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ООА*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЗ
BiasAddAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ООА2	
BiasAdd^
ReluReluBiasAdd:z:0*
T0*2
_output_shapes 
:         ООА2
Reluв
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*2
_output_shapes 
:         ООА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         РР : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         РР 
 
_user_specified_nameinputs
В
d
E__inference_dropout_17_layer_call_and_return_conditional_losses_31042

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╩
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0*
seedА2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y╟
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╧
▀
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_29867

inputs0
!batchnorm_readvariableop_resource:	м2
#batchnorm_readvariableop_1_resource:	м2
#batchnorm_readvariableop_2_resource:	м
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2У
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:м*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yЙ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:м2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:м2
batchnorm/Rsqrtu
batchnorm/mulMulinputsbatchnorm/Rsqrt:y:0*
T0*(
_output_shapes
:         м2
batchnorm/mulЩ
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:м*
dtype02
batchnorm/ReadVariableOp_1И
batchnorm/mul_1Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/Rsqrt:y:0*
T0*
_output_shapes	
:м2
batchnorm/mul_1Щ
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:м*
dtype02
batchnorm/ReadVariableOp_2Д
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_1:z:0*
T0*
_output_shapes	
:м2
batchnorm/subД
batchnorm/add_1AddV2batchnorm/mul:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         м2
batchnorm/add_1╜
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2*
T0*(
_output_shapes
:         м2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:         м: : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_2:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
й

Ї
C__inference_dense_11_layer_call_and_return_conditional_losses_30767

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp}
BiasAddAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdd\
SoftmaxSoftmaxBiasAdd:z:0*
T0*'
_output_shapes
:         2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
╝
Т
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_31335

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╠
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*R
_output_shapes@
>:         ООА:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1ю
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*2
_output_shapes 
:         ООА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         ООА:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:Z V
2
_output_shapes 
:         ООА
 
_user_specified_nameinputs:!

_output_shapes	
:А
┼
F
*__inference_dropout_18_layer_call_fn_34776

inputs
identity╟
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_306922
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         м2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         м:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
м

Ў
B__inference_dense_9_layer_call_and_return_conditional_losses_30705

inputs2
matmul_readvariableop_resource:
м╚.
biasadd_readvariableop_resource:	╚
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
м╚*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype02
BiasAdd/ReadVariableOp~
BiasAddAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚2	
BiasAddT
ReluReluBiasAdd:z:0*
T0*(
_output_shapes
:         ╚2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         ╚2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         м: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
╤
c
*__inference_dropout_18_layer_call_fn_34781

inputs
identityИвStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_310032
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         м2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         м22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
с
╗
6__inference_batch_normalization_32_layer_call_fn_34840

inputs
unknown:	╚
	unknown_0:	╚
	unknown_1:	╚
identityИвStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_32_layer_call_and_return_conditional_losses_300622
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         ╚2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:         ╚: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs
╝
Т
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_34029

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╠
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*R
_output_shapes@
>:         ООА:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1ю
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*2
_output_shapes 
:         ООА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         ООА:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:Z V
2
_output_shapes 
:         ООА
 
_user_specified_nameinputs:!

_output_shapes	
:А
╞
╩
6__inference_batch_normalization_29_layer_call_fn_34435

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_311302
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         А:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:!

_output_shapes	
:А
Ю╢
╩D
!__inference__traced_restore_35699
file_prefix;
!assignvariableop_conv2d_17_kernel: /
!assignvariableop_1_conv2d_17_bias: <
.assignvariableop_2_batch_normalization_23_beta: C
5assignvariableop_3_batch_normalization_23_moving_mean: G
9assignvariableop_4_batch_normalization_23_moving_variance: >
#assignvariableop_5_conv2d_18_kernel: А0
!assignvariableop_6_conv2d_18_bias:	А=
.assignvariableop_7_batch_normalization_24_beta:	АD
5assignvariableop_8_batch_normalization_24_moving_mean:	АH
9assignvariableop_9_batch_normalization_24_moving_variance:	А?
$assignvariableop_10_conv2d_19_kernel:А 0
"assignvariableop_11_conv2d_19_bias: =
/assignvariableop_12_batch_normalization_25_beta: D
6assignvariableop_13_batch_normalization_25_moving_mean: H
:assignvariableop_14_batch_normalization_25_moving_variance: ?
$assignvariableop_15_conv2d_20_kernel: А1
"assignvariableop_16_conv2d_20_bias:	А>
/assignvariableop_17_batch_normalization_26_beta:	АE
6assignvariableop_18_batch_normalization_26_moving_mean:	АI
:assignvariableop_19_batch_normalization_26_moving_variance:	А@
$assignvariableop_20_conv2d_21_kernel:АА1
"assignvariableop_21_conv2d_21_bias:	А>
/assignvariableop_22_batch_normalization_27_beta:	АE
6assignvariableop_23_batch_normalization_27_moving_mean:	АI
:assignvariableop_24_batch_normalization_27_moving_variance:	А@
$assignvariableop_25_conv2d_22_kernel:АА1
"assignvariableop_26_conv2d_22_bias:	А>
/assignvariableop_27_batch_normalization_28_beta:	АE
6assignvariableop_28_batch_normalization_28_moving_mean:	АI
:assignvariableop_29_batch_normalization_28_moving_variance:	А@
$assignvariableop_30_conv2d_23_kernel:АА1
"assignvariableop_31_conv2d_23_bias:	А>
/assignvariableop_32_batch_normalization_29_beta:	АE
6assignvariableop_33_batch_normalization_29_moving_mean:	АI
:assignvariableop_34_batch_normalization_29_moving_variance:	А@
$assignvariableop_35_conv2d_24_kernel:АА1
"assignvariableop_36_conv2d_24_bias:	А>
/assignvariableop_37_batch_normalization_30_beta:	АE
6assignvariableop_38_batch_normalization_30_moving_mean:	АI
:assignvariableop_39_batch_normalization_30_moving_variance:	А7
"assignvariableop_40_dense_8_kernel:АРм/
 assignvariableop_41_dense_8_bias:	м>
/assignvariableop_42_batch_normalization_31_beta:	мE
6assignvariableop_43_batch_normalization_31_moving_mean:	мI
:assignvariableop_44_batch_normalization_31_moving_variance:	м6
"assignvariableop_45_dense_9_kernel:
м╚/
 assignvariableop_46_dense_9_bias:	╚>
/assignvariableop_47_batch_normalization_32_beta:	╚E
6assignvariableop_48_batch_normalization_32_moving_mean:	╚I
:assignvariableop_49_batch_normalization_32_moving_variance:	╚6
#assignvariableop_50_dense_10_kernel:	╚d/
!assignvariableop_51_dense_10_bias:d=
/assignvariableop_52_batch_normalization_33_beta:dD
6assignvariableop_53_batch_normalization_33_moving_mean:dH
:assignvariableop_54_batch_normalization_33_moving_variance:d5
#assignvariableop_55_dense_11_kernel:d/
!assignvariableop_56_dense_11_bias:*
 assignvariableop_57_rmsprop_iter:	 +
!assignvariableop_58_rmsprop_decay: 3
)assignvariableop_59_rmsprop_learning_rate: .
$assignvariableop_60_rmsprop_momentum: )
assignvariableop_61_rmsprop_rho: #
assignvariableop_62_total: #
assignvariableop_63_count: %
assignvariableop_64_total_1: %
assignvariableop_65_count_1: J
0assignvariableop_66_rmsprop_conv2d_17_kernel_rms: <
.assignvariableop_67_rmsprop_conv2d_17_bias_rms: I
;assignvariableop_68_rmsprop_batch_normalization_23_beta_rms: K
0assignvariableop_69_rmsprop_conv2d_18_kernel_rms: А=
.assignvariableop_70_rmsprop_conv2d_18_bias_rms:	АJ
;assignvariableop_71_rmsprop_batch_normalization_24_beta_rms:	АK
0assignvariableop_72_rmsprop_conv2d_19_kernel_rms:А <
.assignvariableop_73_rmsprop_conv2d_19_bias_rms: I
;assignvariableop_74_rmsprop_batch_normalization_25_beta_rms: K
0assignvariableop_75_rmsprop_conv2d_20_kernel_rms: А=
.assignvariableop_76_rmsprop_conv2d_20_bias_rms:	АJ
;assignvariableop_77_rmsprop_batch_normalization_26_beta_rms:	АL
0assignvariableop_78_rmsprop_conv2d_21_kernel_rms:АА=
.assignvariableop_79_rmsprop_conv2d_21_bias_rms:	АJ
;assignvariableop_80_rmsprop_batch_normalization_27_beta_rms:	АL
0assignvariableop_81_rmsprop_conv2d_22_kernel_rms:АА=
.assignvariableop_82_rmsprop_conv2d_22_bias_rms:	АJ
;assignvariableop_83_rmsprop_batch_normalization_28_beta_rms:	АL
0assignvariableop_84_rmsprop_conv2d_23_kernel_rms:АА=
.assignvariableop_85_rmsprop_conv2d_23_bias_rms:	АJ
;assignvariableop_86_rmsprop_batch_normalization_29_beta_rms:	АL
0assignvariableop_87_rmsprop_conv2d_24_kernel_rms:АА=
.assignvariableop_88_rmsprop_conv2d_24_bias_rms:	АJ
;assignvariableop_89_rmsprop_batch_normalization_30_beta_rms:	АC
.assignvariableop_90_rmsprop_dense_8_kernel_rms:АРм;
,assignvariableop_91_rmsprop_dense_8_bias_rms:	мJ
;assignvariableop_92_rmsprop_batch_normalization_31_beta_rms:	мB
.assignvariableop_93_rmsprop_dense_9_kernel_rms:
м╚;
,assignvariableop_94_rmsprop_dense_9_bias_rms:	╚J
;assignvariableop_95_rmsprop_batch_normalization_32_beta_rms:	╚B
/assignvariableop_96_rmsprop_dense_10_kernel_rms:	╚d;
-assignvariableop_97_rmsprop_dense_10_bias_rms:dI
;assignvariableop_98_rmsprop_batch_normalization_33_beta_rms:dA
/assignvariableop_99_rmsprop_dense_11_kernel_rms:d<
.assignvariableop_100_rmsprop_dense_11_bias_rms:
identity_102ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_100вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_59вAssignVariableOp_6вAssignVariableOp_60вAssignVariableOp_61вAssignVariableOp_62вAssignVariableOp_63вAssignVariableOp_64вAssignVariableOp_65вAssignVariableOp_66вAssignVariableOp_67вAssignVariableOp_68вAssignVariableOp_69вAssignVariableOp_7вAssignVariableOp_70вAssignVariableOp_71вAssignVariableOp_72вAssignVariableOp_73вAssignVariableOp_74вAssignVariableOp_75вAssignVariableOp_76вAssignVariableOp_77вAssignVariableOp_78вAssignVariableOp_79вAssignVariableOp_8вAssignVariableOp_80вAssignVariableOp_81вAssignVariableOp_82вAssignVariableOp_83вAssignVariableOp_84вAssignVariableOp_85вAssignVariableOp_86вAssignVariableOp_87вAssignVariableOp_88вAssignVariableOp_89вAssignVariableOp_9вAssignVariableOp_90вAssignVariableOp_91вAssignVariableOp_92вAssignVariableOp_93вAssignVariableOp_94вAssignVariableOp_95вAssignVariableOp_96вAssignVariableOp_97вAssignVariableOp_98вAssignVariableOp_99П6
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:f*
dtype0*Ы5
valueС5BО5fB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-17/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-17/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-19/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-19/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-21/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-21/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names▌
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:f*
dtype0*с
value╫B╘fB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesм
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*о
_output_shapesЫ
Ш::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*t
dtypesj
h2f	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityа
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_17_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1ж
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_17_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2│
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_23_betaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3║
AssignVariableOp_3AssignVariableOp5assignvariableop_3_batch_normalization_23_moving_meanIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4╛
AssignVariableOp_4AssignVariableOp9assignvariableop_4_batch_normalization_23_moving_varianceIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5и
AssignVariableOp_5AssignVariableOp#assignvariableop_5_conv2d_18_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6ж
AssignVariableOp_6AssignVariableOp!assignvariableop_6_conv2d_18_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7│
AssignVariableOp_7AssignVariableOp.assignvariableop_7_batch_normalization_24_betaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8║
AssignVariableOp_8AssignVariableOp5assignvariableop_8_batch_normalization_24_moving_meanIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9╛
AssignVariableOp_9AssignVariableOp9assignvariableop_9_batch_normalization_24_moving_varianceIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10м
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_19_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11к
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_19_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12╖
AssignVariableOp_12AssignVariableOp/assignvariableop_12_batch_normalization_25_betaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13╛
AssignVariableOp_13AssignVariableOp6assignvariableop_13_batch_normalization_25_moving_meanIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14┬
AssignVariableOp_14AssignVariableOp:assignvariableop_14_batch_normalization_25_moving_varianceIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15м
AssignVariableOp_15AssignVariableOp$assignvariableop_15_conv2d_20_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16к
AssignVariableOp_16AssignVariableOp"assignvariableop_16_conv2d_20_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17╖
AssignVariableOp_17AssignVariableOp/assignvariableop_17_batch_normalization_26_betaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18╛
AssignVariableOp_18AssignVariableOp6assignvariableop_18_batch_normalization_26_moving_meanIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19┬
AssignVariableOp_19AssignVariableOp:assignvariableop_19_batch_normalization_26_moving_varianceIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20м
AssignVariableOp_20AssignVariableOp$assignvariableop_20_conv2d_21_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21к
AssignVariableOp_21AssignVariableOp"assignvariableop_21_conv2d_21_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22╖
AssignVariableOp_22AssignVariableOp/assignvariableop_22_batch_normalization_27_betaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23╛
AssignVariableOp_23AssignVariableOp6assignvariableop_23_batch_normalization_27_moving_meanIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24┬
AssignVariableOp_24AssignVariableOp:assignvariableop_24_batch_normalization_27_moving_varianceIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25м
AssignVariableOp_25AssignVariableOp$assignvariableop_25_conv2d_22_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26к
AssignVariableOp_26AssignVariableOp"assignvariableop_26_conv2d_22_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27╖
AssignVariableOp_27AssignVariableOp/assignvariableop_27_batch_normalization_28_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28╛
AssignVariableOp_28AssignVariableOp6assignvariableop_28_batch_normalization_28_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29┬
AssignVariableOp_29AssignVariableOp:assignvariableop_29_batch_normalization_28_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30м
AssignVariableOp_30AssignVariableOp$assignvariableop_30_conv2d_23_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31к
AssignVariableOp_31AssignVariableOp"assignvariableop_31_conv2d_23_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32╖
AssignVariableOp_32AssignVariableOp/assignvariableop_32_batch_normalization_29_betaIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33╛
AssignVariableOp_33AssignVariableOp6assignvariableop_33_batch_normalization_29_moving_meanIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34┬
AssignVariableOp_34AssignVariableOp:assignvariableop_34_batch_normalization_29_moving_varianceIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35м
AssignVariableOp_35AssignVariableOp$assignvariableop_35_conv2d_24_kernelIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36к
AssignVariableOp_36AssignVariableOp"assignvariableop_36_conv2d_24_biasIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37╖
AssignVariableOp_37AssignVariableOp/assignvariableop_37_batch_normalization_30_betaIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38╛
AssignVariableOp_38AssignVariableOp6assignvariableop_38_batch_normalization_30_moving_meanIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39┬
AssignVariableOp_39AssignVariableOp:assignvariableop_39_batch_normalization_30_moving_varianceIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40к
AssignVariableOp_40AssignVariableOp"assignvariableop_40_dense_8_kernelIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41и
AssignVariableOp_41AssignVariableOp assignvariableop_41_dense_8_biasIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42╖
AssignVariableOp_42AssignVariableOp/assignvariableop_42_batch_normalization_31_betaIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43╛
AssignVariableOp_43AssignVariableOp6assignvariableop_43_batch_normalization_31_moving_meanIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44┬
AssignVariableOp_44AssignVariableOp:assignvariableop_44_batch_normalization_31_moving_varianceIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45к
AssignVariableOp_45AssignVariableOp"assignvariableop_45_dense_9_kernelIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46и
AssignVariableOp_46AssignVariableOp assignvariableop_46_dense_9_biasIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47╖
AssignVariableOp_47AssignVariableOp/assignvariableop_47_batch_normalization_32_betaIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48╛
AssignVariableOp_48AssignVariableOp6assignvariableop_48_batch_normalization_32_moving_meanIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49┬
AssignVariableOp_49AssignVariableOp:assignvariableop_49_batch_normalization_32_moving_varianceIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50л
AssignVariableOp_50AssignVariableOp#assignvariableop_50_dense_10_kernelIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51й
AssignVariableOp_51AssignVariableOp!assignvariableop_51_dense_10_biasIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52╖
AssignVariableOp_52AssignVariableOp/assignvariableop_52_batch_normalization_33_betaIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53╛
AssignVariableOp_53AssignVariableOp6assignvariableop_53_batch_normalization_33_moving_meanIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54┬
AssignVariableOp_54AssignVariableOp:assignvariableop_54_batch_normalization_33_moving_varianceIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55л
AssignVariableOp_55AssignVariableOp#assignvariableop_55_dense_11_kernelIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56й
AssignVariableOp_56AssignVariableOp!assignvariableop_56_dense_11_biasIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_57и
AssignVariableOp_57AssignVariableOp assignvariableop_57_rmsprop_iterIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58й
AssignVariableOp_58AssignVariableOp!assignvariableop_58_rmsprop_decayIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59▒
AssignVariableOp_59AssignVariableOp)assignvariableop_59_rmsprop_learning_rateIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60м
AssignVariableOp_60AssignVariableOp$assignvariableop_60_rmsprop_momentumIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61з
AssignVariableOp_61AssignVariableOpassignvariableop_61_rmsprop_rhoIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62б
AssignVariableOp_62AssignVariableOpassignvariableop_62_totalIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63б
AssignVariableOp_63AssignVariableOpassignvariableop_63_countIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64г
AssignVariableOp_64AssignVariableOpassignvariableop_64_total_1Identity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65г
AssignVariableOp_65AssignVariableOpassignvariableop_65_count_1Identity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66╕
AssignVariableOp_66AssignVariableOp0assignvariableop_66_rmsprop_conv2d_17_kernel_rmsIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67╢
AssignVariableOp_67AssignVariableOp.assignvariableop_67_rmsprop_conv2d_17_bias_rmsIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68├
AssignVariableOp_68AssignVariableOp;assignvariableop_68_rmsprop_batch_normalization_23_beta_rmsIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69╕
AssignVariableOp_69AssignVariableOp0assignvariableop_69_rmsprop_conv2d_18_kernel_rmsIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70╢
AssignVariableOp_70AssignVariableOp.assignvariableop_70_rmsprop_conv2d_18_bias_rmsIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71├
AssignVariableOp_71AssignVariableOp;assignvariableop_71_rmsprop_batch_normalization_24_beta_rmsIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72╕
AssignVariableOp_72AssignVariableOp0assignvariableop_72_rmsprop_conv2d_19_kernel_rmsIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73╢
AssignVariableOp_73AssignVariableOp.assignvariableop_73_rmsprop_conv2d_19_bias_rmsIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74├
AssignVariableOp_74AssignVariableOp;assignvariableop_74_rmsprop_batch_normalization_25_beta_rmsIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75╕
AssignVariableOp_75AssignVariableOp0assignvariableop_75_rmsprop_conv2d_20_kernel_rmsIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76╢
AssignVariableOp_76AssignVariableOp.assignvariableop_76_rmsprop_conv2d_20_bias_rmsIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77├
AssignVariableOp_77AssignVariableOp;assignvariableop_77_rmsprop_batch_normalization_26_beta_rmsIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78╕
AssignVariableOp_78AssignVariableOp0assignvariableop_78_rmsprop_conv2d_21_kernel_rmsIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79╢
AssignVariableOp_79AssignVariableOp.assignvariableop_79_rmsprop_conv2d_21_bias_rmsIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80├
AssignVariableOp_80AssignVariableOp;assignvariableop_80_rmsprop_batch_normalization_27_beta_rmsIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81╕
AssignVariableOp_81AssignVariableOp0assignvariableop_81_rmsprop_conv2d_22_kernel_rmsIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82╢
AssignVariableOp_82AssignVariableOp.assignvariableop_82_rmsprop_conv2d_22_bias_rmsIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83├
AssignVariableOp_83AssignVariableOp;assignvariableop_83_rmsprop_batch_normalization_28_beta_rmsIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84╕
AssignVariableOp_84AssignVariableOp0assignvariableop_84_rmsprop_conv2d_23_kernel_rmsIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85╢
AssignVariableOp_85AssignVariableOp.assignvariableop_85_rmsprop_conv2d_23_bias_rmsIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86├
AssignVariableOp_86AssignVariableOp;assignvariableop_86_rmsprop_batch_normalization_29_beta_rmsIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87╕
AssignVariableOp_87AssignVariableOp0assignvariableop_87_rmsprop_conv2d_24_kernel_rmsIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88╢
AssignVariableOp_88AssignVariableOp.assignvariableop_88_rmsprop_conv2d_24_bias_rmsIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89├
AssignVariableOp_89AssignVariableOp;assignvariableop_89_rmsprop_batch_normalization_30_beta_rmsIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90╢
AssignVariableOp_90AssignVariableOp.assignvariableop_90_rmsprop_dense_8_kernel_rmsIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91┤
AssignVariableOp_91AssignVariableOp,assignvariableop_91_rmsprop_dense_8_bias_rmsIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92├
AssignVariableOp_92AssignVariableOp;assignvariableop_92_rmsprop_batch_normalization_31_beta_rmsIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93╢
AssignVariableOp_93AssignVariableOp.assignvariableop_93_rmsprop_dense_9_kernel_rmsIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94┤
AssignVariableOp_94AssignVariableOp,assignvariableop_94_rmsprop_dense_9_bias_rmsIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95├
AssignVariableOp_95AssignVariableOp;assignvariableop_95_rmsprop_batch_normalization_32_beta_rmsIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96╖
AssignVariableOp_96AssignVariableOp/assignvariableop_96_rmsprop_dense_10_kernel_rmsIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97╡
AssignVariableOp_97AssignVariableOp-assignvariableop_97_rmsprop_dense_10_bias_rmsIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98├
AssignVariableOp_98AssignVariableOp;assignvariableop_98_rmsprop_batch_normalization_33_beta_rmsIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99╖
AssignVariableOp_99AssignVariableOp/assignvariableop_99_rmsprop_dense_11_kernel_rmsIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100╣
AssignVariableOp_100AssignVariableOp.assignvariableop_100_rmsprop_dense_11_bias_rmsIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1009
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpП
Identity_101Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_101Г
Identity_102IdentityIdentity_101:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
T0*
_output_shapes
: 2
Identity_102"%
identity_102Identity_102:output:0*с
_input_shapes╧
╠: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002*
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
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
╕
ы
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_28843

inputs	
scale%
readvariableop_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpз
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╔
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┘
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs: 

_output_shapes
: 
№
Т
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_29264

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
№
Т
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_29776

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
┤
Т
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_31077

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1ь
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         А:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:!

_output_shapes	
:А
┌
L
0__inference_max_pooling2d_10_layer_call_fn_29590

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_295842
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
м
П
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_33582

inputs	
scale%
readvariableop_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpз
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╟
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ии : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1э
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*1
_output_shapes
:         ии 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         ии : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:Y U
1
_output_shapes
:         ии 
 
_user_specified_nameinputs: 

_output_shapes
: 
╚
ю
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_28965

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╬
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
Р	
╩
6__inference_batch_normalization_28_layer_call_fn_34229

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCall╕
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_294772
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
ь
П
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_28886

inputs	
scale%
readvariableop_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpз
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╫
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1¤
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs: 

_output_shapes
: 
Ы┤
Б=
G__inference_sequential_5_layer_call_and_return_conditional_losses_33442

inputsB
(conv2d_17_conv2d_readvariableop_resource: 7
)conv2d_17_biasadd_readvariableop_resource:  
batch_normalization_23_scale<
.batch_normalization_23_readvariableop_resource: M
?batch_normalization_23_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_23_fusedbatchnormv3_readvariableop_1_resource: C
(conv2d_18_conv2d_readvariableop_resource: А8
)conv2d_18_biasadd_readvariableop_resource:	А 
batch_normalization_24_scale=
.batch_normalization_24_readvariableop_resource:	АN
?batch_normalization_24_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource:	АC
(conv2d_19_conv2d_readvariableop_resource:А 7
)conv2d_19_biasadd_readvariableop_resource:  
batch_normalization_25_scale<
.batch_normalization_25_readvariableop_resource: M
?batch_normalization_25_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource: C
(conv2d_20_conv2d_readvariableop_resource: А8
)conv2d_20_biasadd_readvariableop_resource:	А 
batch_normalization_26_scale=
.batch_normalization_26_readvariableop_resource:	АN
?batch_normalization_26_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource:	АD
(conv2d_21_conv2d_readvariableop_resource:АА8
)conv2d_21_biasadd_readvariableop_resource:	А 
batch_normalization_27_scale=
.batch_normalization_27_readvariableop_resource:	АN
?batch_normalization_27_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_27_fusedbatchnormv3_readvariableop_1_resource:	АD
(conv2d_22_conv2d_readvariableop_resource:АА8
)conv2d_22_biasadd_readvariableop_resource:	А 
batch_normalization_28_scale=
.batch_normalization_28_readvariableop_resource:	АN
?batch_normalization_28_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_28_fusedbatchnormv3_readvariableop_1_resource:	АD
(conv2d_23_conv2d_readvariableop_resource:АА8
)conv2d_23_biasadd_readvariableop_resource:	А 
batch_normalization_29_scale=
.batch_normalization_29_readvariableop_resource:	АN
?batch_normalization_29_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_29_fusedbatchnormv3_readvariableop_1_resource:	АD
(conv2d_24_conv2d_readvariableop_resource:АА8
)conv2d_24_biasadd_readvariableop_resource:	А 
batch_normalization_30_scale=
.batch_normalization_30_readvariableop_resource:	АN
?batch_normalization_30_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_30_fusedbatchnormv3_readvariableop_1_resource:	А;
&dense_8_matmul_readvariableop_resource:АРм6
'dense_8_biasadd_readvariableop_resource:	мM
>batch_normalization_31_assignmovingavg_readvariableop_resource:	мO
@batch_normalization_31_assignmovingavg_1_readvariableop_resource:	мG
8batch_normalization_31_batchnorm_readvariableop_resource:	м:
&dense_9_matmul_readvariableop_resource:
м╚6
'dense_9_biasadd_readvariableop_resource:	╚M
>batch_normalization_32_assignmovingavg_readvariableop_resource:	╚O
@batch_normalization_32_assignmovingavg_1_readvariableop_resource:	╚G
8batch_normalization_32_batchnorm_readvariableop_resource:	╚:
'dense_10_matmul_readvariableop_resource:	╚d6
(dense_10_biasadd_readvariableop_resource:dL
>batch_normalization_33_assignmovingavg_readvariableop_resource:dN
@batch_normalization_33_assignmovingavg_1_readvariableop_resource:dF
8batch_normalization_33_batchnorm_readvariableop_resource:d9
'dense_11_matmul_readvariableop_resource:d6
(dense_11_biasadd_readvariableop_resource:
identityИв%batch_normalization_23/AssignNewValueв'batch_normalization_23/AssignNewValue_1в6batch_normalization_23/FusedBatchNormV3/ReadVariableOpв8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_23/ReadVariableOpв%batch_normalization_24/AssignNewValueв'batch_normalization_24/AssignNewValue_1в6batch_normalization_24/FusedBatchNormV3/ReadVariableOpв8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_24/ReadVariableOpв%batch_normalization_25/AssignNewValueв'batch_normalization_25/AssignNewValue_1в6batch_normalization_25/FusedBatchNormV3/ReadVariableOpв8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_25/ReadVariableOpв%batch_normalization_26/AssignNewValueв'batch_normalization_26/AssignNewValue_1в6batch_normalization_26/FusedBatchNormV3/ReadVariableOpв8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_26/ReadVariableOpв%batch_normalization_27/AssignNewValueв'batch_normalization_27/AssignNewValue_1в6batch_normalization_27/FusedBatchNormV3/ReadVariableOpв8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_27/ReadVariableOpв%batch_normalization_28/AssignNewValueв'batch_normalization_28/AssignNewValue_1в6batch_normalization_28/FusedBatchNormV3/ReadVariableOpв8batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_28/ReadVariableOpв%batch_normalization_29/AssignNewValueв'batch_normalization_29/AssignNewValue_1в6batch_normalization_29/FusedBatchNormV3/ReadVariableOpв8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_29/ReadVariableOpв%batch_normalization_30/AssignNewValueв'batch_normalization_30/AssignNewValue_1в6batch_normalization_30/FusedBatchNormV3/ReadVariableOpв8batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_30/ReadVariableOpв&batch_normalization_31/AssignMovingAvgв5batch_normalization_31/AssignMovingAvg/ReadVariableOpв(batch_normalization_31/AssignMovingAvg_1в7batch_normalization_31/AssignMovingAvg_1/ReadVariableOpв/batch_normalization_31/batchnorm/ReadVariableOpв&batch_normalization_32/AssignMovingAvgв5batch_normalization_32/AssignMovingAvg/ReadVariableOpв(batch_normalization_32/AssignMovingAvg_1в7batch_normalization_32/AssignMovingAvg_1/ReadVariableOpв/batch_normalization_32/batchnorm/ReadVariableOpв&batch_normalization_33/AssignMovingAvgв5batch_normalization_33/AssignMovingAvg/ReadVariableOpв(batch_normalization_33/AssignMovingAvg_1в7batch_normalization_33/AssignMovingAvg_1/ReadVariableOpв/batch_normalization_33/batchnorm/ReadVariableOpв conv2d_17/BiasAdd/ReadVariableOpвconv2d_17/Conv2D/ReadVariableOpв conv2d_18/BiasAdd/ReadVariableOpвconv2d_18/Conv2D/ReadVariableOpв conv2d_19/BiasAdd/ReadVariableOpвconv2d_19/Conv2D/ReadVariableOpв conv2d_20/BiasAdd/ReadVariableOpвconv2d_20/Conv2D/ReadVariableOpв conv2d_21/BiasAdd/ReadVariableOpвconv2d_21/Conv2D/ReadVariableOpв conv2d_22/BiasAdd/ReadVariableOpвconv2d_22/Conv2D/ReadVariableOpв conv2d_23/BiasAdd/ReadVariableOpвconv2d_23/Conv2D/ReadVariableOpв conv2d_24/BiasAdd/ReadVariableOpвconv2d_24/Conv2D/ReadVariableOpвdense_10/BiasAdd/ReadVariableOpвdense_10/MatMul/ReadVariableOpвdense_11/BiasAdd/ReadVariableOpвdense_11/MatMul/ReadVariableOpвdense_8/BiasAdd/ReadVariableOpвdense_8/MatMul/ReadVariableOpвdense_9/BiasAdd/ReadVariableOpвdense_9/MatMul/ReadVariableOp│
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_17/Conv2D/ReadVariableOp─
conv2d_17/Conv2DConv2Dinputs'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ии *
paddingVALID*
strides
2
conv2d_17/Conv2Dк
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_17/BiasAdd/ReadVariableOpо
conv2d_17/BiasAddAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ии 2
conv2d_17/BiasAdd{
conv2d_17/ReluReluconv2d_17/BiasAdd:z:0*
T0*1
_output_shapes
:         ии 2
conv2d_17/Relu╣
%batch_normalization_23/ReadVariableOpReadVariableOp.batch_normalization_23_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_23/ReadVariableOpь
6batch_normalization_23/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_23_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_23/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_23_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1ч
'batch_normalization_23/FusedBatchNormV3FusedBatchNormV3conv2d_17/Relu:activations:0batch_normalization_23_scale-batch_normalization_23/ReadVariableOp:value:0>batch_normalization_23/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ии : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_23/FusedBatchNormV3╡
%batch_normalization_23/AssignNewValueAssignVariableOp?batch_normalization_23_fusedbatchnormv3_readvariableop_resource4batch_normalization_23/FusedBatchNormV3:batch_mean:07^batch_normalization_23/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_23/AssignNewValue┴
'batch_normalization_23/AssignNewValue_1AssignVariableOpAbatch_normalization_23_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_23/FusedBatchNormV3:batch_variance:09^batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_23/AssignNewValue_1┤
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*'
_output_shapes
: А*
dtype02!
conv2d_18/Conv2D/ReadVariableOpъ
conv2d_18/Conv2DConv2D+batch_normalization_23/FusedBatchNormV3:y:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ддА*
paddingVALID*
strides
2
conv2d_18/Conv2Dл
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_18/BiasAdd/ReadVariableOpп
conv2d_18/BiasAddAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ддА2
conv2d_18/BiasAdd|
conv2d_18/ReluReluconv2d_18/BiasAdd:z:0*
T0*2
_output_shapes 
:         ддА2
conv2d_18/Relu║
%batch_normalization_24/ReadVariableOpReadVariableOp.batch_normalization_24_readvariableop_resource*
_output_shapes	
:А*
dtype02'
%batch_normalization_24/ReadVariableOpэ
6batch_normalization_24/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_24_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype028
6batch_normalization_24/FusedBatchNormV3/ReadVariableOpє
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02:
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1ь
'batch_normalization_24/FusedBatchNormV3FusedBatchNormV3conv2d_18/Relu:activations:0batch_normalization_24_scale-batch_normalization_24/ReadVariableOp:value:0>batch_normalization_24/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*R
_output_shapes@
>:         ддА:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_24/FusedBatchNormV3╡
%batch_normalization_24/AssignNewValueAssignVariableOp?batch_normalization_24_fusedbatchnormv3_readvariableop_resource4batch_normalization_24/FusedBatchNormV3:batch_mean:07^batch_normalization_24/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_24/AssignNewValue┴
'batch_normalization_24/AssignNewValue_1AssignVariableOpAbatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_24/FusedBatchNormV3:batch_variance:09^batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_24/AssignNewValue_1┘
max_pooling2d_8/MaxPoolMaxPool+batch_normalization_24/FusedBatchNormV3:y:0*2
_output_shapes 
:         ТТА*
ksize
*
paddingSAME*
strides
2
max_pooling2d_8/MaxPooly
dropout_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout_14/dropout/Const╣
dropout_14/dropout/MulMul max_pooling2d_8/MaxPool:output:0!dropout_14/dropout/Const:output:0*
T0*2
_output_shapes 
:         ТТА2
dropout_14/dropout/MulД
dropout_14/dropout/ShapeShape max_pooling2d_8/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_14/dropout/Shapeэ
/dropout_14/dropout/random_uniform/RandomUniformRandomUniform!dropout_14/dropout/Shape:output:0*
T0*2
_output_shapes 
:         ТТА*
dtype0*
seedА21
/dropout_14/dropout/random_uniform/RandomUniformЛ
!dropout_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2#
!dropout_14/dropout/GreaterEqual/yї
dropout_14/dropout/GreaterEqualGreaterEqual8dropout_14/dropout/random_uniform/RandomUniform:output:0*dropout_14/dropout/GreaterEqual/y:output:0*
T0*2
_output_shapes 
:         ТТА2!
dropout_14/dropout/GreaterEqualл
dropout_14/dropout/CastCast#dropout_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*2
_output_shapes 
:         ТТА2
dropout_14/dropout/Cast▒
dropout_14/dropout/Mul_1Muldropout_14/dropout/Mul:z:0dropout_14/dropout/Cast:y:0*
T0*2
_output_shapes 
:         ТТА2
dropout_14/dropout/Mul_1┤
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*'
_output_shapes
:А *
dtype02!
conv2d_19/Conv2D/ReadVariableOp┌
conv2d_19/Conv2DConv2Ddropout_14/dropout/Mul_1:z:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         РР *
paddingVALID*
strides
2
conv2d_19/Conv2Dк
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_19/BiasAdd/ReadVariableOpо
conv2d_19/BiasAddAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         РР 2
conv2d_19/BiasAdd{
conv2d_19/ReluReluconv2d_19/BiasAdd:z:0*
T0*1
_output_shapes
:         РР 2
conv2d_19/Relu╣
%batch_normalization_25/ReadVariableOpReadVariableOp.batch_normalization_25_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_25/ReadVariableOpь
6batch_normalization_25/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_25_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_25/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1ч
'batch_normalization_25/FusedBatchNormV3FusedBatchNormV3conv2d_19/Relu:activations:0batch_normalization_25_scale-batch_normalization_25/ReadVariableOp:value:0>batch_normalization_25/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         РР : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_25/FusedBatchNormV3╡
%batch_normalization_25/AssignNewValueAssignVariableOp?batch_normalization_25_fusedbatchnormv3_readvariableop_resource4batch_normalization_25/FusedBatchNormV3:batch_mean:07^batch_normalization_25/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_25/AssignNewValue┴
'batch_normalization_25/AssignNewValue_1AssignVariableOpAbatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_25/FusedBatchNormV3:batch_variance:09^batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_25/AssignNewValue_1┤
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*'
_output_shapes
: А*
dtype02!
conv2d_20/Conv2D/ReadVariableOpъ
conv2d_20/Conv2DConv2D+batch_normalization_25/FusedBatchNormV3:y:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ООА*
paddingVALID*
strides
2
conv2d_20/Conv2Dл
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_20/BiasAdd/ReadVariableOpп
conv2d_20/BiasAddAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ООА2
conv2d_20/BiasAdd|
conv2d_20/ReluReluconv2d_20/BiasAdd:z:0*
T0*2
_output_shapes 
:         ООА2
conv2d_20/Relu║
%batch_normalization_26/ReadVariableOpReadVariableOp.batch_normalization_26_readvariableop_resource*
_output_shapes	
:А*
dtype02'
%batch_normalization_26/ReadVariableOpэ
6batch_normalization_26/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_26_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype028
6batch_normalization_26/FusedBatchNormV3/ReadVariableOpє
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02:
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1ь
'batch_normalization_26/FusedBatchNormV3FusedBatchNormV3conv2d_20/Relu:activations:0batch_normalization_26_scale-batch_normalization_26/ReadVariableOp:value:0>batch_normalization_26/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*R
_output_shapes@
>:         ООА:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_26/FusedBatchNormV3╡
%batch_normalization_26/AssignNewValueAssignVariableOp?batch_normalization_26_fusedbatchnormv3_readvariableop_resource4batch_normalization_26/FusedBatchNormV3:batch_mean:07^batch_normalization_26/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_26/AssignNewValue┴
'batch_normalization_26/AssignNewValue_1AssignVariableOpAbatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_26/FusedBatchNormV3:batch_variance:09^batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_26/AssignNewValue_1╫
max_pooling2d_9/MaxPoolMaxPool+batch_normalization_26/FusedBatchNormV3:y:0*0
_output_shapes
:         GGА*
ksize
*
paddingSAME*
strides
2
max_pooling2d_9/MaxPooly
dropout_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout_15/dropout/Const╖
dropout_15/dropout/MulMul max_pooling2d_9/MaxPool:output:0!dropout_15/dropout/Const:output:0*
T0*0
_output_shapes
:         GGА2
dropout_15/dropout/MulД
dropout_15/dropout/ShapeShape max_pooling2d_9/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_15/dropout/Shape°
/dropout_15/dropout/random_uniform/RandomUniformRandomUniform!dropout_15/dropout/Shape:output:0*
T0*0
_output_shapes
:         GGА*
dtype0*
seedА*
seed221
/dropout_15/dropout/random_uniform/RandomUniformЛ
!dropout_15/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2#
!dropout_15/dropout/GreaterEqual/yє
dropout_15/dropout/GreaterEqualGreaterEqual8dropout_15/dropout/random_uniform/RandomUniform:output:0*dropout_15/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         GGА2!
dropout_15/dropout/GreaterEqualй
dropout_15/dropout/CastCast#dropout_15/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         GGА2
dropout_15/dropout/Castп
dropout_15/dropout/Mul_1Muldropout_15/dropout/Mul:z:0dropout_15/dropout/Cast:y:0*
T0*0
_output_shapes
:         GGА2
dropout_15/dropout/Mul_1╡
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_21/Conv2D/ReadVariableOp┘
conv2d_21/Conv2DConv2Ddropout_15/dropout/Mul_1:z:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         CCА*
paddingVALID*
strides
2
conv2d_21/Conv2Dл
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_21/BiasAdd/ReadVariableOpн
conv2d_21/BiasAddAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         CCА2
conv2d_21/BiasAddz
conv2d_21/ReluReluconv2d_21/BiasAdd:z:0*
T0*0
_output_shapes
:         CCА2
conv2d_21/Relu║
%batch_normalization_27/ReadVariableOpReadVariableOp.batch_normalization_27_readvariableop_resource*
_output_shapes	
:А*
dtype02'
%batch_normalization_27/ReadVariableOpэ
6batch_normalization_27/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_27_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype028
6batch_normalization_27/FusedBatchNormV3/ReadVariableOpє
8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_27_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02:
8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1ъ
'batch_normalization_27/FusedBatchNormV3FusedBatchNormV3conv2d_21/Relu:activations:0batch_normalization_27_scale-batch_normalization_27/ReadVariableOp:value:0>batch_normalization_27/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         CCА:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_27/FusedBatchNormV3╡
%batch_normalization_27/AssignNewValueAssignVariableOp?batch_normalization_27_fusedbatchnormv3_readvariableop_resource4batch_normalization_27/FusedBatchNormV3:batch_mean:07^batch_normalization_27/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_27/AssignNewValue┴
'batch_normalization_27/AssignNewValue_1AssignVariableOpAbatch_normalization_27_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_27/FusedBatchNormV3:batch_variance:09^batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_27/AssignNewValue_1╡
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_22/Conv2D/ReadVariableOpш
conv2d_22/Conv2DConv2D+batch_normalization_27/FusedBatchNormV3:y:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ??А*
paddingVALID*
strides
2
conv2d_22/Conv2Dл
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOpн
conv2d_22/BiasAddAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ??А2
conv2d_22/BiasAddz
conv2d_22/ReluReluconv2d_22/BiasAdd:z:0*
T0*0
_output_shapes
:         ??А2
conv2d_22/Relu║
%batch_normalization_28/ReadVariableOpReadVariableOp.batch_normalization_28_readvariableop_resource*
_output_shapes	
:А*
dtype02'
%batch_normalization_28/ReadVariableOpэ
6batch_normalization_28/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_28_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype028
6batch_normalization_28/FusedBatchNormV3/ReadVariableOpє
8batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_28_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02:
8batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1ъ
'batch_normalization_28/FusedBatchNormV3FusedBatchNormV3conv2d_22/Relu:activations:0batch_normalization_28_scale-batch_normalization_28/ReadVariableOp:value:0>batch_normalization_28/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         ??А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_28/FusedBatchNormV3╡
%batch_normalization_28/AssignNewValueAssignVariableOp?batch_normalization_28_fusedbatchnormv3_readvariableop_resource4batch_normalization_28/FusedBatchNormV3:batch_mean:07^batch_normalization_28/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_28/AssignNewValue┴
'batch_normalization_28/AssignNewValue_1AssignVariableOpAbatch_normalization_28_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_28/FusedBatchNormV3:batch_variance:09^batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_28/AssignNewValue_1┘
max_pooling2d_10/MaxPoolMaxPool+batch_normalization_28/FusedBatchNormV3:y:0*0
_output_shapes
:           А*
ksize
*
paddingSAME*
strides
2
max_pooling2d_10/MaxPooly
dropout_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout_16/dropout/Const╕
dropout_16/dropout/MulMul!max_pooling2d_10/MaxPool:output:0!dropout_16/dropout/Const:output:0*
T0*0
_output_shapes
:           А2
dropout_16/dropout/MulЕ
dropout_16/dropout/ShapeShape!max_pooling2d_10/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_16/dropout/Shape°
/dropout_16/dropout/random_uniform/RandomUniformRandomUniform!dropout_16/dropout/Shape:output:0*
T0*0
_output_shapes
:           А*
dtype0*
seedА*
seed221
/dropout_16/dropout/random_uniform/RandomUniformЛ
!dropout_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2#
!dropout_16/dropout/GreaterEqual/yє
dropout_16/dropout/GreaterEqualGreaterEqual8dropout_16/dropout/random_uniform/RandomUniform:output:0*dropout_16/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:           А2!
dropout_16/dropout/GreaterEqualй
dropout_16/dropout/CastCast#dropout_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:           А2
dropout_16/dropout/Castп
dropout_16/dropout/Mul_1Muldropout_16/dropout/Mul:z:0dropout_16/dropout/Cast:y:0*
T0*0
_output_shapes
:           А2
dropout_16/dropout/Mul_1╡
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_23/Conv2D/ReadVariableOp┘
conv2d_23/Conv2DConv2Ddropout_16/dropout/Mul_1:z:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
conv2d_23/Conv2Dл
 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_23/BiasAdd/ReadVariableOpн
conv2d_23/BiasAddAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_23/BiasAddz
conv2d_23/ReluReluconv2d_23/BiasAdd:z:0*
T0*0
_output_shapes
:         А2
conv2d_23/Relu║
%batch_normalization_29/ReadVariableOpReadVariableOp.batch_normalization_29_readvariableop_resource*
_output_shapes	
:А*
dtype02'
%batch_normalization_29/ReadVariableOpэ
6batch_normalization_29/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_29_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype028
6batch_normalization_29/FusedBatchNormV3/ReadVariableOpє
8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_29_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02:
8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1ъ
'batch_normalization_29/FusedBatchNormV3FusedBatchNormV3conv2d_23/Relu:activations:0batch_normalization_29_scale-batch_normalization_29/ReadVariableOp:value:0>batch_normalization_29/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_29/FusedBatchNormV3╡
%batch_normalization_29/AssignNewValueAssignVariableOp?batch_normalization_29_fusedbatchnormv3_readvariableop_resource4batch_normalization_29/FusedBatchNormV3:batch_mean:07^batch_normalization_29/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_29/AssignNewValue┴
'batch_normalization_29/AssignNewValue_1AssignVariableOpAbatch_normalization_29_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_29/FusedBatchNormV3:batch_variance:09^batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_29/AssignNewValue_1╡
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_24/Conv2D/ReadVariableOpш
conv2d_24/Conv2DConv2D+batch_normalization_29/FusedBatchNormV3:y:0'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
conv2d_24/Conv2Dл
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_24/BiasAdd/ReadVariableOpн
conv2d_24/BiasAddAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_24/BiasAddz
conv2d_24/ReluReluconv2d_24/BiasAdd:z:0*
T0*0
_output_shapes
:         А2
conv2d_24/Relu║
%batch_normalization_30/ReadVariableOpReadVariableOp.batch_normalization_30_readvariableop_resource*
_output_shapes	
:А*
dtype02'
%batch_normalization_30/ReadVariableOpэ
6batch_normalization_30/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_30_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype028
6batch_normalization_30/FusedBatchNormV3/ReadVariableOpє
8batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_30_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02:
8batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1ъ
'batch_normalization_30/FusedBatchNormV3FusedBatchNormV3conv2d_24/Relu:activations:0batch_normalization_30_scale-batch_normalization_30/ReadVariableOp:value:0>batch_normalization_30/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_30/FusedBatchNormV3╡
%batch_normalization_30/AssignNewValueAssignVariableOp?batch_normalization_30_fusedbatchnormv3_readvariableop_resource4batch_normalization_30/FusedBatchNormV3:batch_mean:07^batch_normalization_30/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_30/AssignNewValue┴
'batch_normalization_30/AssignNewValue_1AssignVariableOpAbatch_normalization_30_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_30/FusedBatchNormV3:batch_variance:09^batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_30/AssignNewValue_1┘
max_pooling2d_11/MaxPoolMaxPool+batch_normalization_30/FusedBatchNormV3:y:0*0
_output_shapes
:         А*
ksize
*
paddingSAME*
strides
2
max_pooling2d_11/MaxPooly
dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout_17/dropout/Const╕
dropout_17/dropout/MulMul!max_pooling2d_11/MaxPool:output:0!dropout_17/dropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout_17/dropout/MulЕ
dropout_17/dropout/ShapeShape!max_pooling2d_11/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_17/dropout/Shape°
/dropout_17/dropout/random_uniform/RandomUniformRandomUniform!dropout_17/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0*
seedА*
seed221
/dropout_17/dropout/random_uniform/RandomUniformЛ
!dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2#
!dropout_17/dropout/GreaterEqual/yє
dropout_17/dropout/GreaterEqualGreaterEqual8dropout_17/dropout/random_uniform/RandomUniform:output:0*dropout_17/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2!
dropout_17/dropout/GreaterEqualй
dropout_17/dropout/CastCast#dropout_17/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout_17/dropout/Castп
dropout_17/dropout/Mul_1Muldropout_17/dropout/Mul:z:0dropout_17/dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout_17/dropout/Mul_1s
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"     И 2
flatten_2/ConstЭ
flatten_2/ReshapeReshapedropout_17/dropout/Mul_1:z:0flatten_2/Const:output:0*
T0*)
_output_shapes
:         АР2
flatten_2/Reshapeи
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*!
_output_shapes
:АРм*
dtype02
dense_8/MatMul/ReadVariableOpа
dense_8/MatMulMatMulflatten_2/Reshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         м2
dense_8/MatMulе
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes	
:м*
dtype02 
dense_8/BiasAdd/ReadVariableOpЮ
dense_8/BiasAddAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         м2
dense_8/BiasAddl
dense_8/ReluReludense_8/BiasAdd:z:0*
T0*(
_output_shapes
:         м2
dense_8/Relu╕
5batch_normalization_31/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_31/moments/mean/reduction_indicesщ
#batch_normalization_31/moments/meanMeandense_8/Relu:activations:0>batch_normalization_31/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	м*
	keep_dims(2%
#batch_normalization_31/moments/mean┬
+batch_normalization_31/moments/StopGradientStopGradient,batch_normalization_31/moments/mean:output:0*
T0*
_output_shapes
:	м2-
+batch_normalization_31/moments/StopGradient■
0batch_normalization_31/moments/SquaredDifferenceSquaredDifferencedense_8/Relu:activations:04batch_normalization_31/moments/StopGradient:output:0*
T0*(
_output_shapes
:         м22
0batch_normalization_31/moments/SquaredDifference└
9batch_normalization_31/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_31/moments/variance/reduction_indicesП
'batch_normalization_31/moments/varianceMean4batch_normalization_31/moments/SquaredDifference:z:0Bbatch_normalization_31/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	м*
	keep_dims(2)
'batch_normalization_31/moments/variance╞
&batch_normalization_31/moments/SqueezeSqueeze,batch_normalization_31/moments/mean:output:0*
T0*
_output_shapes	
:м*
squeeze_dims
 2(
&batch_normalization_31/moments/Squeeze╬
(batch_normalization_31/moments/Squeeze_1Squeeze0batch_normalization_31/moments/variance:output:0*
T0*
_output_shapes	
:м*
squeeze_dims
 2*
(batch_normalization_31/moments/Squeeze_1б
,batch_normalization_31/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2.
,batch_normalization_31/AssignMovingAvg/decayъ
5batch_normalization_31/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_31_assignmovingavg_readvariableop_resource*
_output_shapes	
:м*
dtype027
5batch_normalization_31/AssignMovingAvg/ReadVariableOpї
*batch_normalization_31/AssignMovingAvg/subSub=batch_normalization_31/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_31/moments/Squeeze:output:0*
T0*
_output_shapes	
:м2,
*batch_normalization_31/AssignMovingAvg/subь
*batch_normalization_31/AssignMovingAvg/mulMul.batch_normalization_31/AssignMovingAvg/sub:z:05batch_normalization_31/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:м2,
*batch_normalization_31/AssignMovingAvg/mul▓
&batch_normalization_31/AssignMovingAvgAssignSubVariableOp>batch_normalization_31_assignmovingavg_readvariableop_resource.batch_normalization_31/AssignMovingAvg/mul:z:06^batch_normalization_31/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_31/AssignMovingAvgе
.batch_normalization_31/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<20
.batch_normalization_31/AssignMovingAvg_1/decayЁ
7batch_normalization_31/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_31_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:м*
dtype029
7batch_normalization_31/AssignMovingAvg_1/ReadVariableOp¤
,batch_normalization_31/AssignMovingAvg_1/subSub?batch_normalization_31/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_31/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:м2.
,batch_normalization_31/AssignMovingAvg_1/subЇ
,batch_normalization_31/AssignMovingAvg_1/mulMul0batch_normalization_31/AssignMovingAvg_1/sub:z:07batch_normalization_31/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:м2.
,batch_normalization_31/AssignMovingAvg_1/mul╝
(batch_normalization_31/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_31_assignmovingavg_1_readvariableop_resource0batch_normalization_31/AssignMovingAvg_1/mul:z:08^batch_normalization_31/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_31/AssignMovingAvg_1Х
&batch_normalization_31/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2(
&batch_normalization_31/batchnorm/add/y▀
$batch_normalization_31/batchnorm/addAddV21batch_normalization_31/moments/Squeeze_1:output:0/batch_normalization_31/batchnorm/add/y:output:0*
T0*
_output_shapes	
:м2&
$batch_normalization_31/batchnorm/addй
&batch_normalization_31/batchnorm/RsqrtRsqrt(batch_normalization_31/batchnorm/add:z:0*
T0*
_output_shapes	
:м2(
&batch_normalization_31/batchnorm/Rsqrt╬
$batch_normalization_31/batchnorm/mulMuldense_8/Relu:activations:0*batch_normalization_31/batchnorm/Rsqrt:y:0*
T0*(
_output_shapes
:         м2&
$batch_normalization_31/batchnorm/mul┌
&batch_normalization_31/batchnorm/mul_1Mul/batch_normalization_31/moments/Squeeze:output:0*batch_normalization_31/batchnorm/Rsqrt:y:0*
T0*
_output_shapes	
:м2(
&batch_normalization_31/batchnorm/mul_1╪
/batch_normalization_31/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_31_batchnorm_readvariableop_resource*
_output_shapes	
:м*
dtype021
/batch_normalization_31/batchnorm/ReadVariableOp▐
$batch_normalization_31/batchnorm/subSub7batch_normalization_31/batchnorm/ReadVariableOp:value:0*batch_normalization_31/batchnorm/mul_1:z:0*
T0*
_output_shapes	
:м2&
$batch_normalization_31/batchnorm/subр
&batch_normalization_31/batchnorm/add_1AddV2(batch_normalization_31/batchnorm/mul:z:0(batch_normalization_31/batchnorm/sub:z:0*
T0*(
_output_shapes
:         м2(
&batch_normalization_31/batchnorm/add_1y
dropout_18/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout_18/dropout/Const╣
dropout_18/dropout/MulMul*batch_normalization_31/batchnorm/add_1:z:0!dropout_18/dropout/Const:output:0*
T0*(
_output_shapes
:         м2
dropout_18/dropout/MulО
dropout_18/dropout/ShapeShape*batch_normalization_31/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_18/dropout/ShapeЁ
/dropout_18/dropout/random_uniform/RandomUniformRandomUniform!dropout_18/dropout/Shape:output:0*
T0*(
_output_shapes
:         м*
dtype0*
seedА*
seed221
/dropout_18/dropout/random_uniform/RandomUniformЛ
!dropout_18/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2#
!dropout_18/dropout/GreaterEqual/yы
dropout_18/dropout/GreaterEqualGreaterEqual8dropout_18/dropout/random_uniform/RandomUniform:output:0*dropout_18/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         м2!
dropout_18/dropout/GreaterEqualб
dropout_18/dropout/CastCast#dropout_18/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         м2
dropout_18/dropout/Castз
dropout_18/dropout/Mul_1Muldropout_18/dropout/Mul:z:0dropout_18/dropout/Cast:y:0*
T0*(
_output_shapes
:         м2
dropout_18/dropout/Mul_1з
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource* 
_output_shapes
:
м╚*
dtype02
dense_9/MatMul/ReadVariableOpв
dense_9/MatMulMatMuldropout_18/dropout/Mul_1:z:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚2
dense_9/MatMulе
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype02 
dense_9/BiasAdd/ReadVariableOpЮ
dense_9/BiasAddAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚2
dense_9/BiasAddl
dense_9/ReluReludense_9/BiasAdd:z:0*
T0*(
_output_shapes
:         ╚2
dense_9/Relu╕
5batch_normalization_32/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_32/moments/mean/reduction_indicesщ
#batch_normalization_32/moments/meanMeandense_9/Relu:activations:0>batch_normalization_32/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	╚*
	keep_dims(2%
#batch_normalization_32/moments/mean┬
+batch_normalization_32/moments/StopGradientStopGradient,batch_normalization_32/moments/mean:output:0*
T0*
_output_shapes
:	╚2-
+batch_normalization_32/moments/StopGradient■
0batch_normalization_32/moments/SquaredDifferenceSquaredDifferencedense_9/Relu:activations:04batch_normalization_32/moments/StopGradient:output:0*
T0*(
_output_shapes
:         ╚22
0batch_normalization_32/moments/SquaredDifference└
9batch_normalization_32/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_32/moments/variance/reduction_indicesП
'batch_normalization_32/moments/varianceMean4batch_normalization_32/moments/SquaredDifference:z:0Bbatch_normalization_32/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	╚*
	keep_dims(2)
'batch_normalization_32/moments/variance╞
&batch_normalization_32/moments/SqueezeSqueeze,batch_normalization_32/moments/mean:output:0*
T0*
_output_shapes	
:╚*
squeeze_dims
 2(
&batch_normalization_32/moments/Squeeze╬
(batch_normalization_32/moments/Squeeze_1Squeeze0batch_normalization_32/moments/variance:output:0*
T0*
_output_shapes	
:╚*
squeeze_dims
 2*
(batch_normalization_32/moments/Squeeze_1б
,batch_normalization_32/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2.
,batch_normalization_32/AssignMovingAvg/decayъ
5batch_normalization_32/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_32_assignmovingavg_readvariableop_resource*
_output_shapes	
:╚*
dtype027
5batch_normalization_32/AssignMovingAvg/ReadVariableOpї
*batch_normalization_32/AssignMovingAvg/subSub=batch_normalization_32/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_32/moments/Squeeze:output:0*
T0*
_output_shapes	
:╚2,
*batch_normalization_32/AssignMovingAvg/subь
*batch_normalization_32/AssignMovingAvg/mulMul.batch_normalization_32/AssignMovingAvg/sub:z:05batch_normalization_32/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:╚2,
*batch_normalization_32/AssignMovingAvg/mul▓
&batch_normalization_32/AssignMovingAvgAssignSubVariableOp>batch_normalization_32_assignmovingavg_readvariableop_resource.batch_normalization_32/AssignMovingAvg/mul:z:06^batch_normalization_32/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_32/AssignMovingAvgе
.batch_normalization_32/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<20
.batch_normalization_32/AssignMovingAvg_1/decayЁ
7batch_normalization_32/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_32_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:╚*
dtype029
7batch_normalization_32/AssignMovingAvg_1/ReadVariableOp¤
,batch_normalization_32/AssignMovingAvg_1/subSub?batch_normalization_32/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_32/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:╚2.
,batch_normalization_32/AssignMovingAvg_1/subЇ
,batch_normalization_32/AssignMovingAvg_1/mulMul0batch_normalization_32/AssignMovingAvg_1/sub:z:07batch_normalization_32/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:╚2.
,batch_normalization_32/AssignMovingAvg_1/mul╝
(batch_normalization_32/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_32_assignmovingavg_1_readvariableop_resource0batch_normalization_32/AssignMovingAvg_1/mul:z:08^batch_normalization_32/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_32/AssignMovingAvg_1Х
&batch_normalization_32/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2(
&batch_normalization_32/batchnorm/add/y▀
$batch_normalization_32/batchnorm/addAddV21batch_normalization_32/moments/Squeeze_1:output:0/batch_normalization_32/batchnorm/add/y:output:0*
T0*
_output_shapes	
:╚2&
$batch_normalization_32/batchnorm/addй
&batch_normalization_32/batchnorm/RsqrtRsqrt(batch_normalization_32/batchnorm/add:z:0*
T0*
_output_shapes	
:╚2(
&batch_normalization_32/batchnorm/Rsqrt╬
$batch_normalization_32/batchnorm/mulMuldense_9/Relu:activations:0*batch_normalization_32/batchnorm/Rsqrt:y:0*
T0*(
_output_shapes
:         ╚2&
$batch_normalization_32/batchnorm/mul┌
&batch_normalization_32/batchnorm/mul_1Mul/batch_normalization_32/moments/Squeeze:output:0*batch_normalization_32/batchnorm/Rsqrt:y:0*
T0*
_output_shapes	
:╚2(
&batch_normalization_32/batchnorm/mul_1╪
/batch_normalization_32/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_32_batchnorm_readvariableop_resource*
_output_shapes	
:╚*
dtype021
/batch_normalization_32/batchnorm/ReadVariableOp▐
$batch_normalization_32/batchnorm/subSub7batch_normalization_32/batchnorm/ReadVariableOp:value:0*batch_normalization_32/batchnorm/mul_1:z:0*
T0*
_output_shapes	
:╚2&
$batch_normalization_32/batchnorm/subр
&batch_normalization_32/batchnorm/add_1AddV2(batch_normalization_32/batchnorm/mul:z:0(batch_normalization_32/batchnorm/sub:z:0*
T0*(
_output_shapes
:         ╚2(
&batch_normalization_32/batchnorm/add_1y
dropout_19/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout_19/dropout/Const╣
dropout_19/dropout/MulMul*batch_normalization_32/batchnorm/add_1:z:0!dropout_19/dropout/Const:output:0*
T0*(
_output_shapes
:         ╚2
dropout_19/dropout/MulО
dropout_19/dropout/ShapeShape*batch_normalization_32/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_19/dropout/ShapeЁ
/dropout_19/dropout/random_uniform/RandomUniformRandomUniform!dropout_19/dropout/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0*
seedА*
seed221
/dropout_19/dropout/random_uniform/RandomUniformЛ
!dropout_19/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2#
!dropout_19/dropout/GreaterEqual/yы
dropout_19/dropout/GreaterEqualGreaterEqual8dropout_19/dropout/random_uniform/RandomUniform:output:0*dropout_19/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚2!
dropout_19/dropout/GreaterEqualб
dropout_19/dropout/CastCast#dropout_19/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚2
dropout_19/dropout/Castз
dropout_19/dropout/Mul_1Muldropout_19/dropout/Mul:z:0dropout_19/dropout/Cast:y:0*
T0*(
_output_shapes
:         ╚2
dropout_19/dropout/Mul_1й
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes
:	╚d*
dtype02 
dense_10/MatMul/ReadVariableOpд
dense_10/MatMulMatMuldropout_19/dropout/Mul_1:z:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_10/MatMulз
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_10/BiasAdd/ReadVariableOpб
dense_10/BiasAddAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_10/BiasAddn
dense_10/ReluReludense_10/BiasAdd:z:0*
T0*'
_output_shapes
:         d2
dense_10/Relu╕
5batch_normalization_33/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_33/moments/mean/reduction_indicesщ
#batch_normalization_33/moments/meanMeandense_10/Relu:activations:0>batch_normalization_33/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(2%
#batch_normalization_33/moments/mean┴
+batch_normalization_33/moments/StopGradientStopGradient,batch_normalization_33/moments/mean:output:0*
T0*
_output_shapes

:d2-
+batch_normalization_33/moments/StopGradient■
0batch_normalization_33/moments/SquaredDifferenceSquaredDifferencedense_10/Relu:activations:04batch_normalization_33/moments/StopGradient:output:0*
T0*'
_output_shapes
:         d22
0batch_normalization_33/moments/SquaredDifference└
9batch_normalization_33/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_33/moments/variance/reduction_indicesО
'batch_normalization_33/moments/varianceMean4batch_normalization_33/moments/SquaredDifference:z:0Bbatch_normalization_33/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(2)
'batch_normalization_33/moments/variance┼
&batch_normalization_33/moments/SqueezeSqueeze,batch_normalization_33/moments/mean:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 2(
&batch_normalization_33/moments/Squeeze═
(batch_normalization_33/moments/Squeeze_1Squeeze0batch_normalization_33/moments/variance:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 2*
(batch_normalization_33/moments/Squeeze_1б
,batch_normalization_33/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2.
,batch_normalization_33/AssignMovingAvg/decayщ
5batch_normalization_33/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_33_assignmovingavg_readvariableop_resource*
_output_shapes
:d*
dtype027
5batch_normalization_33/AssignMovingAvg/ReadVariableOpЇ
*batch_normalization_33/AssignMovingAvg/subSub=batch_normalization_33/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_33/moments/Squeeze:output:0*
T0*
_output_shapes
:d2,
*batch_normalization_33/AssignMovingAvg/subы
*batch_normalization_33/AssignMovingAvg/mulMul.batch_normalization_33/AssignMovingAvg/sub:z:05batch_normalization_33/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:d2,
*batch_normalization_33/AssignMovingAvg/mul▓
&batch_normalization_33/AssignMovingAvgAssignSubVariableOp>batch_normalization_33_assignmovingavg_readvariableop_resource.batch_normalization_33/AssignMovingAvg/mul:z:06^batch_normalization_33/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_33/AssignMovingAvgе
.batch_normalization_33/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<20
.batch_normalization_33/AssignMovingAvg_1/decayя
7batch_normalization_33/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_33_assignmovingavg_1_readvariableop_resource*
_output_shapes
:d*
dtype029
7batch_normalization_33/AssignMovingAvg_1/ReadVariableOp№
,batch_normalization_33/AssignMovingAvg_1/subSub?batch_normalization_33/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_33/moments/Squeeze_1:output:0*
T0*
_output_shapes
:d2.
,batch_normalization_33/AssignMovingAvg_1/subє
,batch_normalization_33/AssignMovingAvg_1/mulMul0batch_normalization_33/AssignMovingAvg_1/sub:z:07batch_normalization_33/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:d2.
,batch_normalization_33/AssignMovingAvg_1/mul╝
(batch_normalization_33/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_33_assignmovingavg_1_readvariableop_resource0batch_normalization_33/AssignMovingAvg_1/mul:z:08^batch_normalization_33/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_33/AssignMovingAvg_1Х
&batch_normalization_33/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2(
&batch_normalization_33/batchnorm/add/y▐
$batch_normalization_33/batchnorm/addAddV21batch_normalization_33/moments/Squeeze_1:output:0/batch_normalization_33/batchnorm/add/y:output:0*
T0*
_output_shapes
:d2&
$batch_normalization_33/batchnorm/addи
&batch_normalization_33/batchnorm/RsqrtRsqrt(batch_normalization_33/batchnorm/add:z:0*
T0*
_output_shapes
:d2(
&batch_normalization_33/batchnorm/Rsqrt╬
$batch_normalization_33/batchnorm/mulMuldense_10/Relu:activations:0*batch_normalization_33/batchnorm/Rsqrt:y:0*
T0*'
_output_shapes
:         d2&
$batch_normalization_33/batchnorm/mul┘
&batch_normalization_33/batchnorm/mul_1Mul/batch_normalization_33/moments/Squeeze:output:0*batch_normalization_33/batchnorm/Rsqrt:y:0*
T0*
_output_shapes
:d2(
&batch_normalization_33/batchnorm/mul_1╫
/batch_normalization_33/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_33_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype021
/batch_normalization_33/batchnorm/ReadVariableOp▌
$batch_normalization_33/batchnorm/subSub7batch_normalization_33/batchnorm/ReadVariableOp:value:0*batch_normalization_33/batchnorm/mul_1:z:0*
T0*
_output_shapes
:d2&
$batch_normalization_33/batchnorm/sub▀
&batch_normalization_33/batchnorm/add_1AddV2(batch_normalization_33/batchnorm/mul:z:0(batch_normalization_33/batchnorm/sub:z:0*
T0*'
_output_shapes
:         d2(
&batch_normalization_33/batchnorm/add_1y
dropout_20/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout_20/dropout/Const╕
dropout_20/dropout/MulMul*batch_normalization_33/batchnorm/add_1:z:0!dropout_20/dropout/Const:output:0*
T0*'
_output_shapes
:         d2
dropout_20/dropout/MulО
dropout_20/dropout/ShapeShape*batch_normalization_33/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_20/dropout/Shapeя
/dropout_20/dropout/random_uniform/RandomUniformRandomUniform!dropout_20/dropout/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seedА*
seed221
/dropout_20/dropout/random_uniform/RandomUniformЛ
!dropout_20/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2#
!dropout_20/dropout/GreaterEqual/yъ
dropout_20/dropout/GreaterEqualGreaterEqual8dropout_20/dropout/random_uniform/RandomUniform:output:0*dropout_20/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         d2!
dropout_20/dropout/GreaterEqualа
dropout_20/dropout/CastCast#dropout_20/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         d2
dropout_20/dropout/Castж
dropout_20/dropout/Mul_1Muldropout_20/dropout/Mul:z:0dropout_20/dropout/Cast:y:0*
T0*'
_output_shapes
:         d2
dropout_20/dropout/Mul_1и
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_11/MatMul/ReadVariableOpд
dense_11/MatMulMatMuldropout_20/dropout/Mul_1:z:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_11/MatMulз
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_11/BiasAdd/ReadVariableOpб
dense_11/BiasAddAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_11/BiasAddw
dense_11/SoftmaxSoftmaxdense_11/BiasAdd:z:0*
T0*'
_output_shapes
:         2
dense_11/SoftmaxЎ
IdentityIdentitydense_11/Softmax:softmax:0&^batch_normalization_23/AssignNewValue(^batch_normalization_23/AssignNewValue_17^batch_normalization_23/FusedBatchNormV3/ReadVariableOp9^batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_23/ReadVariableOp&^batch_normalization_24/AssignNewValue(^batch_normalization_24/AssignNewValue_17^batch_normalization_24/FusedBatchNormV3/ReadVariableOp9^batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_24/ReadVariableOp&^batch_normalization_25/AssignNewValue(^batch_normalization_25/AssignNewValue_17^batch_normalization_25/FusedBatchNormV3/ReadVariableOp9^batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_25/ReadVariableOp&^batch_normalization_26/AssignNewValue(^batch_normalization_26/AssignNewValue_17^batch_normalization_26/FusedBatchNormV3/ReadVariableOp9^batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_26/ReadVariableOp&^batch_normalization_27/AssignNewValue(^batch_normalization_27/AssignNewValue_17^batch_normalization_27/FusedBatchNormV3/ReadVariableOp9^batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_27/ReadVariableOp&^batch_normalization_28/AssignNewValue(^batch_normalization_28/AssignNewValue_17^batch_normalization_28/FusedBatchNormV3/ReadVariableOp9^batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_28/ReadVariableOp&^batch_normalization_29/AssignNewValue(^batch_normalization_29/AssignNewValue_17^batch_normalization_29/FusedBatchNormV3/ReadVariableOp9^batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_29/ReadVariableOp&^batch_normalization_30/AssignNewValue(^batch_normalization_30/AssignNewValue_17^batch_normalization_30/FusedBatchNormV3/ReadVariableOp9^batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_30/ReadVariableOp'^batch_normalization_31/AssignMovingAvg6^batch_normalization_31/AssignMovingAvg/ReadVariableOp)^batch_normalization_31/AssignMovingAvg_18^batch_normalization_31/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_31/batchnorm/ReadVariableOp'^batch_normalization_32/AssignMovingAvg6^batch_normalization_32/AssignMovingAvg/ReadVariableOp)^batch_normalization_32/AssignMovingAvg_18^batch_normalization_32/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_32/batchnorm/ReadVariableOp'^batch_normalization_33/AssignMovingAvg6^batch_normalization_33/AssignMovingAvg/ReadVariableOp)^batch_normalization_33/AssignMovingAvg_18^batch_normalization_33/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_33/batchnorm/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*┌
_input_shapes╚
┼:         мм: : : : : : : : :А: : : : : : : : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_23/AssignNewValue%batch_normalization_23/AssignNewValue2R
'batch_normalization_23/AssignNewValue_1'batch_normalization_23/AssignNewValue_12p
6batch_normalization_23/FusedBatchNormV3/ReadVariableOp6batch_normalization_23/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_18batch_normalization_23/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_23/ReadVariableOp%batch_normalization_23/ReadVariableOp2N
%batch_normalization_24/AssignNewValue%batch_normalization_24/AssignNewValue2R
'batch_normalization_24/AssignNewValue_1'batch_normalization_24/AssignNewValue_12p
6batch_normalization_24/FusedBatchNormV3/ReadVariableOp6batch_normalization_24/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_18batch_normalization_24/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_24/ReadVariableOp%batch_normalization_24/ReadVariableOp2N
%batch_normalization_25/AssignNewValue%batch_normalization_25/AssignNewValue2R
'batch_normalization_25/AssignNewValue_1'batch_normalization_25/AssignNewValue_12p
6batch_normalization_25/FusedBatchNormV3/ReadVariableOp6batch_normalization_25/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_18batch_normalization_25/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_25/ReadVariableOp%batch_normalization_25/ReadVariableOp2N
%batch_normalization_26/AssignNewValue%batch_normalization_26/AssignNewValue2R
'batch_normalization_26/AssignNewValue_1'batch_normalization_26/AssignNewValue_12p
6batch_normalization_26/FusedBatchNormV3/ReadVariableOp6batch_normalization_26/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_18batch_normalization_26/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_26/ReadVariableOp%batch_normalization_26/ReadVariableOp2N
%batch_normalization_27/AssignNewValue%batch_normalization_27/AssignNewValue2R
'batch_normalization_27/AssignNewValue_1'batch_normalization_27/AssignNewValue_12p
6batch_normalization_27/FusedBatchNormV3/ReadVariableOp6batch_normalization_27/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_18batch_normalization_27/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_27/ReadVariableOp%batch_normalization_27/ReadVariableOp2N
%batch_normalization_28/AssignNewValue%batch_normalization_28/AssignNewValue2R
'batch_normalization_28/AssignNewValue_1'batch_normalization_28/AssignNewValue_12p
6batch_normalization_28/FusedBatchNormV3/ReadVariableOp6batch_normalization_28/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_28/FusedBatchNormV3/ReadVariableOp_18batch_normalization_28/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_28/ReadVariableOp%batch_normalization_28/ReadVariableOp2N
%batch_normalization_29/AssignNewValue%batch_normalization_29/AssignNewValue2R
'batch_normalization_29/AssignNewValue_1'batch_normalization_29/AssignNewValue_12p
6batch_normalization_29/FusedBatchNormV3/ReadVariableOp6batch_normalization_29/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_18batch_normalization_29/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_29/ReadVariableOp%batch_normalization_29/ReadVariableOp2N
%batch_normalization_30/AssignNewValue%batch_normalization_30/AssignNewValue2R
'batch_normalization_30/AssignNewValue_1'batch_normalization_30/AssignNewValue_12p
6batch_normalization_30/FusedBatchNormV3/ReadVariableOp6batch_normalization_30/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_30/FusedBatchNormV3/ReadVariableOp_18batch_normalization_30/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_30/ReadVariableOp%batch_normalization_30/ReadVariableOp2P
&batch_normalization_31/AssignMovingAvg&batch_normalization_31/AssignMovingAvg2n
5batch_normalization_31/AssignMovingAvg/ReadVariableOp5batch_normalization_31/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_31/AssignMovingAvg_1(batch_normalization_31/AssignMovingAvg_12r
7batch_normalization_31/AssignMovingAvg_1/ReadVariableOp7batch_normalization_31/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_31/batchnorm/ReadVariableOp/batch_normalization_31/batchnorm/ReadVariableOp2P
&batch_normalization_32/AssignMovingAvg&batch_normalization_32/AssignMovingAvg2n
5batch_normalization_32/AssignMovingAvg/ReadVariableOp5batch_normalization_32/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_32/AssignMovingAvg_1(batch_normalization_32/AssignMovingAvg_12r
7batch_normalization_32/AssignMovingAvg_1/ReadVariableOp7batch_normalization_32/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_32/batchnorm/ReadVariableOp/batch_normalization_32/batchnorm/ReadVariableOp2P
&batch_normalization_33/AssignMovingAvg&batch_normalization_33/AssignMovingAvg2n
5batch_normalization_33/AssignMovingAvg/ReadVariableOp5batch_normalization_33/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_33/AssignMovingAvg_1(batch_normalization_33/AssignMovingAvg_12r
7batch_normalization_33/AssignMovingAvg_1/ReadVariableOp7batch_normalization_33/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_33/batchnorm/ReadVariableOp/batch_normalization_33/batchnorm/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         мм
 
_user_specified_nameinputs: 

_output_shapes
: :!	

_output_shapes	
:А: 

_output_shapes
: :!

_output_shapes	
:А:!

_output_shapes	
:А:!!

_output_shapes	
:А:!'

_output_shapes	
:А:!-

_output_shapes	
:А
Ш
А
D__inference_conv2d_23_layer_call_and_return_conditional_losses_34383

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЕ
BiasAddAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdd\
ReluReluBiasAdd:z:0*
T0*0
_output_shapes
:         А2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
▄
╕
6__inference_batch_normalization_33_layer_call_fn_34946

inputs
unknown:d
	unknown_0:d
	unknown_1:d
identityИвStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_33_layer_call_and_return_conditional_losses_301512
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
й
f
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_29328

inputs
identityм
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingSAME*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╟
╟
6__inference_batch_normalization_23_layer_call_fn_33501

inputs
unknown
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ии *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_303122
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         ии 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         ии : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ии 
 
_user_specified_nameinputs: 

_output_shapes
: 
╚
╩
6__inference_batch_normalization_27_layer_call_fn_34115

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         CCА*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_305002
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         CCА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         CCА:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         CCА
 
_user_specified_nameinputs:!

_output_shapes	
:А
З	
╟
6__inference_batch_normalization_25_layer_call_fn_33782

inputs
unknown
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_290992
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs: 

_output_shapes
: 
╚
ю
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_29221

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╬
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
а
 
D__inference_conv2d_20_layer_call_and_return_conditional_losses_33909

inputs9
conv2d_readvariableop_resource: А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
: А*
dtype02
Conv2D/ReadVariableOpз
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ООА*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЗ
BiasAddAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ООА2	
BiasAdd^
ReluReluBiasAdd:z:0*
T0*2
_output_shapes 
:         ООА2
Reluв
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*2
_output_shapes 
:         ООА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         РР : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         РР 
 
_user_specified_nameinputs
╝
Т
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_31464

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╠
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*R
_output_shapes@
>:         ддА:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1ю
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*2
_output_shapes 
:         ддА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         ддА:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:Z V
2
_output_shapes 
:         ддА
 
_user_specified_nameinputs:!

_output_shapes	
:А
А
ю
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_34319

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╝
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         ??А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3╚
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*0
_output_shapes
:         ??А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         ??А:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:         ??А
 
_user_specified_nameinputs:!

_output_shapes	
:А
░

ў
B__inference_dense_8_layer_call_and_return_conditional_losses_30674

inputs3
matmul_readvariableop_resource:АРм.
biasadd_readvariableop_resource:	м
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpР
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:АРм*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         м2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:м*
dtype02
BiasAdd/ReadVariableOp~
BiasAddAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         м2	
BiasAddT
ReluReluBiasAdd:z:0*
T0*(
_output_shapes
:         м2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         м2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         АР: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         АР
 
_user_specified_nameinputs
й

Ї
C__inference_dense_11_layer_call_and_return_conditional_losses_35052

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp}
BiasAddAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdd\
SoftmaxSoftmaxBiasAdd:z:0*
T0*'
_output_shapes
:         2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
┤
Т
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_31259

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         CCА:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1ь
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*0
_output_shapes
:         CCА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         CCА:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:         CCА
 
_user_specified_nameinputs:!

_output_shapes	
:А
═
б
)__inference_conv2d_24_layer_call_fn_34512

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_306152
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Р	
╩
6__inference_batch_normalization_24_layer_call_fn_33615

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCall╕
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_289652
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
╬
╩
6__inference_batch_normalization_24_layer_call_fn_33654

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ддА*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_314642
StatefulPartitionedCallЩ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*2
_output_shapes 
:         ддА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         ддА:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:         ддА
 
_user_specified_nameinputs:!

_output_shapes	
:А
А
ю
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_30637

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╝
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3╚
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         А:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:!

_output_shapes	
:А
╚
ю
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_33978

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╬
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
Ц
c
E__inference_dropout_15_layer_call_and_return_conditional_losses_34044

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:         GGА2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         GGА2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         GGА:X T
0
_output_shapes
:         GGА
 
_user_specified_nameinputs
╝
Т
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_33722

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╠
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*R
_output_shapes@
>:         ддА:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1ю
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*2
_output_shapes 
:         ддА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         ддА:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:Z V
2
_output_shapes 
:         ддА
 
_user_specified_nameinputs:!

_output_shapes	
:А
╥
а
)__inference_conv2d_20_layer_call_fn_33898

inputs"
unknown: А
	unknown_0:	А
identityИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ООА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_304272
StatefulPartitionedCallЩ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*2
_output_shapes 
:         ООА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         РР : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         РР 
 
_user_specified_nameinputs
╧
▀
Q__inference_batch_normalization_32_layer_call_and_return_conditional_losses_34857

inputs0
!batchnorm_readvariableop_resource:	╚2
#batchnorm_readvariableop_1_resource:	╚2
#batchnorm_readvariableop_2_resource:	╚
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2У
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:╚*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yЙ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:╚2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:╚2
batchnorm/Rsqrtu
batchnorm/mulMulinputsbatchnorm/Rsqrt:y:0*
T0*(
_output_shapes
:         ╚2
batchnorm/mulЩ
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:╚*
dtype02
batchnorm/ReadVariableOp_1И
batchnorm/mul_1Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/Rsqrt:y:0*
T0*
_output_shapes	
:╚2
batchnorm/mul_1Щ
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:╚*
dtype02
batchnorm/ReadVariableOp_2Д
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_1:z:0*
T0*
_output_shapes	
:╚2
batchnorm/subД
batchnorm/add_1AddV2batchnorm/mul:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         ╚2
batchnorm/add_1╜
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2*
T0*(
_output_shapes
:         ╚2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:         ╚: : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_2:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs
Ш
А
D__inference_conv2d_21_layer_call_and_return_conditional_losses_34076

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         CCА*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЕ
BiasAddAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         CCА2	
BiasAdd\
ReluReluBiasAdd:z:0*
T0*0
_output_shapes
:         CCА2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         CCА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         GGА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         GGА
 
_user_specified_nameinputs
А
ю
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_30594

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╝
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3╚
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         А:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:!

_output_shapes	
:А
═
c
*__inference_dropout_20_layer_call_fn_35015

inputs
identityИвStatefulPartitionedCall▐
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_20_layer_call_and_return_conditional_losses_309372
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         d22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
┴
F
*__inference_dropout_20_layer_call_fn_35010

inputs
identity╞
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_20_layer_call_and_return_conditional_losses_307542
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         d:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
╚
ю
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_29733

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╬
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
Ш
А
D__inference_conv2d_21_layer_call_and_return_conditional_losses_30478

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         CCА*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЕ
BiasAddAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         CCА2	
BiasAdd\
ReluReluBiasAdd:z:0*
T0*0
_output_shapes
:         CCА2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         CCА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         GGА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         GGА
 
_user_specified_nameinputs
Є
c
E__inference_dropout_20_layer_call_and_return_conditional_losses_30754

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:         d2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         d2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         d:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
┤
Т
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_34503

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1ь
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         А:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:!

_output_shapes	
:А
└
▄
Q__inference_batch_normalization_33_layer_call_and_return_conditional_losses_30151

inputs/
!batchnorm_readvariableop_resource:d1
#batchnorm_readvariableop_1_resource:d1
#batchnorm_readvariableop_2_resource:d
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2Т
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yИ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:d2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d2
batchnorm/Rsqrtt
batchnorm/mulMulinputsbatchnorm/Rsqrt:y:0*
T0*'
_output_shapes
:         d2
batchnorm/mulШ
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOp_1З
batchnorm/mul_1Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/Rsqrt:y:0*
T0*
_output_shapes
:d2
batchnorm/mul_1Ш
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOp_2Г
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_1:z:0*
T0*
_output_shapes
:d2
batchnorm/subГ
batchnorm/add_1AddV2batchnorm/mul:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:         d2
batchnorm/add_1╝
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2*
T0*'
_output_shapes
:         d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         d: : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_2:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
°
ы
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_30312

inputs	
scale%
readvariableop_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpз
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╣
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ии : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3╔
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*1
_output_shapes
:         ии 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         ии : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:Y U
1
_output_shapes
:         ии 
 
_user_specified_nameinputs: 

_output_shapes
: 
А
ю
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_34179

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╝
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         CCА:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3╚
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*0
_output_shapes
:         CCА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         CCА:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:         CCА
 
_user_specified_nameinputs:!

_output_shapes	
:А
Ы
╠
,__inference_sequential_5_layer_call_fn_30907
conv2d_17_input!
unknown: 
	unknown_0: 
	unknown_1
	unknown_2: 
	unknown_3: 
	unknown_4: $
	unknown_5: А
	unknown_6:	А
	unknown_7
	unknown_8:	А
	unknown_9:	А

unknown_10:	А%

unknown_11:А 

unknown_12: 

unknown_13

unknown_14: 

unknown_15: 

unknown_16: %

unknown_17: А

unknown_18:	А

unknown_19

unknown_20:	А

unknown_21:	А

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25

unknown_26:	А

unknown_27:	А

unknown_28:	А&

unknown_29:АА

unknown_30:	А

unknown_31

unknown_32:	А

unknown_33:	А

unknown_34:	А&

unknown_35:АА

unknown_36:	А

unknown_37

unknown_38:	А

unknown_39:	А

unknown_40:	А&

unknown_41:АА

unknown_42:	А

unknown_43

unknown_44:	А

unknown_45:	А

unknown_46:	А

unknown_47:АРм

unknown_48:	м

unknown_49:	м

unknown_50:	м

unknown_51:	м

unknown_52:
м╚

unknown_53:	╚

unknown_54:	╚

unknown_55:	╚

unknown_56:	╚

unknown_57:	╚d

unknown_58:d

unknown_59:d

unknown_60:d

unknown_61:d

unknown_62:d

unknown_63:
identityИвStatefulPartitionedCallф	
StatefulPartitionedCallStatefulPartitionedCallconv2d_17_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63*M
TinF
D2B*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *[
_read_only_resource_inputs=
;9
 "#$%&()*+,./0123456789:;<=>?@A*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_307742
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*┌
_input_shapes╚
┼:         мм: : : : : : : : :А: : : : : : : : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:         мм
)
_user_specified_nameconv2d_17_input: 

_output_shapes
: :!	

_output_shapes	
:А: 

_output_shapes
: :!

_output_shapes	
:А:!

_output_shapes	
:А:!!

_output_shapes	
:А:!'

_output_shapes	
:А:!-

_output_shapes	
:А
№
Т
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_29398

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
┤
Т
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_34643

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1ь
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         А:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:!

_output_shapes	
:А
ь
П
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_33548

inputs	
scale%
readvariableop_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpз
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╫
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1¤
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs: 

_output_shapes
: 
╚
╩
6__inference_batch_normalization_28_layer_call_fn_34255

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ??А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_305432
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ??А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         ??А:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ??А
 
_user_specified_nameinputs:!

_output_shapes	
:А
°
ы
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_33565

inputs	
scale%
readvariableop_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpз
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╣
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ии : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3╔
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*1
_output_shapes
:         ии 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         ии : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:Y U
1
_output_shapes
:         ии 
 
_user_specified_nameinputs: 

_output_shapes
: 
Ч&
Ц
Q__inference_batch_normalization_33_layer_call_and_return_conditional_losses_30204

inputs5
'assignmovingavg_readvariableop_resource:d7
)assignmovingavg_1_readvariableop_resource:d/
!batchnorm_readvariableop_resource:d
identityИвAssignMovingAvgвAssignMovingAvg/ReadVariableOpвAssignMovingAvg_1в AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpК
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesП
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:d2
moments/StopGradientд
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:         d2
moments/SquaredDifferenceТ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices▓
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(2
moments/varianceА
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 2
moments/SqueezeИ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg/decayд
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:d*
dtype02 
AssignMovingAvg/ReadVariableOpШ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:d2
AssignMovingAvg/subП
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:d2
AssignMovingAvg/mul┐
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg_1/decayк
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:d*
dtype02"
 AssignMovingAvg_1/ReadVariableOpа
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:d2
AssignMovingAvg_1/subЧ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:d2
AssignMovingAvg_1/mul╔
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yВ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:d2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d2
batchnorm/Rsqrtt
batchnorm/mulMulinputsbatchnorm/Rsqrt:y:0*
T0*'
_output_shapes
:         d2
batchnorm/mul}
batchnorm/mul_1Mulmoments/Squeeze:output:0batchnorm/Rsqrt:y:0*
T0*
_output_shapes
:d2
batchnorm/mul_1Т
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOpБ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_1:z:0*
T0*
_output_shapes
:d2
batchnorm/subГ
batchnorm/add_1AddV2batchnorm/mul:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:         d2
batchnorm/add_1ь
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp*
T0*'
_output_shapes
:         d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         d: : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
№
Т
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_33995

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
Ў
c
E__inference_dropout_18_layer_call_and_return_conditional_losses_34786

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         м2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         м2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         м:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
Ў
c
E__inference_dropout_18_layer_call_and_return_conditional_losses_30692

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         м2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         м2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         м:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
∙
c
*__inference_dropout_14_layer_call_fn_33732

inputs
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ТТА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_14_layer_call_and_return_conditional_losses_314292
StatefulPartitionedCallЩ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*2
_output_shapes 
:         ТТА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         ТТА22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:         ТТА
 
_user_specified_nameinputs
х
F
*__inference_dropout_15_layer_call_fn_34034

inputs
identity╧
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         GGА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_304652
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         GGА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         GGА:X T
0
_output_shapes
:         GGА
 
_user_specified_nameinputs
Т
d
E__inference_dropout_14_layer_call_and_return_conditional_losses_33749

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Const~
dropout/MulMulinputsdropout/Const:output:0*
T0*2
_output_shapes 
:         ТТА2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╠
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*2
_output_shapes 
:         ТТА*
dtype0*
seedА2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y╔
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*2
_output_shapes 
:         ТТА2
dropout/GreaterEqualК
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*2
_output_shapes 
:         ТТА2
dropout/CastЕ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*2
_output_shapes 
:         ТТА2
dropout/Mul_1p
IdentityIdentitydropout/Mul_1:z:0*
T0*2
_output_shapes 
:         ТТА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         ТТА:Z V
2
_output_shapes 
:         ТТА
 
_user_specified_nameinputs
╬
╩
6__inference_batch_normalization_26_layer_call_fn_33961

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ООА*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_313352
StatefulPartitionedCallЩ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*2
_output_shapes 
:         ООА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         ООА:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:         ООА
 
_user_specified_nameinputs:!

_output_shapes	
:А
°
ы
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_33872

inputs	
scale%
readvariableop_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpз
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╣
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         РР : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3╔
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*1
_output_shapes
:         РР 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         РР : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:Y U
1
_output_shapes
:         РР 
 
_user_specified_nameinputs: 

_output_shapes
: 
№
Т
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_34162

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
О	
╩
6__inference_batch_normalization_28_layer_call_fn_34242

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCall╢
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_295202
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
э
F
*__inference_dropout_14_layer_call_fn_33727

inputs
identity╤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ТТА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_14_layer_call_and_return_conditional_losses_303712
PartitionedCallw
IdentityIdentityPartitionedCall:output:0*
T0*2
_output_shapes 
:         ТТА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         ТТА:Z V
2
_output_shapes 
:         ТТА
 
_user_specified_nameinputs
Ц
c
E__inference_dropout_16_layer_call_and_return_conditional_losses_30559

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:           А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:           А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:           А:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
м
П
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_31388

inputs	
scale%
readvariableop_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpз
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╟
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         РР : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1э
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*1
_output_shapes
:         РР 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         РР : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:Y U
1
_output_shapes
:         РР 
 
_user_specified_nameinputs: 

_output_shapes
: 
а
 
D__inference_conv2d_18_layer_call_and_return_conditional_losses_33602

inputs9
conv2d_readvariableop_resource: А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
: А*
dtype02
Conv2D/ReadVariableOpз
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ддА*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЗ
BiasAddAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ддА2	
BiasAdd^
ReluReluBiasAdd:z:0*
T0*2
_output_shapes 
:         ддА2
Reluв
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*2
_output_shapes 
:         ддА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ии : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ии 
 
_user_specified_nameinputs
┴
d
E__inference_dropout_19_layer_call_and_return_conditional_losses_34915

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         ╚2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape┬
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0*
seedА2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         ╚2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         ╚2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ╚:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs
╚
ю
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_29355

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╬
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
м

Ў
B__inference_dense_9_layer_call_and_return_conditional_losses_34818

inputs2
matmul_readvariableop_resource:
м╚.
biasadd_readvariableop_resource:	╚
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
м╚*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype02
BiasAdd/ReadVariableOp~
BiasAddAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚2	
BiasAddT
ReluReluBiasAdd:z:0*
T0*(
_output_shapes
:         ╚2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         ╚2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         м: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
Ў
c
E__inference_dropout_19_layer_call_and_return_conditional_losses_30723

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         ╚2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         ╚2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ╚:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs
╪
K
/__inference_max_pooling2d_8_layer_call_fn_29078

inputs
identityю
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_290722
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╚
ю
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_29477

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╬
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
к
g
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_29840

inputs
identityм
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingSAME*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┌
L
0__inference_max_pooling2d_11_layer_call_fn_29846

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_298402
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
В
d
E__inference_dropout_16_layer_call_and_return_conditional_losses_34363

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:           А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╩
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:           А*
dtype0*
seedА2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y╟
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:           А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:           А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:           А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:           А:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
═
б
)__inference_conv2d_21_layer_call_fn_34065

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         CCА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_304782
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         CCА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         GGА: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         GGА
 
_user_specified_nameinputs
А
ю
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_34486

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╝
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3╚
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         А:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:!

_output_shapes	
:А
╧
▀
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_34740

inputs0
!batchnorm_readvariableop_resource:	м2
#batchnorm_readvariableop_1_resource:	м2
#batchnorm_readvariableop_2_resource:	м
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2У
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:м*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yЙ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:м2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:м2
batchnorm/Rsqrtu
batchnorm/mulMulinputsbatchnorm/Rsqrt:y:0*
T0*(
_output_shapes
:         м2
batchnorm/mulЩ
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:м*
dtype02
batchnorm/ReadVariableOp_1И
batchnorm/mul_1Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/Rsqrt:y:0*
T0*
_output_shapes	
:м2
batchnorm/mul_1Щ
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:м*
dtype02
batchnorm/ReadVariableOp_2Д
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_1:z:0*
T0*
_output_shapes	
:м2
batchnorm/subД
batchnorm/add_1AddV2batchnorm/mul:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         м2
batchnorm/add_1╜
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2*
T0*(
_output_shapes
:         м2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:         м: : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_2:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
╕
d
E__inference_dropout_20_layer_call_and_return_conditional_losses_30937

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         d2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape┴
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seedА2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y╛
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         d2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         d2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         d2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         d:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
А
ю
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_30543

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╝
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         ??А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3╚
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*0
_output_shapes
:         ??А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         ??А:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:         ??А
 
_user_specified_nameinputs:!

_output_shapes	
:А
░&
Щ
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_34771

inputs6
'assignmovingavg_readvariableop_resource:	м8
)assignmovingavg_1_readvariableop_resource:	м0
!batchnorm_readvariableop_resource:	м
identityИвAssignMovingAvgвAssignMovingAvg/ReadVariableOpвAssignMovingAvg_1в AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpК
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesР
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	м*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	м2
moments/StopGradientе
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         м2
moments/SquaredDifferenceТ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices│
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	м*
	keep_dims(2
moments/varianceБ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:м*
squeeze_dims
 2
moments/SqueezeЙ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:м*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg/decayе
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:м*
dtype02 
AssignMovingAvg/ReadVariableOpЩ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:м2
AssignMovingAvg/subР
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:м2
AssignMovingAvg/mul┐
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg_1/decayл
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:м*
dtype02"
 AssignMovingAvg_1/ReadVariableOpб
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:м2
AssignMovingAvg_1/subШ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:м2
AssignMovingAvg_1/mul╔
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yГ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:м2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:м2
batchnorm/Rsqrtu
batchnorm/mulMulinputsbatchnorm/Rsqrt:y:0*
T0*(
_output_shapes
:         м2
batchnorm/mul~
batchnorm/mul_1Mulmoments/Squeeze:output:0batchnorm/Rsqrt:y:0*
T0*
_output_shapes	
:м2
batchnorm/mul_1У
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:м*
dtype02
batchnorm/ReadVariableOpВ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_1:z:0*
T0*
_output_shapes	
:м2
batchnorm/subД
batchnorm/add_1AddV2batchnorm/mul:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         м2
batchnorm/add_1э
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp*
T0*(
_output_shapes
:         м2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:         м: : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
И
ю
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_30355

inputs	
scale&
readvariableop_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOpи
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╛
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*R
_output_shapes@
>:         ддА:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3╩
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*2
_output_shapes 
:         ддА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         ддА:А: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:Z V
2
_output_shapes 
:         ддА
 
_user_specified_nameinputs:!

_output_shapes	
:А
┼
╟
6__inference_batch_normalization_25_layer_call_fn_33821

inputs
unknown
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         РР *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_313882
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         РР 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         РР : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         РР 
 
_user_specified_nameinputs: 

_output_shapes
: 
О	
╩
6__inference_batch_normalization_30_layer_call_fn_34549

inputs
unknown
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCall╢
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_297762
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:,                           А:А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:!

_output_shapes	
:А
й
f
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_29072

inputs
identityм
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingSAME*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
мЯ
═A
 __inference__wrapped_model_28822
conv2d_17_inputO
5sequential_5_conv2d_17_conv2d_readvariableop_resource: D
6sequential_5_conv2d_17_biasadd_readvariableop_resource: -
)sequential_5_batch_normalization_23_scaleI
;sequential_5_batch_normalization_23_readvariableop_resource: Z
Lsequential_5_batch_normalization_23_fusedbatchnormv3_readvariableop_resource: \
Nsequential_5_batch_normalization_23_fusedbatchnormv3_readvariableop_1_resource: P
5sequential_5_conv2d_18_conv2d_readvariableop_resource: АE
6sequential_5_conv2d_18_biasadd_readvariableop_resource:	А-
)sequential_5_batch_normalization_24_scaleJ
;sequential_5_batch_normalization_24_readvariableop_resource:	А[
Lsequential_5_batch_normalization_24_fusedbatchnormv3_readvariableop_resource:	А]
Nsequential_5_batch_normalization_24_fusedbatchnormv3_readvariableop_1_resource:	АP
5sequential_5_conv2d_19_conv2d_readvariableop_resource:А D
6sequential_5_conv2d_19_biasadd_readvariableop_resource: -
)sequential_5_batch_normalization_25_scaleI
;sequential_5_batch_normalization_25_readvariableop_resource: Z
Lsequential_5_batch_normalization_25_fusedbatchnormv3_readvariableop_resource: \
Nsequential_5_batch_normalization_25_fusedbatchnormv3_readvariableop_1_resource: P
5sequential_5_conv2d_20_conv2d_readvariableop_resource: АE
6sequential_5_conv2d_20_biasadd_readvariableop_resource:	А-
)sequential_5_batch_normalization_26_scaleJ
;sequential_5_batch_normalization_26_readvariableop_resource:	А[
Lsequential_5_batch_normalization_26_fusedbatchnormv3_readvariableop_resource:	А]
Nsequential_5_batch_normalization_26_fusedbatchnormv3_readvariableop_1_resource:	АQ
5sequential_5_conv2d_21_conv2d_readvariableop_resource:ААE
6sequential_5_conv2d_21_biasadd_readvariableop_resource:	А-
)sequential_5_batch_normalization_27_scaleJ
;sequential_5_batch_normalization_27_readvariableop_resource:	А[
Lsequential_5_batch_normalization_27_fusedbatchnormv3_readvariableop_resource:	А]
Nsequential_5_batch_normalization_27_fusedbatchnormv3_readvariableop_1_resource:	АQ
5sequential_5_conv2d_22_conv2d_readvariableop_resource:ААE
6sequential_5_conv2d_22_biasadd_readvariableop_resource:	А-
)sequential_5_batch_normalization_28_scaleJ
;sequential_5_batch_normalization_28_readvariableop_resource:	А[
Lsequential_5_batch_normalization_28_fusedbatchnormv3_readvariableop_resource:	А]
Nsequential_5_batch_normalization_28_fusedbatchnormv3_readvariableop_1_resource:	АQ
5sequential_5_conv2d_23_conv2d_readvariableop_resource:ААE
6sequential_5_conv2d_23_biasadd_readvariableop_resource:	А-
)sequential_5_batch_normalization_29_scaleJ
;sequential_5_batch_normalization_29_readvariableop_resource:	А[
Lsequential_5_batch_normalization_29_fusedbatchnormv3_readvariableop_resource:	А]
Nsequential_5_batch_normalization_29_fusedbatchnormv3_readvariableop_1_resource:	АQ
5sequential_5_conv2d_24_conv2d_readvariableop_resource:ААE
6sequential_5_conv2d_24_biasadd_readvariableop_resource:	А-
)sequential_5_batch_normalization_30_scaleJ
;sequential_5_batch_normalization_30_readvariableop_resource:	А[
Lsequential_5_batch_normalization_30_fusedbatchnormv3_readvariableop_resource:	А]
Nsequential_5_batch_normalization_30_fusedbatchnormv3_readvariableop_1_resource:	АH
3sequential_5_dense_8_matmul_readvariableop_resource:АРмC
4sequential_5_dense_8_biasadd_readvariableop_resource:	мT
Esequential_5_batch_normalization_31_batchnorm_readvariableop_resource:	мV
Gsequential_5_batch_normalization_31_batchnorm_readvariableop_1_resource:	мV
Gsequential_5_batch_normalization_31_batchnorm_readvariableop_2_resource:	мG
3sequential_5_dense_9_matmul_readvariableop_resource:
м╚C
4sequential_5_dense_9_biasadd_readvariableop_resource:	╚T
Esequential_5_batch_normalization_32_batchnorm_readvariableop_resource:	╚V
Gsequential_5_batch_normalization_32_batchnorm_readvariableop_1_resource:	╚V
Gsequential_5_batch_normalization_32_batchnorm_readvariableop_2_resource:	╚G
4sequential_5_dense_10_matmul_readvariableop_resource:	╚dC
5sequential_5_dense_10_biasadd_readvariableop_resource:dS
Esequential_5_batch_normalization_33_batchnorm_readvariableop_resource:dU
Gsequential_5_batch_normalization_33_batchnorm_readvariableop_1_resource:dU
Gsequential_5_batch_normalization_33_batchnorm_readvariableop_2_resource:dF
4sequential_5_dense_11_matmul_readvariableop_resource:dC
5sequential_5_dense_11_biasadd_readvariableop_resource:
identityИвCsequential_5/batch_normalization_23/FusedBatchNormV3/ReadVariableOpвEsequential_5/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1в2sequential_5/batch_normalization_23/ReadVariableOpвCsequential_5/batch_normalization_24/FusedBatchNormV3/ReadVariableOpвEsequential_5/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1в2sequential_5/batch_normalization_24/ReadVariableOpвCsequential_5/batch_normalization_25/FusedBatchNormV3/ReadVariableOpвEsequential_5/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1в2sequential_5/batch_normalization_25/ReadVariableOpвCsequential_5/batch_normalization_26/FusedBatchNormV3/ReadVariableOpвEsequential_5/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1в2sequential_5/batch_normalization_26/ReadVariableOpвCsequential_5/batch_normalization_27/FusedBatchNormV3/ReadVariableOpвEsequential_5/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1в2sequential_5/batch_normalization_27/ReadVariableOpвCsequential_5/batch_normalization_28/FusedBatchNormV3/ReadVariableOpвEsequential_5/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1в2sequential_5/batch_normalization_28/ReadVariableOpвCsequential_5/batch_normalization_29/FusedBatchNormV3/ReadVariableOpвEsequential_5/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1в2sequential_5/batch_normalization_29/ReadVariableOpвCsequential_5/batch_normalization_30/FusedBatchNormV3/ReadVariableOpвEsequential_5/batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1в2sequential_5/batch_normalization_30/ReadVariableOpв<sequential_5/batch_normalization_31/batchnorm/ReadVariableOpв>sequential_5/batch_normalization_31/batchnorm/ReadVariableOp_1в>sequential_5/batch_normalization_31/batchnorm/ReadVariableOp_2в<sequential_5/batch_normalization_32/batchnorm/ReadVariableOpв>sequential_5/batch_normalization_32/batchnorm/ReadVariableOp_1в>sequential_5/batch_normalization_32/batchnorm/ReadVariableOp_2в<sequential_5/batch_normalization_33/batchnorm/ReadVariableOpв>sequential_5/batch_normalization_33/batchnorm/ReadVariableOp_1в>sequential_5/batch_normalization_33/batchnorm/ReadVariableOp_2в-sequential_5/conv2d_17/BiasAdd/ReadVariableOpв,sequential_5/conv2d_17/Conv2D/ReadVariableOpв-sequential_5/conv2d_18/BiasAdd/ReadVariableOpв,sequential_5/conv2d_18/Conv2D/ReadVariableOpв-sequential_5/conv2d_19/BiasAdd/ReadVariableOpв,sequential_5/conv2d_19/Conv2D/ReadVariableOpв-sequential_5/conv2d_20/BiasAdd/ReadVariableOpв,sequential_5/conv2d_20/Conv2D/ReadVariableOpв-sequential_5/conv2d_21/BiasAdd/ReadVariableOpв,sequential_5/conv2d_21/Conv2D/ReadVariableOpв-sequential_5/conv2d_22/BiasAdd/ReadVariableOpв,sequential_5/conv2d_22/Conv2D/ReadVariableOpв-sequential_5/conv2d_23/BiasAdd/ReadVariableOpв,sequential_5/conv2d_23/Conv2D/ReadVariableOpв-sequential_5/conv2d_24/BiasAdd/ReadVariableOpв,sequential_5/conv2d_24/Conv2D/ReadVariableOpв,sequential_5/dense_10/BiasAdd/ReadVariableOpв+sequential_5/dense_10/MatMul/ReadVariableOpв,sequential_5/dense_11/BiasAdd/ReadVariableOpв+sequential_5/dense_11/MatMul/ReadVariableOpв+sequential_5/dense_8/BiasAdd/ReadVariableOpв*sequential_5/dense_8/MatMul/ReadVariableOpв+sequential_5/dense_9/BiasAdd/ReadVariableOpв*sequential_5/dense_9/MatMul/ReadVariableOp┌
,sequential_5/conv2d_17/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02.
,sequential_5/conv2d_17/Conv2D/ReadVariableOpЇ
sequential_5/conv2d_17/Conv2DConv2Dconv2d_17_input4sequential_5/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ии *
paddingVALID*
strides
2
sequential_5/conv2d_17/Conv2D╤
-sequential_5/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_17_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_5/conv2d_17/BiasAdd/ReadVariableOpт
sequential_5/conv2d_17/BiasAddAdd&sequential_5/conv2d_17/Conv2D:output:05sequential_5/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ии 2 
sequential_5/conv2d_17/BiasAddв
sequential_5/conv2d_17/ReluRelu"sequential_5/conv2d_17/BiasAdd:z:0*
T0*1
_output_shapes
:         ии 2
sequential_5/conv2d_17/Reluр
2sequential_5/batch_normalization_23/ReadVariableOpReadVariableOp;sequential_5_batch_normalization_23_readvariableop_resource*
_output_shapes
: *
dtype024
2sequential_5/batch_normalization_23/ReadVariableOpУ
Csequential_5/batch_normalization_23/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_5_batch_normalization_23_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02E
Csequential_5/batch_normalization_23/FusedBatchNormV3/ReadVariableOpЩ
Esequential_5/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_5_batch_normalization_23_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02G
Esequential_5/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1┤
4sequential_5/batch_normalization_23/FusedBatchNormV3FusedBatchNormV3)sequential_5/conv2d_17/Relu:activations:0)sequential_5_batch_normalization_23_scale:sequential_5/batch_normalization_23/ReadVariableOp:value:0Ksequential_5/batch_normalization_23/FusedBatchNormV3/ReadVariableOp:value:0Msequential_5/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ии : : : : :*
epsilon%oГ:*
is_training( 26
4sequential_5/batch_normalization_23/FusedBatchNormV3█
,sequential_5/conv2d_18/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_18_conv2d_readvariableop_resource*'
_output_shapes
: А*
dtype02.
,sequential_5/conv2d_18/Conv2D/ReadVariableOpЮ
sequential_5/conv2d_18/Conv2DConv2D8sequential_5/batch_normalization_23/FusedBatchNormV3:y:04sequential_5/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ддА*
paddingVALID*
strides
2
sequential_5/conv2d_18/Conv2D╥
-sequential_5/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_18_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02/
-sequential_5/conv2d_18/BiasAdd/ReadVariableOpу
sequential_5/conv2d_18/BiasAddAdd&sequential_5/conv2d_18/Conv2D:output:05sequential_5/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ддА2 
sequential_5/conv2d_18/BiasAddг
sequential_5/conv2d_18/ReluRelu"sequential_5/conv2d_18/BiasAdd:z:0*
T0*2
_output_shapes 
:         ддА2
sequential_5/conv2d_18/Reluс
2sequential_5/batch_normalization_24/ReadVariableOpReadVariableOp;sequential_5_batch_normalization_24_readvariableop_resource*
_output_shapes	
:А*
dtype024
2sequential_5/batch_normalization_24/ReadVariableOpФ
Csequential_5/batch_normalization_24/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_5_batch_normalization_24_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02E
Csequential_5/batch_normalization_24/FusedBatchNormV3/ReadVariableOpЪ
Esequential_5/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_5_batch_normalization_24_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02G
Esequential_5/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1╣
4sequential_5/batch_normalization_24/FusedBatchNormV3FusedBatchNormV3)sequential_5/conv2d_18/Relu:activations:0)sequential_5_batch_normalization_24_scale:sequential_5/batch_normalization_24/ReadVariableOp:value:0Ksequential_5/batch_normalization_24/FusedBatchNormV3/ReadVariableOp:value:0Msequential_5/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*R
_output_shapes@
>:         ддА:А:А:А:А:*
epsilon%oГ:*
is_training( 26
4sequential_5/batch_normalization_24/FusedBatchNormV3А
$sequential_5/max_pooling2d_8/MaxPoolMaxPool8sequential_5/batch_normalization_24/FusedBatchNormV3:y:0*2
_output_shapes 
:         ТТА*
ksize
*
paddingSAME*
strides
2&
$sequential_5/max_pooling2d_8/MaxPool╝
 sequential_5/dropout_14/IdentityIdentity-sequential_5/max_pooling2d_8/MaxPool:output:0*
T0*2
_output_shapes 
:         ТТА2"
 sequential_5/dropout_14/Identity█
,sequential_5/conv2d_19/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_19_conv2d_readvariableop_resource*'
_output_shapes
:А *
dtype02.
,sequential_5/conv2d_19/Conv2D/ReadVariableOpО
sequential_5/conv2d_19/Conv2DConv2D)sequential_5/dropout_14/Identity:output:04sequential_5/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         РР *
paddingVALID*
strides
2
sequential_5/conv2d_19/Conv2D╤
-sequential_5/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_5/conv2d_19/BiasAdd/ReadVariableOpт
sequential_5/conv2d_19/BiasAddAdd&sequential_5/conv2d_19/Conv2D:output:05sequential_5/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         РР 2 
sequential_5/conv2d_19/BiasAddв
sequential_5/conv2d_19/ReluRelu"sequential_5/conv2d_19/BiasAdd:z:0*
T0*1
_output_shapes
:         РР 2
sequential_5/conv2d_19/Reluр
2sequential_5/batch_normalization_25/ReadVariableOpReadVariableOp;sequential_5_batch_normalization_25_readvariableop_resource*
_output_shapes
: *
dtype024
2sequential_5/batch_normalization_25/ReadVariableOpУ
Csequential_5/batch_normalization_25/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_5_batch_normalization_25_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02E
Csequential_5/batch_normalization_25/FusedBatchNormV3/ReadVariableOpЩ
Esequential_5/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_5_batch_normalization_25_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02G
Esequential_5/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1┤
4sequential_5/batch_normalization_25/FusedBatchNormV3FusedBatchNormV3)sequential_5/conv2d_19/Relu:activations:0)sequential_5_batch_normalization_25_scale:sequential_5/batch_normalization_25/ReadVariableOp:value:0Ksequential_5/batch_normalization_25/FusedBatchNormV3/ReadVariableOp:value:0Msequential_5/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         РР : : : : :*
epsilon%oГ:*
is_training( 26
4sequential_5/batch_normalization_25/FusedBatchNormV3█
,sequential_5/conv2d_20/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_20_conv2d_readvariableop_resource*'
_output_shapes
: А*
dtype02.
,sequential_5/conv2d_20/Conv2D/ReadVariableOpЮ
sequential_5/conv2d_20/Conv2DConv2D8sequential_5/batch_normalization_25/FusedBatchNormV3:y:04sequential_5/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ООА*
paddingVALID*
strides
2
sequential_5/conv2d_20/Conv2D╥
-sequential_5/conv2d_20/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_20_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02/
-sequential_5/conv2d_20/BiasAdd/ReadVariableOpу
sequential_5/conv2d_20/BiasAddAdd&sequential_5/conv2d_20/Conv2D:output:05sequential_5/conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ООА2 
sequential_5/conv2d_20/BiasAddг
sequential_5/conv2d_20/ReluRelu"sequential_5/conv2d_20/BiasAdd:z:0*
T0*2
_output_shapes 
:         ООА2
sequential_5/conv2d_20/Reluс
2sequential_5/batch_normalization_26/ReadVariableOpReadVariableOp;sequential_5_batch_normalization_26_readvariableop_resource*
_output_shapes	
:А*
dtype024
2sequential_5/batch_normalization_26/ReadVariableOpФ
Csequential_5/batch_normalization_26/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_5_batch_normalization_26_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02E
Csequential_5/batch_normalization_26/FusedBatchNormV3/ReadVariableOpЪ
Esequential_5/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_5_batch_normalization_26_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02G
Esequential_5/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1╣
4sequential_5/batch_normalization_26/FusedBatchNormV3FusedBatchNormV3)sequential_5/conv2d_20/Relu:activations:0)sequential_5_batch_normalization_26_scale:sequential_5/batch_normalization_26/ReadVariableOp:value:0Ksequential_5/batch_normalization_26/FusedBatchNormV3/ReadVariableOp:value:0Msequential_5/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*R
_output_shapes@
>:         ООА:А:А:А:А:*
epsilon%oГ:*
is_training( 26
4sequential_5/batch_normalization_26/FusedBatchNormV3■
$sequential_5/max_pooling2d_9/MaxPoolMaxPool8sequential_5/batch_normalization_26/FusedBatchNormV3:y:0*0
_output_shapes
:         GGА*
ksize
*
paddingSAME*
strides
2&
$sequential_5/max_pooling2d_9/MaxPool║
 sequential_5/dropout_15/IdentityIdentity-sequential_5/max_pooling2d_9/MaxPool:output:0*
T0*0
_output_shapes
:         GGА2"
 sequential_5/dropout_15/Identity▄
,sequential_5/conv2d_21/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_21_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02.
,sequential_5/conv2d_21/Conv2D/ReadVariableOpН
sequential_5/conv2d_21/Conv2DConv2D)sequential_5/dropout_15/Identity:output:04sequential_5/conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         CCА*
paddingVALID*
strides
2
sequential_5/conv2d_21/Conv2D╥
-sequential_5/conv2d_21/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_21_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02/
-sequential_5/conv2d_21/BiasAdd/ReadVariableOpс
sequential_5/conv2d_21/BiasAddAdd&sequential_5/conv2d_21/Conv2D:output:05sequential_5/conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         CCА2 
sequential_5/conv2d_21/BiasAddб
sequential_5/conv2d_21/ReluRelu"sequential_5/conv2d_21/BiasAdd:z:0*
T0*0
_output_shapes
:         CCА2
sequential_5/conv2d_21/Reluс
2sequential_5/batch_normalization_27/ReadVariableOpReadVariableOp;sequential_5_batch_normalization_27_readvariableop_resource*
_output_shapes	
:А*
dtype024
2sequential_5/batch_normalization_27/ReadVariableOpФ
Csequential_5/batch_normalization_27/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_5_batch_normalization_27_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02E
Csequential_5/batch_normalization_27/FusedBatchNormV3/ReadVariableOpЪ
Esequential_5/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_5_batch_normalization_27_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02G
Esequential_5/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1╖
4sequential_5/batch_normalization_27/FusedBatchNormV3FusedBatchNormV3)sequential_5/conv2d_21/Relu:activations:0)sequential_5_batch_normalization_27_scale:sequential_5/batch_normalization_27/ReadVariableOp:value:0Ksequential_5/batch_normalization_27/FusedBatchNormV3/ReadVariableOp:value:0Msequential_5/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         CCА:А:А:А:А:*
epsilon%oГ:*
is_training( 26
4sequential_5/batch_normalization_27/FusedBatchNormV3▄
,sequential_5/conv2d_22/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_22_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02.
,sequential_5/conv2d_22/Conv2D/ReadVariableOpЬ
sequential_5/conv2d_22/Conv2DConv2D8sequential_5/batch_normalization_27/FusedBatchNormV3:y:04sequential_5/conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ??А*
paddingVALID*
strides
2
sequential_5/conv2d_22/Conv2D╥
-sequential_5/conv2d_22/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_22_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02/
-sequential_5/conv2d_22/BiasAdd/ReadVariableOpс
sequential_5/conv2d_22/BiasAddAdd&sequential_5/conv2d_22/Conv2D:output:05sequential_5/conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ??А2 
sequential_5/conv2d_22/BiasAddб
sequential_5/conv2d_22/ReluRelu"sequential_5/conv2d_22/BiasAdd:z:0*
T0*0
_output_shapes
:         ??А2
sequential_5/conv2d_22/Reluс
2sequential_5/batch_normalization_28/ReadVariableOpReadVariableOp;sequential_5_batch_normalization_28_readvariableop_resource*
_output_shapes	
:А*
dtype024
2sequential_5/batch_normalization_28/ReadVariableOpФ
Csequential_5/batch_normalization_28/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_5_batch_normalization_28_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02E
Csequential_5/batch_normalization_28/FusedBatchNormV3/ReadVariableOpЪ
Esequential_5/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_5_batch_normalization_28_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02G
Esequential_5/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1╖
4sequential_5/batch_normalization_28/FusedBatchNormV3FusedBatchNormV3)sequential_5/conv2d_22/Relu:activations:0)sequential_5_batch_normalization_28_scale:sequential_5/batch_normalization_28/ReadVariableOp:value:0Ksequential_5/batch_normalization_28/FusedBatchNormV3/ReadVariableOp:value:0Msequential_5/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         ??А:А:А:А:А:*
epsilon%oГ:*
is_training( 26
4sequential_5/batch_normalization_28/FusedBatchNormV3А
%sequential_5/max_pooling2d_10/MaxPoolMaxPool8sequential_5/batch_normalization_28/FusedBatchNormV3:y:0*0
_output_shapes
:           А*
ksize
*
paddingSAME*
strides
2'
%sequential_5/max_pooling2d_10/MaxPool╗
 sequential_5/dropout_16/IdentityIdentity.sequential_5/max_pooling2d_10/MaxPool:output:0*
T0*0
_output_shapes
:           А2"
 sequential_5/dropout_16/Identity▄
,sequential_5/conv2d_23/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_23_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02.
,sequential_5/conv2d_23/Conv2D/ReadVariableOpН
sequential_5/conv2d_23/Conv2DConv2D)sequential_5/dropout_16/Identity:output:04sequential_5/conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
sequential_5/conv2d_23/Conv2D╥
-sequential_5/conv2d_23/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_23_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02/
-sequential_5/conv2d_23/BiasAdd/ReadVariableOpс
sequential_5/conv2d_23/BiasAddAdd&sequential_5/conv2d_23/Conv2D:output:05sequential_5/conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2 
sequential_5/conv2d_23/BiasAddб
sequential_5/conv2d_23/ReluRelu"sequential_5/conv2d_23/BiasAdd:z:0*
T0*0
_output_shapes
:         А2
sequential_5/conv2d_23/Reluс
2sequential_5/batch_normalization_29/ReadVariableOpReadVariableOp;sequential_5_batch_normalization_29_readvariableop_resource*
_output_shapes	
:А*
dtype024
2sequential_5/batch_normalization_29/ReadVariableOpФ
Csequential_5/batch_normalization_29/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_5_batch_normalization_29_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02E
Csequential_5/batch_normalization_29/FusedBatchNormV3/ReadVariableOpЪ
Esequential_5/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_5_batch_normalization_29_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02G
Esequential_5/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1╖
4sequential_5/batch_normalization_29/FusedBatchNormV3FusedBatchNormV3)sequential_5/conv2d_23/Relu:activations:0)sequential_5_batch_normalization_29_scale:sequential_5/batch_normalization_29/ReadVariableOp:value:0Ksequential_5/batch_normalization_29/FusedBatchNormV3/ReadVariableOp:value:0Msequential_5/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 26
4sequential_5/batch_normalization_29/FusedBatchNormV3▄
,sequential_5/conv2d_24/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_24_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02.
,sequential_5/conv2d_24/Conv2D/ReadVariableOpЬ
sequential_5/conv2d_24/Conv2DConv2D8sequential_5/batch_normalization_29/FusedBatchNormV3:y:04sequential_5/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
sequential_5/conv2d_24/Conv2D╥
-sequential_5/conv2d_24/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_24_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02/
-sequential_5/conv2d_24/BiasAdd/ReadVariableOpс
sequential_5/conv2d_24/BiasAddAdd&sequential_5/conv2d_24/Conv2D:output:05sequential_5/conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2 
sequential_5/conv2d_24/BiasAddб
sequential_5/conv2d_24/ReluRelu"sequential_5/conv2d_24/BiasAdd:z:0*
T0*0
_output_shapes
:         А2
sequential_5/conv2d_24/Reluс
2sequential_5/batch_normalization_30/ReadVariableOpReadVariableOp;sequential_5_batch_normalization_30_readvariableop_resource*
_output_shapes	
:А*
dtype024
2sequential_5/batch_normalization_30/ReadVariableOpФ
Csequential_5/batch_normalization_30/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_5_batch_normalization_30_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02E
Csequential_5/batch_normalization_30/FusedBatchNormV3/ReadVariableOpЪ
Esequential_5/batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_5_batch_normalization_30_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02G
Esequential_5/batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1╖
4sequential_5/batch_normalization_30/FusedBatchNormV3FusedBatchNormV3)sequential_5/conv2d_24/Relu:activations:0)sequential_5_batch_normalization_30_scale:sequential_5/batch_normalization_30/ReadVariableOp:value:0Ksequential_5/batch_normalization_30/FusedBatchNormV3/ReadVariableOp:value:0Msequential_5/batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 26
4sequential_5/batch_normalization_30/FusedBatchNormV3А
%sequential_5/max_pooling2d_11/MaxPoolMaxPool8sequential_5/batch_normalization_30/FusedBatchNormV3:y:0*0
_output_shapes
:         А*
ksize
*
paddingSAME*
strides
2'
%sequential_5/max_pooling2d_11/MaxPool╗
 sequential_5/dropout_17/IdentityIdentity.sequential_5/max_pooling2d_11/MaxPool:output:0*
T0*0
_output_shapes
:         А2"
 sequential_5/dropout_17/IdentityН
sequential_5/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"     И 2
sequential_5/flatten_2/Const╤
sequential_5/flatten_2/ReshapeReshape)sequential_5/dropout_17/Identity:output:0%sequential_5/flatten_2/Const:output:0*
T0*)
_output_shapes
:         АР2 
sequential_5/flatten_2/Reshape╧
*sequential_5/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_8_matmul_readvariableop_resource*!
_output_shapes
:АРм*
dtype02,
*sequential_5/dense_8/MatMul/ReadVariableOp╘
sequential_5/dense_8/MatMulMatMul'sequential_5/flatten_2/Reshape:output:02sequential_5/dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         м2
sequential_5/dense_8/MatMul╠
+sequential_5/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_8_biasadd_readvariableop_resource*
_output_shapes	
:м*
dtype02-
+sequential_5/dense_8/BiasAdd/ReadVariableOp╥
sequential_5/dense_8/BiasAddAdd%sequential_5/dense_8/MatMul:product:03sequential_5/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         м2
sequential_5/dense_8/BiasAddУ
sequential_5/dense_8/ReluRelu sequential_5/dense_8/BiasAdd:z:0*
T0*(
_output_shapes
:         м2
sequential_5/dense_8/Relu 
<sequential_5/batch_normalization_31/batchnorm/ReadVariableOpReadVariableOpEsequential_5_batch_normalization_31_batchnorm_readvariableop_resource*
_output_shapes	
:м*
dtype02>
<sequential_5/batch_normalization_31/batchnorm/ReadVariableOpп
3sequential_5/batch_normalization_31/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:25
3sequential_5/batch_normalization_31/batchnorm/add/yЩ
1sequential_5/batch_normalization_31/batchnorm/addAddV2Dsequential_5/batch_normalization_31/batchnorm/ReadVariableOp:value:0<sequential_5/batch_normalization_31/batchnorm/add/y:output:0*
T0*
_output_shapes	
:м23
1sequential_5/batch_normalization_31/batchnorm/add╨
3sequential_5/batch_normalization_31/batchnorm/RsqrtRsqrt5sequential_5/batch_normalization_31/batchnorm/add:z:0*
T0*
_output_shapes	
:м25
3sequential_5/batch_normalization_31/batchnorm/RsqrtВ
1sequential_5/batch_normalization_31/batchnorm/mulMul'sequential_5/dense_8/Relu:activations:07sequential_5/batch_normalization_31/batchnorm/Rsqrt:y:0*
T0*(
_output_shapes
:         м23
1sequential_5/batch_normalization_31/batchnorm/mulЕ
>sequential_5/batch_normalization_31/batchnorm/ReadVariableOp_1ReadVariableOpGsequential_5_batch_normalization_31_batchnorm_readvariableop_1_resource*
_output_shapes	
:м*
dtype02@
>sequential_5/batch_normalization_31/batchnorm/ReadVariableOp_1Ш
3sequential_5/batch_normalization_31/batchnorm/mul_1MulFsequential_5/batch_normalization_31/batchnorm/ReadVariableOp_1:value:07sequential_5/batch_normalization_31/batchnorm/Rsqrt:y:0*
T0*
_output_shapes	
:м25
3sequential_5/batch_normalization_31/batchnorm/mul_1Е
>sequential_5/batch_normalization_31/batchnorm/ReadVariableOp_2ReadVariableOpGsequential_5_batch_normalization_31_batchnorm_readvariableop_2_resource*
_output_shapes	
:м*
dtype02@
>sequential_5/batch_normalization_31/batchnorm/ReadVariableOp_2Ф
1sequential_5/batch_normalization_31/batchnorm/subSubFsequential_5/batch_normalization_31/batchnorm/ReadVariableOp_2:value:07sequential_5/batch_normalization_31/batchnorm/mul_1:z:0*
T0*
_output_shapes	
:м23
1sequential_5/batch_normalization_31/batchnorm/subФ
3sequential_5/batch_normalization_31/batchnorm/add_1AddV25sequential_5/batch_normalization_31/batchnorm/mul:z:05sequential_5/batch_normalization_31/batchnorm/sub:z:0*
T0*(
_output_shapes
:         м25
3sequential_5/batch_normalization_31/batchnorm/add_1╝
 sequential_5/dropout_18/IdentityIdentity7sequential_5/batch_normalization_31/batchnorm/add_1:z:0*
T0*(
_output_shapes
:         м2"
 sequential_5/dropout_18/Identity╬
*sequential_5/dense_9/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_9_matmul_readvariableop_resource* 
_output_shapes
:
м╚*
dtype02,
*sequential_5/dense_9/MatMul/ReadVariableOp╓
sequential_5/dense_9/MatMulMatMul)sequential_5/dropout_18/Identity:output:02sequential_5/dense_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚2
sequential_5/dense_9/MatMul╠
+sequential_5/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_9_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype02-
+sequential_5/dense_9/BiasAdd/ReadVariableOp╥
sequential_5/dense_9/BiasAddAdd%sequential_5/dense_9/MatMul:product:03sequential_5/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚2
sequential_5/dense_9/BiasAddУ
sequential_5/dense_9/ReluRelu sequential_5/dense_9/BiasAdd:z:0*
T0*(
_output_shapes
:         ╚2
sequential_5/dense_9/Relu 
<sequential_5/batch_normalization_32/batchnorm/ReadVariableOpReadVariableOpEsequential_5_batch_normalization_32_batchnorm_readvariableop_resource*
_output_shapes	
:╚*
dtype02>
<sequential_5/batch_normalization_32/batchnorm/ReadVariableOpп
3sequential_5/batch_normalization_32/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:25
3sequential_5/batch_normalization_32/batchnorm/add/yЩ
1sequential_5/batch_normalization_32/batchnorm/addAddV2Dsequential_5/batch_normalization_32/batchnorm/ReadVariableOp:value:0<sequential_5/batch_normalization_32/batchnorm/add/y:output:0*
T0*
_output_shapes	
:╚23
1sequential_5/batch_normalization_32/batchnorm/add╨
3sequential_5/batch_normalization_32/batchnorm/RsqrtRsqrt5sequential_5/batch_normalization_32/batchnorm/add:z:0*
T0*
_output_shapes	
:╚25
3sequential_5/batch_normalization_32/batchnorm/RsqrtВ
1sequential_5/batch_normalization_32/batchnorm/mulMul'sequential_5/dense_9/Relu:activations:07sequential_5/batch_normalization_32/batchnorm/Rsqrt:y:0*
T0*(
_output_shapes
:         ╚23
1sequential_5/batch_normalization_32/batchnorm/mulЕ
>sequential_5/batch_normalization_32/batchnorm/ReadVariableOp_1ReadVariableOpGsequential_5_batch_normalization_32_batchnorm_readvariableop_1_resource*
_output_shapes	
:╚*
dtype02@
>sequential_5/batch_normalization_32/batchnorm/ReadVariableOp_1Ш
3sequential_5/batch_normalization_32/batchnorm/mul_1MulFsequential_5/batch_normalization_32/batchnorm/ReadVariableOp_1:value:07sequential_5/batch_normalization_32/batchnorm/Rsqrt:y:0*
T0*
_output_shapes	
:╚25
3sequential_5/batch_normalization_32/batchnorm/mul_1Е
>sequential_5/batch_normalization_32/batchnorm/ReadVariableOp_2ReadVariableOpGsequential_5_batch_normalization_32_batchnorm_readvariableop_2_resource*
_output_shapes	
:╚*
dtype02@
>sequential_5/batch_normalization_32/batchnorm/ReadVariableOp_2Ф
1sequential_5/batch_normalization_32/batchnorm/subSubFsequential_5/batch_normalization_32/batchnorm/ReadVariableOp_2:value:07sequential_5/batch_normalization_32/batchnorm/mul_1:z:0*
T0*
_output_shapes	
:╚23
1sequential_5/batch_normalization_32/batchnorm/subФ
3sequential_5/batch_normalization_32/batchnorm/add_1AddV25sequential_5/batch_normalization_32/batchnorm/mul:z:05sequential_5/batch_normalization_32/batchnorm/sub:z:0*
T0*(
_output_shapes
:         ╚25
3sequential_5/batch_normalization_32/batchnorm/add_1╝
 sequential_5/dropout_19/IdentityIdentity7sequential_5/batch_normalization_32/batchnorm/add_1:z:0*
T0*(
_output_shapes
:         ╚2"
 sequential_5/dropout_19/Identity╨
+sequential_5/dense_10/MatMul/ReadVariableOpReadVariableOp4sequential_5_dense_10_matmul_readvariableop_resource*
_output_shapes
:	╚d*
dtype02-
+sequential_5/dense_10/MatMul/ReadVariableOp╪
sequential_5/dense_10/MatMulMatMul)sequential_5/dropout_19/Identity:output:03sequential_5/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
sequential_5/dense_10/MatMul╬
,sequential_5/dense_10/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_10_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02.
,sequential_5/dense_10/BiasAdd/ReadVariableOp╒
sequential_5/dense_10/BiasAddAdd&sequential_5/dense_10/MatMul:product:04sequential_5/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
sequential_5/dense_10/BiasAddХ
sequential_5/dense_10/ReluRelu!sequential_5/dense_10/BiasAdd:z:0*
T0*'
_output_shapes
:         d2
sequential_5/dense_10/Relu■
<sequential_5/batch_normalization_33/batchnorm/ReadVariableOpReadVariableOpEsequential_5_batch_normalization_33_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype02>
<sequential_5/batch_normalization_33/batchnorm/ReadVariableOpп
3sequential_5/batch_normalization_33/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:25
3sequential_5/batch_normalization_33/batchnorm/add/yШ
1sequential_5/batch_normalization_33/batchnorm/addAddV2Dsequential_5/batch_normalization_33/batchnorm/ReadVariableOp:value:0<sequential_5/batch_normalization_33/batchnorm/add/y:output:0*
T0*
_output_shapes
:d23
1sequential_5/batch_normalization_33/batchnorm/add╧
3sequential_5/batch_normalization_33/batchnorm/RsqrtRsqrt5sequential_5/batch_normalization_33/batchnorm/add:z:0*
T0*
_output_shapes
:d25
3sequential_5/batch_normalization_33/batchnorm/RsqrtВ
1sequential_5/batch_normalization_33/batchnorm/mulMul(sequential_5/dense_10/Relu:activations:07sequential_5/batch_normalization_33/batchnorm/Rsqrt:y:0*
T0*'
_output_shapes
:         d23
1sequential_5/batch_normalization_33/batchnorm/mulД
>sequential_5/batch_normalization_33/batchnorm/ReadVariableOp_1ReadVariableOpGsequential_5_batch_normalization_33_batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype02@
>sequential_5/batch_normalization_33/batchnorm/ReadVariableOp_1Ч
3sequential_5/batch_normalization_33/batchnorm/mul_1MulFsequential_5/batch_normalization_33/batchnorm/ReadVariableOp_1:value:07sequential_5/batch_normalization_33/batchnorm/Rsqrt:y:0*
T0*
_output_shapes
:d25
3sequential_5/batch_normalization_33/batchnorm/mul_1Д
>sequential_5/batch_normalization_33/batchnorm/ReadVariableOp_2ReadVariableOpGsequential_5_batch_normalization_33_batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype02@
>sequential_5/batch_normalization_33/batchnorm/ReadVariableOp_2У
1sequential_5/batch_normalization_33/batchnorm/subSubFsequential_5/batch_normalization_33/batchnorm/ReadVariableOp_2:value:07sequential_5/batch_normalization_33/batchnorm/mul_1:z:0*
T0*
_output_shapes
:d23
1sequential_5/batch_normalization_33/batchnorm/subУ
3sequential_5/batch_normalization_33/batchnorm/add_1AddV25sequential_5/batch_normalization_33/batchnorm/mul:z:05sequential_5/batch_normalization_33/batchnorm/sub:z:0*
T0*'
_output_shapes
:         d25
3sequential_5/batch_normalization_33/batchnorm/add_1╗
 sequential_5/dropout_20/IdentityIdentity7sequential_5/batch_normalization_33/batchnorm/add_1:z:0*
T0*'
_output_shapes
:         d2"
 sequential_5/dropout_20/Identity╧
+sequential_5/dense_11/MatMul/ReadVariableOpReadVariableOp4sequential_5_dense_11_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02-
+sequential_5/dense_11/MatMul/ReadVariableOp╪
sequential_5/dense_11/MatMulMatMul)sequential_5/dropout_20/Identity:output:03sequential_5/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_5/dense_11/MatMul╬
,sequential_5/dense_11/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_5/dense_11/BiasAdd/ReadVariableOp╒
sequential_5/dense_11/BiasAddAdd&sequential_5/dense_11/MatMul:product:04sequential_5/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_5/dense_11/BiasAddЮ
sequential_5/dense_11/SoftmaxSoftmax!sequential_5/dense_11/BiasAdd:z:0*
T0*'
_output_shapes
:         2
sequential_5/dense_11/Softmax╛
IdentityIdentity'sequential_5/dense_11/Softmax:softmax:0D^sequential_5/batch_normalization_23/FusedBatchNormV3/ReadVariableOpF^sequential_5/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_13^sequential_5/batch_normalization_23/ReadVariableOpD^sequential_5/batch_normalization_24/FusedBatchNormV3/ReadVariableOpF^sequential_5/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_13^sequential_5/batch_normalization_24/ReadVariableOpD^sequential_5/batch_normalization_25/FusedBatchNormV3/ReadVariableOpF^sequential_5/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_13^sequential_5/batch_normalization_25/ReadVariableOpD^sequential_5/batch_normalization_26/FusedBatchNormV3/ReadVariableOpF^sequential_5/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_13^sequential_5/batch_normalization_26/ReadVariableOpD^sequential_5/batch_normalization_27/FusedBatchNormV3/ReadVariableOpF^sequential_5/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_13^sequential_5/batch_normalization_27/ReadVariableOpD^sequential_5/batch_normalization_28/FusedBatchNormV3/ReadVariableOpF^sequential_5/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_13^sequential_5/batch_normalization_28/ReadVariableOpD^sequential_5/batch_normalization_29/FusedBatchNormV3/ReadVariableOpF^sequential_5/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_13^sequential_5/batch_normalization_29/ReadVariableOpD^sequential_5/batch_normalization_30/FusedBatchNormV3/ReadVariableOpF^sequential_5/batch_normalization_30/FusedBatchNormV3/ReadVariableOp_13^sequential_5/batch_normalization_30/ReadVariableOp=^sequential_5/batch_normalization_31/batchnorm/ReadVariableOp?^sequential_5/batch_normalization_31/batchnorm/ReadVariableOp_1?^sequential_5/batch_normalization_31/batchnorm/ReadVariableOp_2=^sequential_5/batch_normalization_32/batchnorm/ReadVariableOp?^sequential_5/batch_normalization_32/batchnorm/ReadVariableOp_1?^sequential_5/batch_normalization_32/batchnorm/ReadVariableOp_2=^sequential_5/batch_normalization_33/batchnorm/ReadVariableOp?^sequential_5/batch_normalization_33/batchnorm/ReadVariableOp_1?^sequential_5/batch_normalization_33/batchnorm/ReadVariableOp_2.^sequential_5/conv2d_17/BiasAdd/ReadVariableOp-^sequential_5/conv2d_17/Conv2D/ReadVariableOp.^sequential_5/conv2d_18/BiasAdd/ReadVariableOp-^sequential_5/conv2d_18/Conv2D/ReadVariableOp.^sequential_5/conv2d_19/BiasAdd/ReadVariableOp-^sequential_5/conv2d_19/Conv2D/ReadVariableOp.^sequential_5/conv2d_20/BiasAdd/ReadVariableOp-^sequential_5/conv2d_20/Conv2D/ReadVariableOp.^sequential_5/conv2d_21/BiasAdd/ReadVariableOp-^sequential_5/conv2d_21/Conv2D/ReadVariableOp.^sequential_5/conv2d_22/BiasAdd/ReadVariableOp-^sequential_5/conv2d_22/Conv2D/ReadVariableOp.^sequential_5/conv2d_23/BiasAdd/ReadVariableOp-^sequential_5/conv2d_23/Conv2D/ReadVariableOp.^sequential_5/conv2d_24/BiasAdd/ReadVariableOp-^sequential_5/conv2d_24/Conv2D/ReadVariableOp-^sequential_5/dense_10/BiasAdd/ReadVariableOp,^sequential_5/dense_10/MatMul/ReadVariableOp-^sequential_5/dense_11/BiasAdd/ReadVariableOp,^sequential_5/dense_11/MatMul/ReadVariableOp,^sequential_5/dense_8/BiasAdd/ReadVariableOp+^sequential_5/dense_8/MatMul/ReadVariableOp,^sequential_5/dense_9/BiasAdd/ReadVariableOp+^sequential_5/dense_9/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*┌
_input_shapes╚
┼:         мм: : : : : : : : :А: : : : : : : : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : :А: : : : : : : : : : : : : : : : : : : : 2К
Csequential_5/batch_normalization_23/FusedBatchNormV3/ReadVariableOpCsequential_5/batch_normalization_23/FusedBatchNormV3/ReadVariableOp2О
Esequential_5/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1Esequential_5/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_12h
2sequential_5/batch_normalization_23/ReadVariableOp2sequential_5/batch_normalization_23/ReadVariableOp2К
Csequential_5/batch_normalization_24/FusedBatchNormV3/ReadVariableOpCsequential_5/batch_normalization_24/FusedBatchNormV3/ReadVariableOp2О
Esequential_5/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1Esequential_5/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_12h
2sequential_5/batch_normalization_24/ReadVariableOp2sequential_5/batch_normalization_24/ReadVariableOp2К
Csequential_5/batch_normalization_25/FusedBatchNormV3/ReadVariableOpCsequential_5/batch_normalization_25/FusedBatchNormV3/ReadVariableOp2О
Esequential_5/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1Esequential_5/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_12h
2sequential_5/batch_normalization_25/ReadVariableOp2sequential_5/batch_normalization_25/ReadVariableOp2К
Csequential_5/batch_normalization_26/FusedBatchNormV3/ReadVariableOpCsequential_5/batch_normalization_26/FusedBatchNormV3/ReadVariableOp2О
Esequential_5/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1Esequential_5/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_12h
2sequential_5/batch_normalization_26/ReadVariableOp2sequential_5/batch_normalization_26/ReadVariableOp2К
Csequential_5/batch_normalization_27/FusedBatchNormV3/ReadVariableOpCsequential_5/batch_normalization_27/FusedBatchNormV3/ReadVariableOp2О
Esequential_5/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1Esequential_5/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_12h
2sequential_5/batch_normalization_27/ReadVariableOp2sequential_5/batch_normalization_27/ReadVariableOp2К
Csequential_5/batch_normalization_28/FusedBatchNormV3/ReadVariableOpCsequential_5/batch_normalization_28/FusedBatchNormV3/ReadVariableOp2О
Esequential_5/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1Esequential_5/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_12h
2sequential_5/batch_normalization_28/ReadVariableOp2sequential_5/batch_normalization_28/ReadVariableOp2К
Csequential_5/batch_normalization_29/FusedBatchNormV3/ReadVariableOpCsequential_5/batch_normalization_29/FusedBatchNormV3/ReadVariableOp2О
Esequential_5/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1Esequential_5/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_12h
2sequential_5/batch_normalization_29/ReadVariableOp2sequential_5/batch_normalization_29/ReadVariableOp2К
Csequential_5/batch_normalization_30/FusedBatchNormV3/ReadVariableOpCsequential_5/batch_normalization_30/FusedBatchNormV3/ReadVariableOp2О
Esequential_5/batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1Esequential_5/batch_normalization_30/FusedBatchNormV3/ReadVariableOp_12h
2sequential_5/batch_normalization_30/ReadVariableOp2sequential_5/batch_normalization_30/ReadVariableOp2|
<sequential_5/batch_normalization_31/batchnorm/ReadVariableOp<sequential_5/batch_normalization_31/batchnorm/ReadVariableOp2А
>sequential_5/batch_normalization_31/batchnorm/ReadVariableOp_1>sequential_5/batch_normalization_31/batchnorm/ReadVariableOp_12А
>sequential_5/batch_normalization_31/batchnorm/ReadVariableOp_2>sequential_5/batch_normalization_31/batchnorm/ReadVariableOp_22|
<sequential_5/batch_normalization_32/batchnorm/ReadVariableOp<sequential_5/batch_normalization_32/batchnorm/ReadVariableOp2А
>sequential_5/batch_normalization_32/batchnorm/ReadVariableOp_1>sequential_5/batch_normalization_32/batchnorm/ReadVariableOp_12А
>sequential_5/batch_normalization_32/batchnorm/ReadVariableOp_2>sequential_5/batch_normalization_32/batchnorm/ReadVariableOp_22|
<sequential_5/batch_normalization_33/batchnorm/ReadVariableOp<sequential_5/batch_normalization_33/batchnorm/ReadVariableOp2А
>sequential_5/batch_normalization_33/batchnorm/ReadVariableOp_1>sequential_5/batch_normalization_33/batchnorm/ReadVariableOp_12А
>sequential_5/batch_normalization_33/batchnorm/ReadVariableOp_2>sequential_5/batch_normalization_33/batchnorm/ReadVariableOp_22^
-sequential_5/conv2d_17/BiasAdd/ReadVariableOp-sequential_5/conv2d_17/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_17/Conv2D/ReadVariableOp,sequential_5/conv2d_17/Conv2D/ReadVariableOp2^
-sequential_5/conv2d_18/BiasAdd/ReadVariableOp-sequential_5/conv2d_18/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_18/Conv2D/ReadVariableOp,sequential_5/conv2d_18/Conv2D/ReadVariableOp2^
-sequential_5/conv2d_19/BiasAdd/ReadVariableOp-sequential_5/conv2d_19/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_19/Conv2D/ReadVariableOp,sequential_5/conv2d_19/Conv2D/ReadVariableOp2^
-sequential_5/conv2d_20/BiasAdd/ReadVariableOp-sequential_5/conv2d_20/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_20/Conv2D/ReadVariableOp,sequential_5/conv2d_20/Conv2D/ReadVariableOp2^
-sequential_5/conv2d_21/BiasAdd/ReadVariableOp-sequential_5/conv2d_21/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_21/Conv2D/ReadVariableOp,sequential_5/conv2d_21/Conv2D/ReadVariableOp2^
-sequential_5/conv2d_22/BiasAdd/ReadVariableOp-sequential_5/conv2d_22/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_22/Conv2D/ReadVariableOp,sequential_5/conv2d_22/Conv2D/ReadVariableOp2^
-sequential_5/conv2d_23/BiasAdd/ReadVariableOp-sequential_5/conv2d_23/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_23/Conv2D/ReadVariableOp,sequential_5/conv2d_23/Conv2D/ReadVariableOp2^
-sequential_5/conv2d_24/BiasAdd/ReadVariableOp-sequential_5/conv2d_24/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_24/Conv2D/ReadVariableOp,sequential_5/conv2d_24/Conv2D/ReadVariableOp2\
,sequential_5/dense_10/BiasAdd/ReadVariableOp,sequential_5/dense_10/BiasAdd/ReadVariableOp2Z
+sequential_5/dense_10/MatMul/ReadVariableOp+sequential_5/dense_10/MatMul/ReadVariableOp2\
,sequential_5/dense_11/BiasAdd/ReadVariableOp,sequential_5/dense_11/BiasAdd/ReadVariableOp2Z
+sequential_5/dense_11/MatMul/ReadVariableOp+sequential_5/dense_11/MatMul/ReadVariableOp2Z
+sequential_5/dense_8/BiasAdd/ReadVariableOp+sequential_5/dense_8/BiasAdd/ReadVariableOp2X
*sequential_5/dense_8/MatMul/ReadVariableOp*sequential_5/dense_8/MatMul/ReadVariableOp2Z
+sequential_5/dense_9/BiasAdd/ReadVariableOp+sequential_5/dense_9/BiasAdd/ReadVariableOp2X
*sequential_5/dense_9/MatMul/ReadVariableOp*sequential_5/dense_9/MatMul/ReadVariableOp:b ^
1
_output_shapes
:         мм
)
_user_specified_nameconv2d_17_input: 

_output_shapes
: :!	

_output_shapes	
:А: 

_output_shapes
: :!

_output_shapes	
:А:!

_output_shapes	
:А:!!

_output_shapes	
:А:!'

_output_shapes	
:А:!-

_output_shapes	
:А
х
F
*__inference_dropout_17_layer_call_fn_34648

inputs
identity╧
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_17_layer_call_and_return_conditional_losses_306532
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
м
П
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_33889

inputs	
scale%
readvariableop_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpз
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╟
FusedBatchNormV3FusedBatchNormV3inputsscaleReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         РР : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1э
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
T0*1
_output_shapes
:         РР 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         РР : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:Y U
1
_output_shapes
:         РР 
 
_user_specified_nameinputs: 

_output_shapes
: 
б
Ч
'__inference_dense_9_layer_call_fn_34807

inputs
unknown:
м╚
	unknown_0:	╚
identityИвStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_307052
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         ╚2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         м: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
В
d
E__inference_dropout_15_layer_call_and_return_conditional_losses_31300

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         GGА2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╩
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         GGА*
dtype0*
seedА2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y╟
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         GGА2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         GGА2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         GGА2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         GGА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         GGА:X T
0
_output_shapes
:         GGА
 
_user_specified_nameinputs
╤
Я
)__inference_conv2d_19_layer_call_fn_33758

inputs"
unknown:А 
	unknown_0: 
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         РР *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_303842
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         РР 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         ТТА: : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:         ТТА
 
_user_specified_nameinputs
┴
d
E__inference_dropout_19_layer_call_and_return_conditional_losses_30970

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         ╚2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape┬
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0*
seedА2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         ╚2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         ╚2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ╚:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs"╠L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┼
serving_default▒
U
conv2d_17_inputB
!serving_default_conv2d_17_input:0         мм<
dense_110
StatefulPartitionedCall:0         tensorflow/serving/predict:┬├	
ЎЯ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer_with_weights-10
layer-14
layer_with_weights-11
layer-15
layer-16
layer-17
layer_with_weights-12
layer-18
layer_with_weights-13
layer-19
layer_with_weights-14
layer-20
layer_with_weights-15
layer-21
layer-22
layer-23
layer-24
layer_with_weights-16
layer-25
layer_with_weights-17
layer-26
layer-27
layer_with_weights-18
layer-28
layer_with_weights-19
layer-29
layer-30
 layer_with_weights-20
 layer-31
!layer_with_weights-21
!layer-32
"layer-33
#layer_with_weights-22
#layer-34
$	optimizer
%regularization_losses
&	variables
'trainable_variables
(	keras_api
)
signatures
с__call__
т_default_save_signature
+у&call_and_return_all_conditional_losses"фХ
_tf_keras_sequential─Х{"name": "sequential_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 300, 300, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_17_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 300, 300, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_23", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_24", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_8", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_14", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_25", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_26", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_9", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_15", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_27", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_28", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_10", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_16", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_29", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_24", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_30", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_11", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_17", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 300, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_31", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_18", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_32", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_19", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_33", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_20", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 3, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 104, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 105}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 300, 300, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 300, 300, 3]}, "float32", "conv2d_17_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 300, 300, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_17_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 300, 300, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_23", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 8}, {"class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_24", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 13}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 15}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 16}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_8", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 17}, {"class_name": "Dropout", "config": {"name": "dropout_14", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 18}, {"class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 21}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_25", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 23}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 25}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 26}, {"class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 27}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 28}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 29}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_26", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 31}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 33}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 34}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_9", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 35}, {"class_name": "Dropout", "config": {"name": "dropout_15", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 36}, {"class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 37}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 39}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_27", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 40}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 41}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 42}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 43}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 44}, {"class_name": "Conv2D", "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 45}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 46}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 47}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_28", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 48}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 49}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 50}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 51}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 52}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_10", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 53}, {"class_name": "Dropout", "config": {"name": "dropout_16", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 54}, {"class_name": "Conv2D", "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 55}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 56}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 57}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_29", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 58}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 59}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 60}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 61}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 62}, {"class_name": "Conv2D", "config": {"name": "conv2d_24", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 63}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 64}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 65}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_30", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 66}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 67}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 68}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 69}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 70}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_11", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 71}, {"class_name": "Dropout", "config": {"name": "dropout_17", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 72}, {"class_name": "Flatten", "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 73}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 300, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 74}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 75}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 76}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_31", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 77}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 78}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 79}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 80}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 81}, {"class_name": "Dropout", "config": {"name": "dropout_18", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 82}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 83}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 84}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 85}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_32", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 86}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 87}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 88}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 89}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 90}, {"class_name": "Dropout", "config": {"name": "dropout_19", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 91}, {"class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 92}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 93}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 94}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_33", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 95}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 96}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 97}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 98}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 99}, {"class_name": "Dropout", "config": {"name": "dropout_20", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 100}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 3, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 101}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 102}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 103}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 106}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.0010000000474974513, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-07, "centered": false}}}}
┌

*kernel
+bias
,regularization_losses
-	variables
.trainable_variables
/	keras_api
ф__call__
+х&call_and_return_all_conditional_losses"│

_tf_keras_layerЩ
{"name": "conv2d_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 300, 300, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 300, 300, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 105}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 300, 300, 3]}}
┬

0axis
1beta
2moving_mean
3moving_variance
4regularization_losses
5	variables
6trainable_variables
7	keras_api
ц__call__
+ч&call_and_return_all_conditional_losses"ў
_tf_keras_layer▌{"name": "batch_normalization_23", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_23", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}, "shared_object_id": 107}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 296, 296, 32]}}
┌


8kernel
9bias
:regularization_losses
;	variables
<trainable_variables
=	keras_api
ш__call__
+щ&call_and_return_all_conditional_losses"│	
_tf_keras_layerЩ	{"name": "conv2d_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 108}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 296, 296, 32]}}
╔

>axis
?beta
@moving_mean
Amoving_variance
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
ъ__call__
+ы&call_and_return_all_conditional_losses"■
_tf_keras_layerф{"name": "batch_normalization_24", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_24", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 13}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 15}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 109}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 292, 292, 128]}}
▒
Fregularization_losses
G	variables
Htrainable_variables
I	keras_api
ь__call__
+э&call_and_return_all_conditional_losses"а
_tf_keras_layerЖ{"name": "max_pooling2d_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_8", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 110}}
В
Jregularization_losses
K	variables
Ltrainable_variables
M	keras_api
ю__call__
+я&call_and_return_all_conditional_losses"ё
_tf_keras_layer╫{"name": "dropout_14", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_14", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 18}
▄


Nkernel
Obias
Pregularization_losses
Q	variables
Rtrainable_variables
S	keras_api
Ё__call__
+ё&call_and_return_all_conditional_losses"╡	
_tf_keras_layerЫ	{"name": "conv2d_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 111}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 146, 146, 128]}}
╟

Taxis
Ubeta
Vmoving_mean
Wmoving_variance
Xregularization_losses
Y	variables
Ztrainable_variables
[	keras_api
Є__call__
+є&call_and_return_all_conditional_losses"№
_tf_keras_layerт{"name": "batch_normalization_25", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_25", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 23}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 25}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 26, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}, "shared_object_id": 112}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 144, 144, 32]}}
█


\kernel
]bias
^regularization_losses
_	variables
`trainable_variables
a	keras_api
Ї__call__
+ї&call_and_return_all_conditional_losses"┤	
_tf_keras_layerЪ	{"name": "conv2d_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 27}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 28}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 29, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 113}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 144, 144, 32]}}
╔

baxis
cbeta
dmoving_mean
emoving_variance
fregularization_losses
g	variables
htrainable_variables
i	keras_api
Ў__call__
+ў&call_and_return_all_conditional_losses"■
_tf_keras_layerф{"name": "batch_normalization_26", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_26", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 31}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 33}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 34, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 114}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 142, 142, 128]}}
▒
jregularization_losses
k	variables
ltrainable_variables
m	keras_api
°__call__
+∙&call_and_return_all_conditional_losses"а
_tf_keras_layerЖ{"name": "max_pooling2d_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_9", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 35, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 115}}
В
nregularization_losses
o	variables
ptrainable_variables
q	keras_api
·__call__
+√&call_and_return_all_conditional_losses"ё
_tf_keras_layer╫{"name": "dropout_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_15", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 36}
█


rkernel
sbias
tregularization_losses
u	variables
vtrainable_variables
w	keras_api
№__call__
+¤&call_and_return_all_conditional_losses"┤	
_tf_keras_layerЪ	{"name": "conv2d_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 37}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 39, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 116}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 71, 71, 128]}}
╟

xaxis
ybeta
zmoving_mean
{moving_variance
|regularization_losses
}	variables
~trainable_variables
	keras_api
■__call__
+ &call_and_return_all_conditional_losses"№
_tf_keras_layerт{"name": "batch_normalization_27", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_27", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 40}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 41}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 42}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 43}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 44, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 117}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 67, 67, 128]}}
с

Аkernel
	Бbias
Вregularization_losses
Г	variables
Дtrainable_variables
Е	keras_api
А__call__
+Б&call_and_return_all_conditional_losses"┤	
_tf_keras_layerЪ	{"name": "conv2d_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 45}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 46}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 47, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 118}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 67, 67, 128]}}
╧

	Жaxis
	Зbeta
Иmoving_mean
Йmoving_variance
Кregularization_losses
Л	variables
Мtrainable_variables
Н	keras_api
В__call__
+Г&call_and_return_all_conditional_losses"№
_tf_keras_layerт{"name": "batch_normalization_28", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_28", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 48}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 49}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 50}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 51}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 52, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 512}}, "shared_object_id": 119}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 63, 63, 512]}}
╖
Оregularization_losses
П	variables
Рtrainable_variables
С	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses"в
_tf_keras_layerИ{"name": "max_pooling2d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_10", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 53, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 120}}
Ж
Тregularization_losses
У	variables
Фtrainable_variables
Х	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses"ё
_tf_keras_layer╫{"name": "dropout_16", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_16", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 54}
с

Цkernel
	Чbias
Шregularization_losses
Щ	variables
Ъtrainable_variables
Ы	keras_api
И__call__
+Й&call_and_return_all_conditional_losses"┤	
_tf_keras_layerЪ	{"name": "conv2d_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 55}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 56}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 57, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 121}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 512]}}
╧

	Ьaxis
	Эbeta
Юmoving_mean
Яmoving_variance
аregularization_losses
б	variables
вtrainable_variables
г	keras_api
К__call__
+Л&call_and_return_all_conditional_losses"№
_tf_keras_layerт{"name": "batch_normalization_29", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_29", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 58}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 59}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 60}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 61}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 62, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 122}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 30, 30, 128]}}
с

дkernel
	еbias
жregularization_losses
з	variables
иtrainable_variables
й	keras_api
М__call__
+Н&call_and_return_all_conditional_losses"┤	
_tf_keras_layerЪ	{"name": "conv2d_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_24", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 63}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 64}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 65, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 123}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 30, 30, 128]}}
╧

	кaxis
	лbeta
мmoving_mean
нmoving_variance
оregularization_losses
п	variables
░trainable_variables
▒	keras_api
О__call__
+П&call_and_return_all_conditional_losses"№
_tf_keras_layerт{"name": "batch_normalization_30", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_30", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 66}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 67}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 68}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 69}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 70, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 512}}, "shared_object_id": 124}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 512]}}
╖
▓regularization_losses
│	variables
┤trainable_variables
╡	keras_api
Р__call__
+С&call_and_return_all_conditional_losses"в
_tf_keras_layerИ{"name": "max_pooling2d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_11", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 71, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 125}}
Ж
╢regularization_losses
╖	variables
╕trainable_variables
╣	keras_api
Т__call__
+У&call_and_return_all_conditional_losses"ё
_tf_keras_layer╫{"name": "dropout_17", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_17", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 72}
Э
║regularization_losses
╗	variables
╝trainable_variables
╜	keras_api
Ф__call__
+Х&call_and_return_all_conditional_losses"И
_tf_keras_layerю{"name": "flatten_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 73, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 126}}
т
╛kernel
	┐bias
└regularization_losses
┴	variables
┬trainable_variables
├	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses"╡
_tf_keras_layerЫ{"name": "dense_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 300, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 74}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 75}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 76, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100352}}, "shared_object_id": 127}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100352]}}
╟

	─axis
	┼beta
╞moving_mean
╟moving_variance
╚regularization_losses
╔	variables
╩trainable_variables
╦	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses"Ї
_tf_keras_layer┌{"name": "batch_normalization_31", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_31", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 77}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 78}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 79}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 80}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 81, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 300}}, "shared_object_id": 128}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 300]}}
Ж
╠regularization_losses
═	variables
╬trainable_variables
╧	keras_api
Ъ__call__
+Ы&call_and_return_all_conditional_losses"ё
_tf_keras_layer╫{"name": "dropout_18", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_18", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 82}
▄
╨kernel
	╤bias
╥regularization_losses
╙	variables
╘trainable_variables
╒	keras_api
Ь__call__
+Э&call_and_return_all_conditional_losses"п
_tf_keras_layerХ{"name": "dense_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 83}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 84}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 85, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 300}}, "shared_object_id": 129}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 300]}}
╟

	╓axis
	╫beta
╪moving_mean
┘moving_variance
┌regularization_losses
█	variables
▄trainable_variables
▌	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses"Ї
_tf_keras_layer┌{"name": "batch_normalization_32", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_32", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 86}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 87}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 88}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 89}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 90, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 200}}, "shared_object_id": 130}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
Ж
▐regularization_losses
▀	variables
рtrainable_variables
с	keras_api
а__call__
+б&call_and_return_all_conditional_losses"ё
_tf_keras_layer╫{"name": "dropout_19", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_19", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 91}
▐
тkernel
	уbias
фregularization_losses
х	variables
цtrainable_variables
ч	keras_api
в__call__
+г&call_and_return_all_conditional_losses"▒
_tf_keras_layerЧ{"name": "dense_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 92}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 93}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 94, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}, "shared_object_id": 131}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
╟

	шaxis
	щbeta
ъmoving_mean
ыmoving_variance
ьregularization_losses
э	variables
юtrainable_variables
я	keras_api
д__call__
+е&call_and_return_all_conditional_losses"Ї
_tf_keras_layer┌{"name": "batch_normalization_33", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_33", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": false, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 95}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 96}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 97}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 98}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 99, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 100}}, "shared_object_id": 132}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
З
Ёregularization_losses
ё	variables
Єtrainable_variables
є	keras_api
ж__call__
+з&call_and_return_all_conditional_losses"Є
_tf_keras_layer╪{"name": "dropout_20", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_20", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 100}
т
Їkernel
	їbias
Ўregularization_losses
ў	variables
°trainable_variables
∙	keras_api
и__call__
+й&call_and_return_all_conditional_losses"╡
_tf_keras_layerЫ{"name": "dense_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 3, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 101}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 102}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 103, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 133}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
П
	·iter

√decay
№learning_rate
¤momentum
■rho
*rms╛
+rms┐
1rms└
8rms┴
9rms┬
?rms├
Nrms─
Orms┼
Urms╞
\rms╟
]rms╚
crms╔
rrms╩
srms╦
yrms╠Аrms═Бrms╬Зrms╧Цrms╨Чrms╤Эrms╥дrms╙еrms╘лrms╒╛rms╓┐rms╫┼rms╪╨rms┘╤rms┌╫rms█тrms▄уrms▌щrms▐Їrms▀їrmsр"
	optimizer
 "
trackable_list_wrapper
■
*0
+1
12
23
34
85
96
?7
@8
A9
N10
O11
U12
V13
W14
\15
]16
c17
d18
e19
r20
s21
y22
z23
{24
А25
Б26
З27
И28
Й29
Ц30
Ч31
Э32
Ю33
Я34
д35
е36
л37
м38
н39
╛40
┐41
┼42
╞43
╟44
╨45
╤46
╫47
╪48
┘49
т50
у51
щ52
ъ53
ы54
Ї55
ї56"
trackable_list_wrapper
┬
*0
+1
12
83
94
?5
N6
O7
U8
\9
]10
c11
r12
s13
y14
А15
Б16
З17
Ц18
Ч19
Э20
д21
е22
л23
╛24
┐25
┼26
╨27
╤28
╫29
т30
у31
щ32
Ї33
ї34"
trackable_list_wrapper
╙
%regularization_losses
 non_trainable_variables
Аlayers
Бmetrics
&	variables
 Вlayer_regularization_losses
Гlayer_metrics
'trainable_variables
с__call__
т_default_save_signature
+у&call_and_return_all_conditional_losses
'у"call_and_return_conditional_losses"
_generic_user_object
-
кserving_default"
signature_map
*:( 2conv2d_17/kernel
: 2conv2d_17/bias
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
╡
Дnon_trainable_variables
,regularization_losses
Еlayers
Жmetrics
-	variables
 Зlayer_regularization_losses
Иlayer_metrics
.trainable_variables
ф__call__
+х&call_and_return_all_conditional_losses
'х"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):' 2batch_normalization_23/beta
2:0  (2"batch_normalization_23/moving_mean
6:4  (2&batch_normalization_23/moving_variance
 "
trackable_list_wrapper
5
10
21
32"
trackable_list_wrapper
'
10"
trackable_list_wrapper
╡
Йnon_trainable_variables
4regularization_losses
Кlayers
Лmetrics
5	variables
 Мlayer_regularization_losses
Нlayer_metrics
6trainable_variables
ц__call__
+ч&call_and_return_all_conditional_losses
'ч"call_and_return_conditional_losses"
_generic_user_object
+:) А2conv2d_18/kernel
:А2conv2d_18/bias
 "
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
╡
Оnon_trainable_variables
:regularization_losses
Пlayers
Рmetrics
;	variables
 Сlayer_regularization_losses
Тlayer_metrics
<trainable_variables
ш__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(А2batch_normalization_24/beta
3:1А (2"batch_normalization_24/moving_mean
7:5А (2&batch_normalization_24/moving_variance
 "
trackable_list_wrapper
5
?0
@1
A2"
trackable_list_wrapper
'
?0"
trackable_list_wrapper
╡
Уnon_trainable_variables
Bregularization_losses
Фlayers
Хmetrics
C	variables
 Цlayer_regularization_losses
Чlayer_metrics
Dtrainable_variables
ъ__call__
+ы&call_and_return_all_conditional_losses
'ы"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Шnon_trainable_variables
Fregularization_losses
Щlayers
Ъmetrics
G	variables
 Ыlayer_regularization_losses
Ьlayer_metrics
Htrainable_variables
ь__call__
+э&call_and_return_all_conditional_losses
'э"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Эnon_trainable_variables
Jregularization_losses
Юlayers
Яmetrics
K	variables
 аlayer_regularization_losses
бlayer_metrics
Ltrainable_variables
ю__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses"
_generic_user_object
+:)А 2conv2d_19/kernel
: 2conv2d_19/bias
 "
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
╡
вnon_trainable_variables
Pregularization_losses
гlayers
дmetrics
Q	variables
 еlayer_regularization_losses
жlayer_metrics
Rtrainable_variables
Ё__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):' 2batch_normalization_25/beta
2:0  (2"batch_normalization_25/moving_mean
6:4  (2&batch_normalization_25/moving_variance
 "
trackable_list_wrapper
5
U0
V1
W2"
trackable_list_wrapper
'
U0"
trackable_list_wrapper
╡
зnon_trainable_variables
Xregularization_losses
иlayers
йmetrics
Y	variables
 кlayer_regularization_losses
лlayer_metrics
Ztrainable_variables
Є__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
+:) А2conv2d_20/kernel
:А2conv2d_20/bias
 "
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
╡
мnon_trainable_variables
^regularization_losses
нlayers
оmetrics
_	variables
 пlayer_regularization_losses
░layer_metrics
`trainable_variables
Ї__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(А2batch_normalization_26/beta
3:1А (2"batch_normalization_26/moving_mean
7:5А (2&batch_normalization_26/moving_variance
 "
trackable_list_wrapper
5
c0
d1
e2"
trackable_list_wrapper
'
c0"
trackable_list_wrapper
╡
▒non_trainable_variables
fregularization_losses
▓layers
│metrics
g	variables
 ┤layer_regularization_losses
╡layer_metrics
htrainable_variables
Ў__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
╢non_trainable_variables
jregularization_losses
╖layers
╕metrics
k	variables
 ╣layer_regularization_losses
║layer_metrics
ltrainable_variables
°__call__
+∙&call_and_return_all_conditional_losses
'∙"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
╗non_trainable_variables
nregularization_losses
╝layers
╜metrics
o	variables
 ╛layer_regularization_losses
┐layer_metrics
ptrainable_variables
·__call__
+√&call_and_return_all_conditional_losses
'√"call_and_return_conditional_losses"
_generic_user_object
,:*АА2conv2d_21/kernel
:А2conv2d_21/bias
 "
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
╡
└non_trainable_variables
tregularization_losses
┴layers
┬metrics
u	variables
 ├layer_regularization_losses
─layer_metrics
vtrainable_variables
№__call__
+¤&call_and_return_all_conditional_losses
'¤"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(А2batch_normalization_27/beta
3:1А (2"batch_normalization_27/moving_mean
7:5А (2&batch_normalization_27/moving_variance
 "
trackable_list_wrapper
5
y0
z1
{2"
trackable_list_wrapper
'
y0"
trackable_list_wrapper
╡
┼non_trainable_variables
|regularization_losses
╞layers
╟metrics
}	variables
 ╚layer_regularization_losses
╔layer_metrics
~trainable_variables
■__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
,:*АА2conv2d_22/kernel
:А2conv2d_22/bias
 "
trackable_list_wrapper
0
А0
Б1"
trackable_list_wrapper
0
А0
Б1"
trackable_list_wrapper
╕
╩non_trainable_variables
Вregularization_losses
╦layers
╠metrics
Г	variables
 ═layer_regularization_losses
╬layer_metrics
Дtrainable_variables
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(А2batch_normalization_28/beta
3:1А (2"batch_normalization_28/moving_mean
7:5А (2&batch_normalization_28/moving_variance
 "
trackable_list_wrapper
8
З0
И1
Й2"
trackable_list_wrapper
(
З0"
trackable_list_wrapper
╕
╧non_trainable_variables
Кregularization_losses
╨layers
╤metrics
Л	variables
 ╥layer_regularization_losses
╙layer_metrics
Мtrainable_variables
В__call__
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╘non_trainable_variables
Оregularization_losses
╒layers
╓metrics
П	variables
 ╫layer_regularization_losses
╪layer_metrics
Рtrainable_variables
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
┘non_trainable_variables
Тregularization_losses
┌layers
█metrics
У	variables
 ▄layer_regularization_losses
▌layer_metrics
Фtrainable_variables
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
,:*АА2conv2d_23/kernel
:А2conv2d_23/bias
 "
trackable_list_wrapper
0
Ц0
Ч1"
trackable_list_wrapper
0
Ц0
Ч1"
trackable_list_wrapper
╕
▐non_trainable_variables
Шregularization_losses
▀layers
рmetrics
Щ	variables
 сlayer_regularization_losses
тlayer_metrics
Ъtrainable_variables
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(А2batch_normalization_29/beta
3:1А (2"batch_normalization_29/moving_mean
7:5А (2&batch_normalization_29/moving_variance
 "
trackable_list_wrapper
8
Э0
Ю1
Я2"
trackable_list_wrapper
(
Э0"
trackable_list_wrapper
╕
уnon_trainable_variables
аregularization_losses
фlayers
хmetrics
б	variables
 цlayer_regularization_losses
чlayer_metrics
вtrainable_variables
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
,:*АА2conv2d_24/kernel
:А2conv2d_24/bias
 "
trackable_list_wrapper
0
д0
е1"
trackable_list_wrapper
0
д0
е1"
trackable_list_wrapper
╕
шnon_trainable_variables
жregularization_losses
щlayers
ъmetrics
з	variables
 ыlayer_regularization_losses
ьlayer_metrics
иtrainable_variables
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(А2batch_normalization_30/beta
3:1А (2"batch_normalization_30/moving_mean
7:5А (2&batch_normalization_30/moving_variance
 "
trackable_list_wrapper
8
л0
м1
н2"
trackable_list_wrapper
(
л0"
trackable_list_wrapper
╕
эnon_trainable_variables
оregularization_losses
юlayers
яmetrics
п	variables
 Ёlayer_regularization_losses
ёlayer_metrics
░trainable_variables
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Єnon_trainable_variables
▓regularization_losses
єlayers
Їmetrics
│	variables
 їlayer_regularization_losses
Ўlayer_metrics
┤trainable_variables
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
ўnon_trainable_variables
╢regularization_losses
°layers
∙metrics
╖	variables
 ·layer_regularization_losses
√layer_metrics
╕trainable_variables
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
№non_trainable_variables
║regularization_losses
¤layers
■metrics
╗	variables
  layer_regularization_losses
Аlayer_metrics
╝trainable_variables
Ф__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses"
_generic_user_object
#:!АРм2dense_8/kernel
:м2dense_8/bias
 "
trackable_list_wrapper
0
╛0
┐1"
trackable_list_wrapper
0
╛0
┐1"
trackable_list_wrapper
╕
Бnon_trainable_variables
└regularization_losses
Вlayers
Гmetrics
┴	variables
 Дlayer_regularization_losses
Еlayer_metrics
┬trainable_variables
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(м2batch_normalization_31/beta
3:1м (2"batch_normalization_31/moving_mean
7:5м (2&batch_normalization_31/moving_variance
 "
trackable_list_wrapper
8
┼0
╞1
╟2"
trackable_list_wrapper
(
┼0"
trackable_list_wrapper
╕
Жnon_trainable_variables
╚regularization_losses
Зlayers
Иmetrics
╔	variables
 Йlayer_regularization_losses
Кlayer_metrics
╩trainable_variables
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Лnon_trainable_variables
╠regularization_losses
Мlayers
Нmetrics
═	variables
 Оlayer_regularization_losses
Пlayer_metrics
╬trainable_variables
Ъ__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses"
_generic_user_object
": 
м╚2dense_9/kernel
:╚2dense_9/bias
 "
trackable_list_wrapper
0
╨0
╤1"
trackable_list_wrapper
0
╨0
╤1"
trackable_list_wrapper
╕
Рnon_trainable_variables
╥regularization_losses
Сlayers
Тmetrics
╙	variables
 Уlayer_regularization_losses
Фlayer_metrics
╘trainable_variables
Ь__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(╚2batch_normalization_32/beta
3:1╚ (2"batch_normalization_32/moving_mean
7:5╚ (2&batch_normalization_32/moving_variance
 "
trackable_list_wrapper
8
╫0
╪1
┘2"
trackable_list_wrapper
(
╫0"
trackable_list_wrapper
╕
Хnon_trainable_variables
┌regularization_losses
Цlayers
Чmetrics
█	variables
 Шlayer_regularization_losses
Щlayer_metrics
▄trainable_variables
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Ъnon_trainable_variables
▐regularization_losses
Ыlayers
Ьmetrics
▀	variables
 Эlayer_regularization_losses
Юlayer_metrics
рtrainable_variables
а__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
_generic_user_object
": 	╚d2dense_10/kernel
:d2dense_10/bias
 "
trackable_list_wrapper
0
т0
у1"
trackable_list_wrapper
0
т0
у1"
trackable_list_wrapper
╕
Яnon_trainable_variables
фregularization_losses
аlayers
бmetrics
х	variables
 вlayer_regularization_losses
гlayer_metrics
цtrainable_variables
в__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'d2batch_normalization_33/beta
2:0d (2"batch_normalization_33/moving_mean
6:4d (2&batch_normalization_33/moving_variance
 "
trackable_list_wrapper
8
щ0
ъ1
ы2"
trackable_list_wrapper
(
щ0"
trackable_list_wrapper
╕
дnon_trainable_variables
ьregularization_losses
еlayers
жmetrics
э	variables
 зlayer_regularization_losses
иlayer_metrics
юtrainable_variables
д__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
йnon_trainable_variables
Ёregularization_losses
кlayers
лmetrics
ё	variables
 мlayer_regularization_losses
нlayer_metrics
Єtrainable_variables
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
!:d2dense_11/kernel
:2dense_11/bias
 "
trackable_list_wrapper
0
Ї0
ї1"
trackable_list_wrapper
0
Ї0
ї1"
trackable_list_wrapper
╕
оnon_trainable_variables
Ўregularization_losses
пlayers
░metrics
ў	variables
 ▒layer_regularization_losses
▓layer_metrics
°trainable_variables
и__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses"
_generic_user_object
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
╥
20
31
@2
A3
V4
W5
d6
e7
z8
{9
И10
Й11
Ю12
Я13
м14
н15
╞16
╟17
╪18
┘19
ъ20
ы21"
trackable_list_wrapper
о
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34"
trackable_list_wrapper
0
│0
┤1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
.
20
31"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
@0
A1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
V0
W1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
d0
e1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
z0
{1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
И0
Й1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
Ю0
Я1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
м0
н1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
╞0
╟1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
╪0
┘1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
ъ0
ы1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┘

╡total

╢count
╖	variables
╕	keras_api"Ю
_tf_keras_metricГ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 134}
Э

╣total

║count
╗
_fn_kwargs
╝	variables
╜	keras_api"╤
_tf_keras_metric╢{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 106}
:  (2total
:  (2count
0
╡0
╢1"
trackable_list_wrapper
.
╖	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
╣0
║1"
trackable_list_wrapper
.
╝	variables"
_generic_user_object
4:2 2RMSprop/conv2d_17/kernel/rms
&:$ 2RMSprop/conv2d_17/bias/rms
3:1 2'RMSprop/batch_normalization_23/beta/rms
5:3 А2RMSprop/conv2d_18/kernel/rms
':%А2RMSprop/conv2d_18/bias/rms
4:2А2'RMSprop/batch_normalization_24/beta/rms
5:3А 2RMSprop/conv2d_19/kernel/rms
&:$ 2RMSprop/conv2d_19/bias/rms
3:1 2'RMSprop/batch_normalization_25/beta/rms
5:3 А2RMSprop/conv2d_20/kernel/rms
':%А2RMSprop/conv2d_20/bias/rms
4:2А2'RMSprop/batch_normalization_26/beta/rms
6:4АА2RMSprop/conv2d_21/kernel/rms
':%А2RMSprop/conv2d_21/bias/rms
4:2А2'RMSprop/batch_normalization_27/beta/rms
6:4АА2RMSprop/conv2d_22/kernel/rms
':%А2RMSprop/conv2d_22/bias/rms
4:2А2'RMSprop/batch_normalization_28/beta/rms
6:4АА2RMSprop/conv2d_23/kernel/rms
':%А2RMSprop/conv2d_23/bias/rms
4:2А2'RMSprop/batch_normalization_29/beta/rms
6:4АА2RMSprop/conv2d_24/kernel/rms
':%А2RMSprop/conv2d_24/bias/rms
4:2А2'RMSprop/batch_normalization_30/beta/rms
-:+АРм2RMSprop/dense_8/kernel/rms
%:#м2RMSprop/dense_8/bias/rms
4:2м2'RMSprop/batch_normalization_31/beta/rms
,:*
м╚2RMSprop/dense_9/kernel/rms
%:#╚2RMSprop/dense_9/bias/rms
4:2╚2'RMSprop/batch_normalization_32/beta/rms
,:*	╚d2RMSprop/dense_10/kernel/rms
%:#d2RMSprop/dense_10/bias/rms
3:1d2'RMSprop/batch_normalization_33/beta/rms
+:)d2RMSprop/dense_11/kernel/rms
%:#2RMSprop/dense_11/bias/rms
■2√
,__inference_sequential_5_layer_call_fn_30907
,__inference_sequential_5_layer_call_fn_32728
,__inference_sequential_5_layer_call_fn_32863
,__inference_sequential_5_layer_call_fn_32112└
╖▓│
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
kwonlydefaultsк 
annotationsк *
 
Ё2э
 __inference__wrapped_model_28822╚
Л▓З
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
annotationsк *8в5
3К0
conv2d_17_input         мм
ъ2ч
G__inference_sequential_5_layer_call_and_return_conditional_losses_33107
G__inference_sequential_5_layer_call_and_return_conditional_losses_33442
G__inference_sequential_5_layer_call_and_return_conditional_losses_32281
G__inference_sequential_5_layer_call_and_return_conditional_losses_32450└
╖▓│
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
kwonlydefaultsк 
annotationsк *
 
╙2╨
)__inference_conv2d_17_layer_call_fn_33451в
Щ▓Х
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
annotationsк *
 
ю2ы
D__inference_conv2d_17_layer_call_and_return_conditional_losses_33462в
Щ▓Х
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
annotationsк *
 
Ъ2Ч
6__inference_batch_normalization_23_layer_call_fn_33475
6__inference_batch_normalization_23_layer_call_fn_33488
6__inference_batch_normalization_23_layer_call_fn_33501
6__inference_batch_normalization_23_layer_call_fn_33514┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
Ж2Г
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_33531
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_33548
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_33565
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_33582┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╙2╨
)__inference_conv2d_18_layer_call_fn_33591в
Щ▓Х
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
annotationsк *
 
ю2ы
D__inference_conv2d_18_layer_call_and_return_conditional_losses_33602в
Щ▓Х
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
annotationsк *
 
Ъ2Ч
6__inference_batch_normalization_24_layer_call_fn_33615
6__inference_batch_normalization_24_layer_call_fn_33628
6__inference_batch_normalization_24_layer_call_fn_33641
6__inference_batch_normalization_24_layer_call_fn_33654┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
Ж2Г
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_33671
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_33688
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_33705
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_33722┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
Ч2Ф
/__inference_max_pooling2d_8_layer_call_fn_29078р
Щ▓Х
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
annotationsк *@в=
;К84                                    
▓2п
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_29072р
Щ▓Х
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
annotationsк *@в=
;К84                                    
Т2П
*__inference_dropout_14_layer_call_fn_33727
*__inference_dropout_14_layer_call_fn_33732┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╚2┼
E__inference_dropout_14_layer_call_and_return_conditional_losses_33737
E__inference_dropout_14_layer_call_and_return_conditional_losses_33749┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╙2╨
)__inference_conv2d_19_layer_call_fn_33758в
Щ▓Х
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
annotationsк *
 
ю2ы
D__inference_conv2d_19_layer_call_and_return_conditional_losses_33769в
Щ▓Х
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
annotationsк *
 
Ъ2Ч
6__inference_batch_normalization_25_layer_call_fn_33782
6__inference_batch_normalization_25_layer_call_fn_33795
6__inference_batch_normalization_25_layer_call_fn_33808
6__inference_batch_normalization_25_layer_call_fn_33821┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
Ж2Г
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_33838
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_33855
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_33872
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_33889┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╙2╨
)__inference_conv2d_20_layer_call_fn_33898в
Щ▓Х
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
annotationsк *
 
ю2ы
D__inference_conv2d_20_layer_call_and_return_conditional_losses_33909в
Щ▓Х
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
annotationsк *
 
Ъ2Ч
6__inference_batch_normalization_26_layer_call_fn_33922
6__inference_batch_normalization_26_layer_call_fn_33935
6__inference_batch_normalization_26_layer_call_fn_33948
6__inference_batch_normalization_26_layer_call_fn_33961┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
Ж2Г
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_33978
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_33995
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_34012
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_34029┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
Ч2Ф
/__inference_max_pooling2d_9_layer_call_fn_29334р
Щ▓Х
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
annotationsк *@в=
;К84                                    
▓2п
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_29328р
Щ▓Х
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
annotationsк *@в=
;К84                                    
Т2П
*__inference_dropout_15_layer_call_fn_34034
*__inference_dropout_15_layer_call_fn_34039┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╚2┼
E__inference_dropout_15_layer_call_and_return_conditional_losses_34044
E__inference_dropout_15_layer_call_and_return_conditional_losses_34056┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╙2╨
)__inference_conv2d_21_layer_call_fn_34065в
Щ▓Х
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
annotationsк *
 
ю2ы
D__inference_conv2d_21_layer_call_and_return_conditional_losses_34076в
Щ▓Х
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
annotationsк *
 
Ъ2Ч
6__inference_batch_normalization_27_layer_call_fn_34089
6__inference_batch_normalization_27_layer_call_fn_34102
6__inference_batch_normalization_27_layer_call_fn_34115
6__inference_batch_normalization_27_layer_call_fn_34128┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
Ж2Г
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_34145
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_34162
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_34179
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_34196┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╙2╨
)__inference_conv2d_22_layer_call_fn_34205в
Щ▓Х
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
annotationsк *
 
ю2ы
D__inference_conv2d_22_layer_call_and_return_conditional_losses_34216в
Щ▓Х
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
annotationsк *
 
Ъ2Ч
6__inference_batch_normalization_28_layer_call_fn_34229
6__inference_batch_normalization_28_layer_call_fn_34242
6__inference_batch_normalization_28_layer_call_fn_34255
6__inference_batch_normalization_28_layer_call_fn_34268┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
Ж2Г
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_34285
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_34302
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_34319
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_34336┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
Ш2Х
0__inference_max_pooling2d_10_layer_call_fn_29590р
Щ▓Х
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
annotationsк *@в=
;К84                                    
│2░
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_29584р
Щ▓Х
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
annotationsк *@в=
;К84                                    
Т2П
*__inference_dropout_16_layer_call_fn_34341
*__inference_dropout_16_layer_call_fn_34346┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╚2┼
E__inference_dropout_16_layer_call_and_return_conditional_losses_34351
E__inference_dropout_16_layer_call_and_return_conditional_losses_34363┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╙2╨
)__inference_conv2d_23_layer_call_fn_34372в
Щ▓Х
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
annotationsк *
 
ю2ы
D__inference_conv2d_23_layer_call_and_return_conditional_losses_34383в
Щ▓Х
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
annotationsк *
 
Ъ2Ч
6__inference_batch_normalization_29_layer_call_fn_34396
6__inference_batch_normalization_29_layer_call_fn_34409
6__inference_batch_normalization_29_layer_call_fn_34422
6__inference_batch_normalization_29_layer_call_fn_34435┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
Ж2Г
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_34452
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_34469
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_34486
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_34503┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╙2╨
)__inference_conv2d_24_layer_call_fn_34512в
Щ▓Х
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
annotationsк *
 
ю2ы
D__inference_conv2d_24_layer_call_and_return_conditional_losses_34523в
Щ▓Х
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
annotationsк *
 
Ъ2Ч
6__inference_batch_normalization_30_layer_call_fn_34536
6__inference_batch_normalization_30_layer_call_fn_34549
6__inference_batch_normalization_30_layer_call_fn_34562
6__inference_batch_normalization_30_layer_call_fn_34575┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
Ж2Г
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_34592
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_34609
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_34626
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_34643┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
Ш2Х
0__inference_max_pooling2d_11_layer_call_fn_29846р
Щ▓Х
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
annotationsк *@в=
;К84                                    
│2░
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_29840р
Щ▓Х
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
annotationsк *@в=
;К84                                    
Т2П
*__inference_dropout_17_layer_call_fn_34648
*__inference_dropout_17_layer_call_fn_34653┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╚2┼
E__inference_dropout_17_layer_call_and_return_conditional_losses_34658
E__inference_dropout_17_layer_call_and_return_conditional_losses_34670┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╙2╨
)__inference_flatten_2_layer_call_fn_34675в
Щ▓Х
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
annotationsк *
 
ю2ы
D__inference_flatten_2_layer_call_and_return_conditional_losses_34681в
Щ▓Х
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
annotationsк *
 
╤2╬
'__inference_dense_8_layer_call_fn_34690в
Щ▓Х
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
annotationsк *
 
ь2щ
B__inference_dense_8_layer_call_and_return_conditional_losses_34701в
Щ▓Х
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
annotationsк *
 
к2з
6__inference_batch_normalization_31_layer_call_fn_34712
6__inference_batch_normalization_31_layer_call_fn_34723┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
р2▌
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_34740
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_34771┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
Т2П
*__inference_dropout_18_layer_call_fn_34776
*__inference_dropout_18_layer_call_fn_34781┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╚2┼
E__inference_dropout_18_layer_call_and_return_conditional_losses_34786
E__inference_dropout_18_layer_call_and_return_conditional_losses_34798┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╤2╬
'__inference_dense_9_layer_call_fn_34807в
Щ▓Х
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
annotationsк *
 
ь2щ
B__inference_dense_9_layer_call_and_return_conditional_losses_34818в
Щ▓Х
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
annotationsк *
 
к2з
6__inference_batch_normalization_32_layer_call_fn_34829
6__inference_batch_normalization_32_layer_call_fn_34840┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
р2▌
Q__inference_batch_normalization_32_layer_call_and_return_conditional_losses_34857
Q__inference_batch_normalization_32_layer_call_and_return_conditional_losses_34888┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
Т2П
*__inference_dropout_19_layer_call_fn_34893
*__inference_dropout_19_layer_call_fn_34898┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╚2┼
E__inference_dropout_19_layer_call_and_return_conditional_losses_34903
E__inference_dropout_19_layer_call_and_return_conditional_losses_34915┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╥2╧
(__inference_dense_10_layer_call_fn_34924в
Щ▓Х
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
annotationsк *
 
э2ъ
C__inference_dense_10_layer_call_and_return_conditional_losses_34935в
Щ▓Х
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
annotationsк *
 
к2з
6__inference_batch_normalization_33_layer_call_fn_34946
6__inference_batch_normalization_33_layer_call_fn_34957┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
р2▌
Q__inference_batch_normalization_33_layer_call_and_return_conditional_losses_34974
Q__inference_batch_normalization_33_layer_call_and_return_conditional_losses_35005┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
Т2П
*__inference_dropout_20_layer_call_fn_35010
*__inference_dropout_20_layer_call_fn_35015┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╚2┼
E__inference_dropout_20_layer_call_and_return_conditional_losses_35020
E__inference_dropout_20_layer_call_and_return_conditional_losses_35032┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╥2╧
(__inference_dense_11_layer_call_fn_35041в
Щ▓Х
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
annotationsк *
 
э2ъ
C__inference_dense_11_layer_call_and_return_conditional_losses_35052в
Щ▓Х
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
annotationsк *
 
╥B╧
#__inference_signature_wrapper_32593conv2d_17_input"Ф
Н▓Й
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
annotationsк *
 
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_5
J	
Const_6
J	
Const_7Й
 __inference__wrapped_model_28822фi*+л12389м?@ANOнUVW\]оcdersпyz{АБ░ЗИЙЦЧ▒ЭЮЯде▓лмн╛┐╟╞┼╨╤┘╪╫туыъщЇїBв?
8в5
3К0
conv2d_17_input         мм
к "3к0
.
dense_11"К
dense_11         э
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_33531Чл123MвJ
Cв@
:К7
inputs+                            
p 
к "?в<
5К2
0+                            
Ъ э
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_33548Чл123MвJ
Cв@
:К7
inputs+                            
p
к "?в<
5К2
0+                            
Ъ ╠
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_33565wл123=в:
3в0
*К'
inputs         ии 
p 
к "/в,
%К"
0         ии 
Ъ ╠
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_33582wл123=в:
3в0
*К'
inputs         ии 
p
к "/в,
%К"
0         ии 
Ъ ┼
6__inference_batch_normalization_23_layer_call_fn_33475Кл123MвJ
Cв@
:К7
inputs+                            
p 
к "2К/+                            ┼
6__inference_batch_normalization_23_layer_call_fn_33488Кл123MвJ
Cв@
:К7
inputs+                            
p
к "2К/+                            д
6__inference_batch_normalization_23_layer_call_fn_33501jл123=в:
3в0
*К'
inputs         ии 
p 
к ""К         ии д
6__inference_batch_normalization_23_layer_call_fn_33514jл123=в:
3в0
*К'
inputs         ии 
p
к ""К         ии я
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_33671Щм?@ANвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ я
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_33688Щм?@ANвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ ╬
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_33705yм?@A>в;
4в1
+К(
inputs         ддА
p 
к "0в-
&К#
0         ддА
Ъ ╬
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_33722yм?@A>в;
4в1
+К(
inputs         ддА
p
к "0в-
&К#
0         ддА
Ъ ╟
6__inference_batch_normalization_24_layer_call_fn_33615Мм?@ANвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           А╟
6__inference_batch_normalization_24_layer_call_fn_33628Мм?@ANвK
DвA
;К8
inputs,                           А
p
к "3К0,                           Аж
6__inference_batch_normalization_24_layer_call_fn_33641lм?@A>в;
4в1
+К(
inputs         ддА
p 
к "#К          ддАж
6__inference_batch_normalization_24_layer_call_fn_33654lм?@A>в;
4в1
+К(
inputs         ддА
p
к "#К          ддАэ
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_33838ЧнUVWMвJ
Cв@
:К7
inputs+                            
p 
к "?в<
5К2
0+                            
Ъ э
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_33855ЧнUVWMвJ
Cв@
:К7
inputs+                            
p
к "?в<
5К2
0+                            
Ъ ╠
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_33872wнUVW=в:
3в0
*К'
inputs         РР 
p 
к "/в,
%К"
0         РР 
Ъ ╠
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_33889wнUVW=в:
3в0
*К'
inputs         РР 
p
к "/в,
%К"
0         РР 
Ъ ┼
6__inference_batch_normalization_25_layer_call_fn_33782КнUVWMвJ
Cв@
:К7
inputs+                            
p 
к "2К/+                            ┼
6__inference_batch_normalization_25_layer_call_fn_33795КнUVWMвJ
Cв@
:К7
inputs+                            
p
к "2К/+                            д
6__inference_batch_normalization_25_layer_call_fn_33808jнUVW=в:
3в0
*К'
inputs         РР 
p 
к ""К         РР д
6__inference_batch_normalization_25_layer_call_fn_33821jнUVW=в:
3в0
*К'
inputs         РР 
p
к ""К         РР я
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_33978ЩоcdeNвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ я
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_33995ЩоcdeNвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ ╬
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_34012yоcde>в;
4в1
+К(
inputs         ООА
p 
к "0в-
&К#
0         ООА
Ъ ╬
Q__inference_batch_normalization_26_layer_call_and_return_conditional_losses_34029yоcde>в;
4в1
+К(
inputs         ООА
p
к "0в-
&К#
0         ООА
Ъ ╟
6__inference_batch_normalization_26_layer_call_fn_33922МоcdeNвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           А╟
6__inference_batch_normalization_26_layer_call_fn_33935МоcdeNвK
DвA
;К8
inputs,                           А
p
к "3К0,                           Аж
6__inference_batch_normalization_26_layer_call_fn_33948lоcde>в;
4в1
+К(
inputs         ООА
p 
к "#К          ООАж
6__inference_batch_normalization_26_layer_call_fn_33961lоcde>в;
4в1
+К(
inputs         ООА
p
к "#К          ООАя
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_34145Щпyz{NвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ я
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_34162Щпyz{NвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ ╩
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_34179uпyz{<в9
2в/
)К&
inputs         CCА
p 
к ".в+
$К!
0         CCА
Ъ ╩
Q__inference_batch_normalization_27_layer_call_and_return_conditional_losses_34196uпyz{<в9
2в/
)К&
inputs         CCА
p
к ".в+
$К!
0         CCА
Ъ ╟
6__inference_batch_normalization_27_layer_call_fn_34089Мпyz{NвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           А╟
6__inference_batch_normalization_27_layer_call_fn_34102Мпyz{NвK
DвA
;К8
inputs,                           А
p
к "3К0,                           Ав
6__inference_batch_normalization_27_layer_call_fn_34115hпyz{<в9
2в/
)К&
inputs         CCА
p 
к "!К         CCАв
6__inference_batch_normalization_27_layer_call_fn_34128hпyz{<в9
2в/
)К&
inputs         CCА
p
к "!К         CCАЄ
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_34285Ь░ЗИЙNвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ Є
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_34302Ь░ЗИЙNвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ ═
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_34319x░ЗИЙ<в9
2в/
)К&
inputs         ??А
p 
к ".в+
$К!
0         ??А
Ъ ═
Q__inference_batch_normalization_28_layer_call_and_return_conditional_losses_34336x░ЗИЙ<в9
2в/
)К&
inputs         ??А
p
к ".в+
$К!
0         ??А
Ъ ╩
6__inference_batch_normalization_28_layer_call_fn_34229П░ЗИЙNвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           А╩
6__inference_batch_normalization_28_layer_call_fn_34242П░ЗИЙNвK
DвA
;К8
inputs,                           А
p
к "3К0,                           Ае
6__inference_batch_normalization_28_layer_call_fn_34255k░ЗИЙ<в9
2в/
)К&
inputs         ??А
p 
к "!К         ??Ае
6__inference_batch_normalization_28_layer_call_fn_34268k░ЗИЙ<в9
2в/
)К&
inputs         ??А
p
к "!К         ??АЄ
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_34452Ь▒ЭЮЯNвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ Є
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_34469Ь▒ЭЮЯNвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ ═
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_34486x▒ЭЮЯ<в9
2в/
)К&
inputs         А
p 
к ".в+
$К!
0         А
Ъ ═
Q__inference_batch_normalization_29_layer_call_and_return_conditional_losses_34503x▒ЭЮЯ<в9
2в/
)К&
inputs         А
p
к ".в+
$К!
0         А
Ъ ╩
6__inference_batch_normalization_29_layer_call_fn_34396П▒ЭЮЯNвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           А╩
6__inference_batch_normalization_29_layer_call_fn_34409П▒ЭЮЯNвK
DвA
;К8
inputs,                           А
p
к "3К0,                           Ае
6__inference_batch_normalization_29_layer_call_fn_34422k▒ЭЮЯ<в9
2в/
)К&
inputs         А
p 
к "!К         Ае
6__inference_batch_normalization_29_layer_call_fn_34435k▒ЭЮЯ<в9
2в/
)К&
inputs         А
p
к "!К         АЄ
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_34592Ь▓лмнNвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ Є
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_34609Ь▓лмнNвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ ═
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_34626x▓лмн<в9
2в/
)К&
inputs         А
p 
к ".в+
$К!
0         А
Ъ ═
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_34643x▓лмн<в9
2в/
)К&
inputs         А
p
к ".в+
$К!
0         А
Ъ ╩
6__inference_batch_normalization_30_layer_call_fn_34536П▓лмнNвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           А╩
6__inference_batch_normalization_30_layer_call_fn_34549П▓лмнNвK
DвA
;К8
inputs,                           А
p
к "3К0,                           Ае
6__inference_batch_normalization_30_layer_call_fn_34562k▓лмн<в9
2в/
)К&
inputs         А
p 
к "!К         Ае
6__inference_batch_normalization_30_layer_call_fn_34575k▓лмн<в9
2в/
)К&
inputs         А
p
к "!К         А╗
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_34740f╟╞┼4в1
*в'
!К
inputs         м
p 
к "&в#
К
0         м
Ъ ╗
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_34771f╞╟┼4в1
*в'
!К
inputs         м
p
к "&в#
К
0         м
Ъ У
6__inference_batch_normalization_31_layer_call_fn_34712Y╟╞┼4в1
*в'
!К
inputs         м
p 
к "К         мУ
6__inference_batch_normalization_31_layer_call_fn_34723Y╞╟┼4в1
*в'
!К
inputs         м
p
к "К         м╗
Q__inference_batch_normalization_32_layer_call_and_return_conditional_losses_34857f┘╪╫4в1
*в'
!К
inputs         ╚
p 
к "&в#
К
0         ╚
Ъ ╗
Q__inference_batch_normalization_32_layer_call_and_return_conditional_losses_34888f╪┘╫4в1
*в'
!К
inputs         ╚
p
к "&в#
К
0         ╚
Ъ У
6__inference_batch_normalization_32_layer_call_fn_34829Y┘╪╫4в1
*в'
!К
inputs         ╚
p 
к "К         ╚У
6__inference_batch_normalization_32_layer_call_fn_34840Y╪┘╫4в1
*в'
!К
inputs         ╚
p
к "К         ╚╣
Q__inference_batch_normalization_33_layer_call_and_return_conditional_losses_34974dыъщ3в0
)в&
 К
inputs         d
p 
к "%в"
К
0         d
Ъ ╣
Q__inference_batch_normalization_33_layer_call_and_return_conditional_losses_35005dъыщ3в0
)в&
 К
inputs         d
p
к "%в"
К
0         d
Ъ С
6__inference_batch_normalization_33_layer_call_fn_34946Wыъщ3в0
)в&
 К
inputs         d
p 
к "К         dС
6__inference_batch_normalization_33_layer_call_fn_34957Wъыщ3в0
)в&
 К
inputs         d
p
к "К         d╕
D__inference_conv2d_17_layer_call_and_return_conditional_losses_33462p*+9в6
/в,
*К'
inputs         мм
к "/в,
%К"
0         ии 
Ъ Р
)__inference_conv2d_17_layer_call_fn_33451c*+9в6
/в,
*К'
inputs         мм
к ""К         ии ╣
D__inference_conv2d_18_layer_call_and_return_conditional_losses_33602q899в6
/в,
*К'
inputs         ии 
к "0в-
&К#
0         ддА
Ъ С
)__inference_conv2d_18_layer_call_fn_33591d899в6
/в,
*К'
inputs         ии 
к "#К          ддА╣
D__inference_conv2d_19_layer_call_and_return_conditional_losses_33769qNO:в7
0в-
+К(
inputs         ТТА
к "/в,
%К"
0         РР 
Ъ С
)__inference_conv2d_19_layer_call_fn_33758dNO:в7
0в-
+К(
inputs         ТТА
к ""К         РР ╣
D__inference_conv2d_20_layer_call_and_return_conditional_losses_33909q\]9в6
/в,
*К'
inputs         РР 
к "0в-
&К#
0         ООА
Ъ С
)__inference_conv2d_20_layer_call_fn_33898d\]9в6
/в,
*К'
inputs         РР 
к "#К          ООА╢
D__inference_conv2d_21_layer_call_and_return_conditional_losses_34076nrs8в5
.в+
)К&
inputs         GGА
к ".в+
$К!
0         CCА
Ъ О
)__inference_conv2d_21_layer_call_fn_34065ars8в5
.в+
)К&
inputs         GGА
к "!К         CCА╕
D__inference_conv2d_22_layer_call_and_return_conditional_losses_34216pАБ8в5
.в+
)К&
inputs         CCА
к ".в+
$К!
0         ??А
Ъ Р
)__inference_conv2d_22_layer_call_fn_34205cАБ8в5
.в+
)К&
inputs         CCА
к "!К         ??А╕
D__inference_conv2d_23_layer_call_and_return_conditional_losses_34383pЦЧ8в5
.в+
)К&
inputs           А
к ".в+
$К!
0         А
Ъ Р
)__inference_conv2d_23_layer_call_fn_34372cЦЧ8в5
.в+
)К&
inputs           А
к "!К         А╕
D__inference_conv2d_24_layer_call_and_return_conditional_losses_34523pде8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Р
)__inference_conv2d_24_layer_call_fn_34512cде8в5
.в+
)К&
inputs         А
к "!К         Аж
C__inference_dense_10_layer_call_and_return_conditional_losses_34935_ту0в-
&в#
!К
inputs         ╚
к "%в"
К
0         d
Ъ ~
(__inference_dense_10_layer_call_fn_34924Rту0в-
&в#
!К
inputs         ╚
к "К         dе
C__inference_dense_11_layer_call_and_return_conditional_losses_35052^Її/в,
%в"
 К
inputs         d
к "%в"
К
0         
Ъ }
(__inference_dense_11_layer_call_fn_35041QЇї/в,
%в"
 К
inputs         d
к "К         з
B__inference_dense_8_layer_call_and_return_conditional_losses_34701a╛┐1в.
'в$
"К
inputs         АР
к "&в#
К
0         м
Ъ 
'__inference_dense_8_layer_call_fn_34690T╛┐1в.
'в$
"К
inputs         АР
к "К         мж
B__inference_dense_9_layer_call_and_return_conditional_losses_34818`╨╤0в-
&в#
!К
inputs         м
к "&в#
К
0         ╚
Ъ ~
'__inference_dense_9_layer_call_fn_34807S╨╤0в-
&в#
!К
inputs         м
к "К         ╚╗
E__inference_dropout_14_layer_call_and_return_conditional_losses_33737r>в;
4в1
+К(
inputs         ТТА
p 
к "0в-
&К#
0         ТТА
Ъ ╗
E__inference_dropout_14_layer_call_and_return_conditional_losses_33749r>в;
4в1
+К(
inputs         ТТА
p
к "0в-
&К#
0         ТТА
Ъ У
*__inference_dropout_14_layer_call_fn_33727e>в;
4в1
+К(
inputs         ТТА
p 
к "#К          ТТАУ
*__inference_dropout_14_layer_call_fn_33732e>в;
4в1
+К(
inputs         ТТА
p
к "#К          ТТА╖
E__inference_dropout_15_layer_call_and_return_conditional_losses_34044n<в9
2в/
)К&
inputs         GGА
p 
к ".в+
$К!
0         GGА
Ъ ╖
E__inference_dropout_15_layer_call_and_return_conditional_losses_34056n<в9
2в/
)К&
inputs         GGА
p
к ".в+
$К!
0         GGА
Ъ П
*__inference_dropout_15_layer_call_fn_34034a<в9
2в/
)К&
inputs         GGА
p 
к "!К         GGАП
*__inference_dropout_15_layer_call_fn_34039a<в9
2в/
)К&
inputs         GGА
p
к "!К         GGА╖
E__inference_dropout_16_layer_call_and_return_conditional_losses_34351n<в9
2в/
)К&
inputs           А
p 
к ".в+
$К!
0           А
Ъ ╖
E__inference_dropout_16_layer_call_and_return_conditional_losses_34363n<в9
2в/
)К&
inputs           А
p
к ".в+
$К!
0           А
Ъ П
*__inference_dropout_16_layer_call_fn_34341a<в9
2в/
)К&
inputs           А
p 
к "!К           АП
*__inference_dropout_16_layer_call_fn_34346a<в9
2в/
)К&
inputs           А
p
к "!К           А╖
E__inference_dropout_17_layer_call_and_return_conditional_losses_34658n<в9
2в/
)К&
inputs         А
p 
к ".в+
$К!
0         А
Ъ ╖
E__inference_dropout_17_layer_call_and_return_conditional_losses_34670n<в9
2в/
)К&
inputs         А
p
к ".в+
$К!
0         А
Ъ П
*__inference_dropout_17_layer_call_fn_34648a<в9
2в/
)К&
inputs         А
p 
к "!К         АП
*__inference_dropout_17_layer_call_fn_34653a<в9
2в/
)К&
inputs         А
p
к "!К         Аз
E__inference_dropout_18_layer_call_and_return_conditional_losses_34786^4в1
*в'
!К
inputs         м
p 
к "&в#
К
0         м
Ъ з
E__inference_dropout_18_layer_call_and_return_conditional_losses_34798^4в1
*в'
!К
inputs         м
p
к "&в#
К
0         м
Ъ 
*__inference_dropout_18_layer_call_fn_34776Q4в1
*в'
!К
inputs         м
p 
к "К         м
*__inference_dropout_18_layer_call_fn_34781Q4в1
*в'
!К
inputs         м
p
к "К         мз
E__inference_dropout_19_layer_call_and_return_conditional_losses_34903^4в1
*в'
!К
inputs         ╚
p 
к "&в#
К
0         ╚
Ъ з
E__inference_dropout_19_layer_call_and_return_conditional_losses_34915^4в1
*в'
!К
inputs         ╚
p
к "&в#
К
0         ╚
Ъ 
*__inference_dropout_19_layer_call_fn_34893Q4в1
*в'
!К
inputs         ╚
p 
к "К         ╚
*__inference_dropout_19_layer_call_fn_34898Q4в1
*в'
!К
inputs         ╚
p
к "К         ╚е
E__inference_dropout_20_layer_call_and_return_conditional_losses_35020\3в0
)в&
 К
inputs         d
p 
к "%в"
К
0         d
Ъ е
E__inference_dropout_20_layer_call_and_return_conditional_losses_35032\3в0
)в&
 К
inputs         d
p
к "%в"
К
0         d
Ъ }
*__inference_dropout_20_layer_call_fn_35010O3в0
)в&
 К
inputs         d
p 
к "К         d}
*__inference_dropout_20_layer_call_fn_35015O3в0
)в&
 К
inputs         d
p
к "К         dл
D__inference_flatten_2_layer_call_and_return_conditional_losses_34681c8в5
.в+
)К&
inputs         А
к "'в$
К
0         АР
Ъ Г
)__inference_flatten_2_layer_call_fn_34675V8в5
.в+
)К&
inputs         А
к "К         АРю
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_29584ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_10_layer_call_fn_29590СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_29840ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_11_layer_call_fn_29846СRвO
HвE
CК@
inputs4                                    
к ";К84                                    э
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_29072ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ┼
/__inference_max_pooling2d_8_layer_call_fn_29078СRвO
HвE
CК@
inputs4                                    
к ";К84                                    э
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_29328ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ┼
/__inference_max_pooling2d_9_layer_call_fn_29334СRвO
HвE
CК@
inputs4                                    
к ";К84                                    к
G__inference_sequential_5_layer_call_and_return_conditional_losses_32281▐i*+л12389м?@ANOнUVW\]оcdersпyz{АБ░ЗИЙЦЧ▒ЭЮЯде▓лмн╛┐╟╞┼╨╤┘╪╫туыъщЇїJвG
@в=
3К0
conv2d_17_input         мм
p 

 
к "%в"
К
0         
Ъ к
G__inference_sequential_5_layer_call_and_return_conditional_losses_32450▐i*+л12389м?@ANOнUVW\]оcdersпyz{АБ░ЗИЙЦЧ▒ЭЮЯде▓лмн╛┐╞╟┼╨╤╪┘╫туъыщЇїJвG
@в=
3К0
conv2d_17_input         мм
p

 
к "%в"
К
0         
Ъ б
G__inference_sequential_5_layer_call_and_return_conditional_losses_33107╒i*+л12389м?@ANOнUVW\]оcdersпyz{АБ░ЗИЙЦЧ▒ЭЮЯде▓лмн╛┐╟╞┼╨╤┘╪╫туыъщЇїAв>
7в4
*К'
inputs         мм
p 

 
к "%в"
К
0         
Ъ б
G__inference_sequential_5_layer_call_and_return_conditional_losses_33442╒i*+л12389м?@ANOнUVW\]оcdersпyz{АБ░ЗИЙЦЧ▒ЭЮЯде▓лмн╛┐╞╟┼╨╤╪┘╫туъыщЇїAв>
7в4
*К'
inputs         мм
p

 
к "%в"
К
0         
Ъ В
,__inference_sequential_5_layer_call_fn_30907╤i*+л12389м?@ANOнUVW\]оcdersпyz{АБ░ЗИЙЦЧ▒ЭЮЯде▓лмн╛┐╟╞┼╨╤┘╪╫туыъщЇїJвG
@в=
3К0
conv2d_17_input         мм
p 

 
к "К         В
,__inference_sequential_5_layer_call_fn_32112╤i*+л12389м?@ANOнUVW\]оcdersпyz{АБ░ЗИЙЦЧ▒ЭЮЯде▓лмн╛┐╞╟┼╨╤╪┘╫туъыщЇїJвG
@в=
3К0
conv2d_17_input         мм
p

 
к "К         ∙
,__inference_sequential_5_layer_call_fn_32728╚i*+л12389м?@ANOнUVW\]оcdersпyz{АБ░ЗИЙЦЧ▒ЭЮЯде▓лмн╛┐╟╞┼╨╤┘╪╫туыъщЇїAв>
7в4
*К'
inputs         мм
p 

 
к "К         ∙
,__inference_sequential_5_layer_call_fn_32863╚i*+л12389м?@ANOнUVW\]оcdersпyz{АБ░ЗИЙЦЧ▒ЭЮЯде▓лмн╛┐╞╟┼╨╤╪┘╫туъыщЇїAв>
7в4
*К'
inputs         мм
p

 
к "К         Я
#__inference_signature_wrapper_32593ўi*+л12389м?@ANOнUVW\]оcdersпyz{АБ░ЗИЙЦЧ▒ЭЮЯде▓лмн╛┐╟╞┼╨╤┘╪╫туыъщЇїUвR
в 
KкH
F
conv2d_17_input3К0
conv2d_17_input         мм"3к0
.
dense_11"К
dense_11         