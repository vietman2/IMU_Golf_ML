Ї
сБ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 

BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

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
$
DisableCopyOnRead
resource
ћ
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
2"
Utype:
2"
epsilonfloat%Зб8"&
exponential_avg_factorfloat%  ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype

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

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
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

ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeэout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
С
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
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
ї
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
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628лз
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

Adam/v/conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/conv2d_5/bias
y
(Adam/v/conv2d_5/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_5/bias*
_output_shapes
:*
dtype0

Adam/m/conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/conv2d_5/bias
y
(Adam/m/conv2d_5/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_5/bias*
_output_shapes
:*
dtype0

Adam/v/conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/v/conv2d_5/kernel

*Adam/v/conv2d_5/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_5/kernel*&
_output_shapes
:*
dtype0

Adam/m/conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/m/conv2d_5/kernel

*Adam/m/conv2d_5/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_5/kernel*&
_output_shapes
:*
dtype0

!Adam/v/batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/v/batch_normalization_3/beta

5Adam/v/batch_normalization_3/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_3/beta*
_output_shapes
:*
dtype0

!Adam/m/batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/m/batch_normalization_3/beta

5Adam/m/batch_normalization_3/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_3/beta*
_output_shapes
:*
dtype0

"Adam/v/batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/v/batch_normalization_3/gamma

6Adam/v/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_3/gamma*
_output_shapes
:*
dtype0

"Adam/m/batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/m/batch_normalization_3/gamma

6Adam/m/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_3/gamma*
_output_shapes
:*
dtype0

Adam/v/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/conv2d_4/bias
y
(Adam/v/conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_4/bias*
_output_shapes
:*
dtype0

Adam/m/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/conv2d_4/bias
y
(Adam/m/conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_4/bias*
_output_shapes
:*
dtype0

Adam/v/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/v/conv2d_4/kernel

*Adam/v/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_4/kernel*&
_output_shapes
: *
dtype0

Adam/m/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/m/conv2d_4/kernel

*Adam/m/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_4/kernel*&
_output_shapes
: *
dtype0

!Adam/v/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/v/batch_normalization_2/beta

5Adam/v/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_2/beta*
_output_shapes
: *
dtype0

!Adam/m/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/m/batch_normalization_2/beta

5Adam/m/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_2/beta*
_output_shapes
: *
dtype0

"Adam/v/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/v/batch_normalization_2/gamma

6Adam/v/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_2/gamma*
_output_shapes
: *
dtype0

"Adam/m/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/m/batch_normalization_2/gamma

6Adam/m/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_2/gamma*
_output_shapes
: *
dtype0

Adam/v/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/conv2d_3/bias
y
(Adam/v/conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_3/bias*
_output_shapes
: *
dtype0

Adam/m/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/conv2d_3/bias
y
(Adam/m/conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_3/bias*
_output_shapes
: *
dtype0

Adam/v/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *'
shared_nameAdam/v/conv2d_3/kernel

*Adam/v/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_3/kernel*&
_output_shapes
:@ *
dtype0

Adam/m/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *'
shared_nameAdam/m/conv2d_3/kernel

*Adam/m/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_3/kernel*&
_output_shapes
:@ *
dtype0

Adam/v/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_2/bias
y
(Adam/v/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/bias*
_output_shapes
:@*
dtype0

Adam/m/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_2/bias
y
(Adam/m/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/bias*
_output_shapes
:@*
dtype0

Adam/v/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/v/conv2d_2/kernel

*Adam/v/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/kernel*&
_output_shapes
: @*
dtype0

Adam/m/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/m/conv2d_2/kernel

*Adam/m/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/kernel*&
_output_shapes
: @*
dtype0

!Adam/v/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/v/batch_normalization_1/beta

5Adam/v/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_1/beta*
_output_shapes
: *
dtype0

!Adam/m/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/m/batch_normalization_1/beta

5Adam/m/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_1/beta*
_output_shapes
: *
dtype0

"Adam/v/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/v/batch_normalization_1/gamma

6Adam/v/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_1/gamma*
_output_shapes
: *
dtype0

"Adam/m/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/m/batch_normalization_1/gamma

6Adam/m/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_1/gamma*
_output_shapes
: *
dtype0

Adam/v/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/conv2d_1/bias
y
(Adam/v/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/bias*
_output_shapes
: *
dtype0

Adam/m/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/conv2d_1/bias
y
(Adam/m/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/bias*
_output_shapes
: *
dtype0

Adam/v/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/v/conv2d_1/kernel

*Adam/v/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/kernel*&
_output_shapes
: *
dtype0

Adam/m/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/m/conv2d_1/kernel

*Adam/m/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/kernel*&
_output_shapes
: *
dtype0

Adam/v/batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/v/batch_normalization/beta

3Adam/v/batch_normalization/beta/Read/ReadVariableOpReadVariableOpAdam/v/batch_normalization/beta*
_output_shapes
:*
dtype0

Adam/m/batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/m/batch_normalization/beta

3Adam/m/batch_normalization/beta/Read/ReadVariableOpReadVariableOpAdam/m/batch_normalization/beta*
_output_shapes
:*
dtype0

 Adam/v/batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/v/batch_normalization/gamma

4Adam/v/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp Adam/v/batch_normalization/gamma*
_output_shapes
:*
dtype0

 Adam/m/batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/m/batch_normalization/gamma

4Adam/m/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp Adam/m/batch_normalization/gamma*
_output_shapes
:*
dtype0
|
Adam/v/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/v/conv2d/bias
u
&Adam/v/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d/bias*
_output_shapes
:*
dtype0
|
Adam/m/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/m/conv2d/bias
u
&Adam/m/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d/bias*
_output_shapes
:*
dtype0

Adam/v/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/conv2d/kernel

(Adam/v/conv2d/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d/kernel*&
_output_shapes
:*
dtype0

Adam/m/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/conv2d/kernel

(Adam/m/conv2d/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d/kernel*&
_output_shapes
:*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:*
dtype0

conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:*
dtype0
Ђ
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_3/moving_variance

9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes
:*
dtype0

!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_3/moving_mean

5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes
:*
dtype0

batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_3/beta

.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes
:*
dtype0

batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_3/gamma

/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes
:*
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:*
dtype0

conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
: *
dtype0
Ђ
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%batch_normalization_2/moving_variance

9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
: *
dtype0

!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!batch_normalization_2/moving_mean

5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
: *
dtype0

batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namebatch_normalization_2/beta

.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes
: *
dtype0

batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_2/gamma

/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
: *
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
: *
dtype0

conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ * 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:@ *
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0

conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: @*
dtype0
Ђ
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%batch_normalization_1/moving_variance

9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
: *
dtype0

!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!batch_normalization_1/moving_mean

5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
: *
dtype0

batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namebatch_normalization_1/beta

.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
: *
dtype0

batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_1/gamma

/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
: *
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0

conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: *
dtype0

#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization/moving_variance

7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:*
dtype0

batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!batch_normalization/moving_mean

3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:*
dtype0

batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namebatch_normalization/beta

,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:*
dtype0

batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namebatch_normalization/gamma

-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0

serving_default_input_1Placeholder*,
_output_shapes
:џџџџџџџџџш*
dtype0*!
shape:џџџџџџџџџш
Ў
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d/kernelconv2d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_1/kernelconv2d_1/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_4/kernelconv2d_4/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_5/kernelconv2d_5/bias*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџш*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_15783

NoOpNoOp
гЁ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ё
valueЁBў  Bі 
Т
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer-12
layer_with_weights-7
layer-13
layer_with_weights-8
layer-14
layer_with_weights-9
layer-15
layer-16
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*

	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses* 

"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses* 
Ш
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias
 0_jit_compiled_convolution_op*
е
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses
7axis
	8gamma
9beta
:moving_mean
;moving_variance*

<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses* 
Ш
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

Hkernel
Ibias
 J_jit_compiled_convolution_op*
е
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses
Qaxis
	Rgamma
Sbeta
Tmoving_mean
Umoving_variance*

V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses* 
Ш
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses

bkernel
cbias
 d_jit_compiled_convolution_op*

e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses* 
Ш
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses

qkernel
rbias
 s_jit_compiled_convolution_op*
е
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses
zaxis
	{gamma
|beta
}moving_mean
~moving_variance*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
б
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op*
р
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis

gamma
	beta
moving_mean
moving_variance*
б
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	 bias
!Ё_jit_compiled_convolution_op*

Ђ	variables
Ѓtrainable_variables
Єregularization_losses
Ѕ	keras_api
І__call__
+Ї&call_and_return_all_conditional_losses* 

Ј	variables
Љtrainable_variables
Њregularization_losses
Ћ	keras_api
Ќ__call__
+­&call_and_return_all_conditional_losses* 
т
.0
/1
82
93
:4
;5
H6
I7
R8
S9
T10
U11
b12
c13
q14
r15
{16
|17
}18
~19
20
21
22
23
24
25
26
 27*
 
.0
/1
82
93
H4
I5
R6
S7
b8
c9
q10
r11
{12
|13
14
15
16
17
18
 19*
* 
Е
Ўnon_trainable_variables
Џlayers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Гtrace_0
Дtrace_1* 

Еtrace_0
Жtrace_1* 
* 

З
_variables
И_iterations
Й_learning_rate
К_index_dict
Л
_momentums
М_velocities
Н_update_step_xla*

Оserving_default* 
* 
* 
* 

Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 

Фtrace_0* 

Хtrace_0* 
* 
* 
* 

Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses* 

Ыtrace_0* 

Ьtrace_0* 

.0
/1*

.0
/1*
* 

Эnon_trainable_variables
Юlayers
Яmetrics
 аlayer_regularization_losses
бlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*

вtrace_0* 

гtrace_0* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
80
91
:2
;3*

80
91*
* 

дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*

йtrace_0
кtrace_1* 

лtrace_0
мtrace_1* 
* 
hb
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

нnon_trainable_variables
оlayers
пmetrics
 рlayer_regularization_losses
сlayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 

тtrace_0* 

уtrace_0* 

H0
I1*

H0
I1*
* 

фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*

щtrace_0* 

ъtrace_0* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
R0
S1
T2
U3*

R0
S1*
* 

ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*

№trace_0
ёtrace_1* 

ђtrace_0
ѓtrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

єnon_trainable_variables
ѕlayers
іmetrics
 їlayer_regularization_losses
јlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses* 

љtrace_0* 

њtrace_0* 

b0
c1*

b0
c1*
* 

ћnon_trainable_variables
ќlayers
§metrics
 ўlayer_regularization_losses
џlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses*

trace_0* 

trace_0* 
_Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

q0
r1*

q0
r1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*

trace_0* 

trace_0* 
_Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
{0
|1
}2
~3*

{0
|1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_2/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_2/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_2/moving_mean;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_2/moving_variance?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

0
1*

0
1*
* 

 non_trainable_variables
Ёlayers
Ђmetrics
 Ѓlayer_regularization_losses
Єlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Ѕtrace_0* 

Іtrace_0* 
_Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
0
1
2
3*

0
1*
* 

Їnon_trainable_variables
Јlayers
Љmetrics
 Њlayer_regularization_losses
Ћlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Ќtrace_0
­trace_1* 

Ўtrace_0
Џtrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_3/gamma5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_3/beta4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_3/moving_mean;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_3/moving_variance?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

0
 1*

0
 1*
* 

Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Еtrace_0* 

Жtrace_0* 
_Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
Ђ	variables
Ѓtrainable_variables
Єregularization_losses
І__call__
+Ї&call_and_return_all_conditional_losses
'Ї"call_and_return_conditional_losses* 

Мtrace_0* 

Нtrace_0* 
* 
* 
* 

Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
Ј	variables
Љtrainable_variables
Њregularization_losses
Ќ__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses* 

Уtrace_0* 

Фtrace_0* 
>
:0
;1
T2
U3
}4
~5
6
7*

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
17*

Х0*
* 
* 
* 
* 
* 
* 
ы
И0
Ц1
Ч2
Ш3
Щ4
Ъ5
Ы6
Ь7
Э8
Ю9
Я10
а11
б12
в13
г14
д15
е16
ж17
з18
и19
й20
к21
л22
м23
н24
о25
п26
р27
с28
т29
у30
ф31
х32
ц33
ч34
ш35
щ36
ъ37
ы38
ь39
э40*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
Ў
Ц0
Ш1
Ъ2
Ь3
Ю4
а5
в6
д7
ж8
и9
к10
м11
о12
р13
т14
ф15
ц16
ш17
ъ18
ь19*
Ў
Ч0
Щ1
Ы2
Э3
Я4
б5
г6
е7
з8
й9
л10
н11
п12
с13
у14
х15
ч16
щ17
ы18
э19*
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
* 
* 
* 
* 
* 

:0
;1*
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
* 
* 
* 
* 

T0
U1*
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

}0
~1*
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
* 
* 
* 
* 

0
1*
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
ю	variables
я	keras_api

№total

ёcount*
_Y
VARIABLE_VALUEAdam/m/conv2d/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/conv2d/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/conv2d/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/m/batch_normalization/gamma1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/v/batch_normalization/gamma1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/batch_normalization/beta1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/batch_normalization/beta1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_1/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_1/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_1/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_1/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_1/gamma2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_1/gamma2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_1/beta2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_1/beta2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_2/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_2/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_2/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_2/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_3/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_3/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_3/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_3/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_2/gamma2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_2/gamma2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_2/beta2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_2/beta2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_4/kernel2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_4/kernel2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_4/bias2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_4/bias2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_3/gamma2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_3/gamma2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_3/beta2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_3/beta2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_5/kernel2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_5/kernel2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_5/bias2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_5/bias2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*

№0
ё1*

ю	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_1/kernelconv2d_1/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_4/kernelconv2d_4/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_5/kernelconv2d_5/bias	iterationlearning_rateAdam/m/conv2d/kernelAdam/v/conv2d/kernelAdam/m/conv2d/biasAdam/v/conv2d/bias Adam/m/batch_normalization/gamma Adam/v/batch_normalization/gammaAdam/m/batch_normalization/betaAdam/v/batch_normalization/betaAdam/m/conv2d_1/kernelAdam/v/conv2d_1/kernelAdam/m/conv2d_1/biasAdam/v/conv2d_1/bias"Adam/m/batch_normalization_1/gamma"Adam/v/batch_normalization_1/gamma!Adam/m/batch_normalization_1/beta!Adam/v/batch_normalization_1/betaAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/biasAdam/m/conv2d_3/kernelAdam/v/conv2d_3/kernelAdam/m/conv2d_3/biasAdam/v/conv2d_3/bias"Adam/m/batch_normalization_2/gamma"Adam/v/batch_normalization_2/gamma!Adam/m/batch_normalization_2/beta!Adam/v/batch_normalization_2/betaAdam/m/conv2d_4/kernelAdam/v/conv2d_4/kernelAdam/m/conv2d_4/biasAdam/v/conv2d_4/bias"Adam/m/batch_normalization_3/gamma"Adam/v/batch_normalization_3/gamma!Adam/m/batch_normalization_3/beta!Adam/v/batch_normalization_3/betaAdam/m/conv2d_5/kernelAdam/v/conv2d_5/kernelAdam/m/conv2d_5/biasAdam/v/conv2d_5/biastotalcountConst*U
TinN
L2J*
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
GPU 2J 8 *'
f"R 
__inference__traced_save_16732

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_1/kernelconv2d_1/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_4/kernelconv2d_4/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_5/kernelconv2d_5/bias	iterationlearning_rateAdam/m/conv2d/kernelAdam/v/conv2d/kernelAdam/m/conv2d/biasAdam/v/conv2d/bias Adam/m/batch_normalization/gamma Adam/v/batch_normalization/gammaAdam/m/batch_normalization/betaAdam/v/batch_normalization/betaAdam/m/conv2d_1/kernelAdam/v/conv2d_1/kernelAdam/m/conv2d_1/biasAdam/v/conv2d_1/bias"Adam/m/batch_normalization_1/gamma"Adam/v/batch_normalization_1/gamma!Adam/m/batch_normalization_1/beta!Adam/v/batch_normalization_1/betaAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/biasAdam/m/conv2d_3/kernelAdam/v/conv2d_3/kernelAdam/m/conv2d_3/biasAdam/v/conv2d_3/bias"Adam/m/batch_normalization_2/gamma"Adam/v/batch_normalization_2/gamma!Adam/m/batch_normalization_2/beta!Adam/v/batch_normalization_2/betaAdam/m/conv2d_4/kernelAdam/v/conv2d_4/kernelAdam/m/conv2d_4/biasAdam/v/conv2d_4/bias"Adam/m/batch_normalization_3/gamma"Adam/v/batch_normalization_3/gamma!Adam/m/batch_normalization_3/beta!Adam/v/batch_normalization_3/betaAdam/m/conv2d_5/kernelAdam/v/conv2d_5/kernelAdam/m/conv2d_5/biasAdam/v/conv2d_5/biastotalcount*T
TinM
K2I*
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
GPU 2J 8 **
f%R#
!__inference__traced_restore_16957юю

J
.__inference_remove_padding_layer_call_fn_16252

inputs
identityЮ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_remove_padding_layer_call_and_return_conditional_losses_15428z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

ќ
C__inference_conv2d_5_layer_call_and_return_conditional_losses_15415

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџj
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџq
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


а
5__inference_batch_normalization_2_layer_call_fn_16079

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_15125
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16075:%!

_user_specified_name16073:%!

_user_specified_name16071:%!

_user_specified_name16069:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
л

(__inference_conv2d_3_layer_call_fn_16055

inputs!
unknown:@ 
	unknown_0: 
identityЂStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_15364
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16051:%!

_user_specified_name16049:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

П
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_16209

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџА
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


Ю
3__inference_batch_normalization_layer_call_fn_15871

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_14982
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name15867:%!

_user_specified_name15865:%!

_user_specified_name15863:%!

_user_specified_name15861:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ЦЈ
ёD
__inference__traced_save_16732
file_prefix>
$read_disablecopyonread_conv2d_kernel:2
$read_1_disablecopyonread_conv2d_bias:@
2read_2_disablecopyonread_batch_normalization_gamma:?
1read_3_disablecopyonread_batch_normalization_beta:F
8read_4_disablecopyonread_batch_normalization_moving_mean:J
<read_5_disablecopyonread_batch_normalization_moving_variance:B
(read_6_disablecopyonread_conv2d_1_kernel: 4
&read_7_disablecopyonread_conv2d_1_bias: B
4read_8_disablecopyonread_batch_normalization_1_gamma: A
3read_9_disablecopyonread_batch_normalization_1_beta: I
;read_10_disablecopyonread_batch_normalization_1_moving_mean: M
?read_11_disablecopyonread_batch_normalization_1_moving_variance: C
)read_12_disablecopyonread_conv2d_2_kernel: @5
'read_13_disablecopyonread_conv2d_2_bias:@C
)read_14_disablecopyonread_conv2d_3_kernel:@ 5
'read_15_disablecopyonread_conv2d_3_bias: C
5read_16_disablecopyonread_batch_normalization_2_gamma: B
4read_17_disablecopyonread_batch_normalization_2_beta: I
;read_18_disablecopyonread_batch_normalization_2_moving_mean: M
?read_19_disablecopyonread_batch_normalization_2_moving_variance: C
)read_20_disablecopyonread_conv2d_4_kernel: 5
'read_21_disablecopyonread_conv2d_4_bias:C
5read_22_disablecopyonread_batch_normalization_3_gamma:B
4read_23_disablecopyonread_batch_normalization_3_beta:I
;read_24_disablecopyonread_batch_normalization_3_moving_mean:M
?read_25_disablecopyonread_batch_normalization_3_moving_variance:C
)read_26_disablecopyonread_conv2d_5_kernel:5
'read_27_disablecopyonread_conv2d_5_bias:-
#read_28_disablecopyonread_iteration:	 1
'read_29_disablecopyonread_learning_rate: H
.read_30_disablecopyonread_adam_m_conv2d_kernel:H
.read_31_disablecopyonread_adam_v_conv2d_kernel::
,read_32_disablecopyonread_adam_m_conv2d_bias::
,read_33_disablecopyonread_adam_v_conv2d_bias:H
:read_34_disablecopyonread_adam_m_batch_normalization_gamma:H
:read_35_disablecopyonread_adam_v_batch_normalization_gamma:G
9read_36_disablecopyonread_adam_m_batch_normalization_beta:G
9read_37_disablecopyonread_adam_v_batch_normalization_beta:J
0read_38_disablecopyonread_adam_m_conv2d_1_kernel: J
0read_39_disablecopyonread_adam_v_conv2d_1_kernel: <
.read_40_disablecopyonread_adam_m_conv2d_1_bias: <
.read_41_disablecopyonread_adam_v_conv2d_1_bias: J
<read_42_disablecopyonread_adam_m_batch_normalization_1_gamma: J
<read_43_disablecopyonread_adam_v_batch_normalization_1_gamma: I
;read_44_disablecopyonread_adam_m_batch_normalization_1_beta: I
;read_45_disablecopyonread_adam_v_batch_normalization_1_beta: J
0read_46_disablecopyonread_adam_m_conv2d_2_kernel: @J
0read_47_disablecopyonread_adam_v_conv2d_2_kernel: @<
.read_48_disablecopyonread_adam_m_conv2d_2_bias:@<
.read_49_disablecopyonread_adam_v_conv2d_2_bias:@J
0read_50_disablecopyonread_adam_m_conv2d_3_kernel:@ J
0read_51_disablecopyonread_adam_v_conv2d_3_kernel:@ <
.read_52_disablecopyonread_adam_m_conv2d_3_bias: <
.read_53_disablecopyonread_adam_v_conv2d_3_bias: J
<read_54_disablecopyonread_adam_m_batch_normalization_2_gamma: J
<read_55_disablecopyonread_adam_v_batch_normalization_2_gamma: I
;read_56_disablecopyonread_adam_m_batch_normalization_2_beta: I
;read_57_disablecopyonread_adam_v_batch_normalization_2_beta: J
0read_58_disablecopyonread_adam_m_conv2d_4_kernel: J
0read_59_disablecopyonread_adam_v_conv2d_4_kernel: <
.read_60_disablecopyonread_adam_m_conv2d_4_bias:<
.read_61_disablecopyonread_adam_v_conv2d_4_bias:J
<read_62_disablecopyonread_adam_m_batch_normalization_3_gamma:J
<read_63_disablecopyonread_adam_v_batch_normalization_3_gamma:I
;read_64_disablecopyonread_adam_m_batch_normalization_3_beta:I
;read_65_disablecopyonread_adam_v_batch_normalization_3_beta:J
0read_66_disablecopyonread_adam_m_conv2d_5_kernel:J
0read_67_disablecopyonread_adam_v_conv2d_5_kernel:<
.read_68_disablecopyonread_adam_m_conv2d_5_bias:<
.read_69_disablecopyonread_adam_v_conv2d_5_bias:)
read_70_disablecopyonread_total: )
read_71_disablecopyonread_count: 
savev2_const
identity_145ЂMergeV2CheckpointsЂRead/DisableCopyOnReadЂRead/ReadVariableOpЂRead_1/DisableCopyOnReadЂRead_1/ReadVariableOpЂRead_10/DisableCopyOnReadЂRead_10/ReadVariableOpЂRead_11/DisableCopyOnReadЂRead_11/ReadVariableOpЂRead_12/DisableCopyOnReadЂRead_12/ReadVariableOpЂRead_13/DisableCopyOnReadЂRead_13/ReadVariableOpЂRead_14/DisableCopyOnReadЂRead_14/ReadVariableOpЂRead_15/DisableCopyOnReadЂRead_15/ReadVariableOpЂRead_16/DisableCopyOnReadЂRead_16/ReadVariableOpЂRead_17/DisableCopyOnReadЂRead_17/ReadVariableOpЂRead_18/DisableCopyOnReadЂRead_18/ReadVariableOpЂRead_19/DisableCopyOnReadЂRead_19/ReadVariableOpЂRead_2/DisableCopyOnReadЂRead_2/ReadVariableOpЂRead_20/DisableCopyOnReadЂRead_20/ReadVariableOpЂRead_21/DisableCopyOnReadЂRead_21/ReadVariableOpЂRead_22/DisableCopyOnReadЂRead_22/ReadVariableOpЂRead_23/DisableCopyOnReadЂRead_23/ReadVariableOpЂRead_24/DisableCopyOnReadЂRead_24/ReadVariableOpЂRead_25/DisableCopyOnReadЂRead_25/ReadVariableOpЂRead_26/DisableCopyOnReadЂRead_26/ReadVariableOpЂRead_27/DisableCopyOnReadЂRead_27/ReadVariableOpЂRead_28/DisableCopyOnReadЂRead_28/ReadVariableOpЂRead_29/DisableCopyOnReadЂRead_29/ReadVariableOpЂRead_3/DisableCopyOnReadЂRead_3/ReadVariableOpЂRead_30/DisableCopyOnReadЂRead_30/ReadVariableOpЂRead_31/DisableCopyOnReadЂRead_31/ReadVariableOpЂRead_32/DisableCopyOnReadЂRead_32/ReadVariableOpЂRead_33/DisableCopyOnReadЂRead_33/ReadVariableOpЂRead_34/DisableCopyOnReadЂRead_34/ReadVariableOpЂRead_35/DisableCopyOnReadЂRead_35/ReadVariableOpЂRead_36/DisableCopyOnReadЂRead_36/ReadVariableOpЂRead_37/DisableCopyOnReadЂRead_37/ReadVariableOpЂRead_38/DisableCopyOnReadЂRead_38/ReadVariableOpЂRead_39/DisableCopyOnReadЂRead_39/ReadVariableOpЂRead_4/DisableCopyOnReadЂRead_4/ReadVariableOpЂRead_40/DisableCopyOnReadЂRead_40/ReadVariableOpЂRead_41/DisableCopyOnReadЂRead_41/ReadVariableOpЂRead_42/DisableCopyOnReadЂRead_42/ReadVariableOpЂRead_43/DisableCopyOnReadЂRead_43/ReadVariableOpЂRead_44/DisableCopyOnReadЂRead_44/ReadVariableOpЂRead_45/DisableCopyOnReadЂRead_45/ReadVariableOpЂRead_46/DisableCopyOnReadЂRead_46/ReadVariableOpЂRead_47/DisableCopyOnReadЂRead_47/ReadVariableOpЂRead_48/DisableCopyOnReadЂRead_48/ReadVariableOpЂRead_49/DisableCopyOnReadЂRead_49/ReadVariableOpЂRead_5/DisableCopyOnReadЂRead_5/ReadVariableOpЂRead_50/DisableCopyOnReadЂRead_50/ReadVariableOpЂRead_51/DisableCopyOnReadЂRead_51/ReadVariableOpЂRead_52/DisableCopyOnReadЂRead_52/ReadVariableOpЂRead_53/DisableCopyOnReadЂRead_53/ReadVariableOpЂRead_54/DisableCopyOnReadЂRead_54/ReadVariableOpЂRead_55/DisableCopyOnReadЂRead_55/ReadVariableOpЂRead_56/DisableCopyOnReadЂRead_56/ReadVariableOpЂRead_57/DisableCopyOnReadЂRead_57/ReadVariableOpЂRead_58/DisableCopyOnReadЂRead_58/ReadVariableOpЂRead_59/DisableCopyOnReadЂRead_59/ReadVariableOpЂRead_6/DisableCopyOnReadЂRead_6/ReadVariableOpЂRead_60/DisableCopyOnReadЂRead_60/ReadVariableOpЂRead_61/DisableCopyOnReadЂRead_61/ReadVariableOpЂRead_62/DisableCopyOnReadЂRead_62/ReadVariableOpЂRead_63/DisableCopyOnReadЂRead_63/ReadVariableOpЂRead_64/DisableCopyOnReadЂRead_64/ReadVariableOpЂRead_65/DisableCopyOnReadЂRead_65/ReadVariableOpЂRead_66/DisableCopyOnReadЂRead_66/ReadVariableOpЂRead_67/DisableCopyOnReadЂRead_67/ReadVariableOpЂRead_68/DisableCopyOnReadЂRead_68/ReadVariableOpЂRead_69/DisableCopyOnReadЂRead_69/ReadVariableOpЂRead_7/DisableCopyOnReadЂRead_7/ReadVariableOpЂRead_70/DisableCopyOnReadЂRead_70/ReadVariableOpЂRead_71/DisableCopyOnReadЂRead_71/ReadVariableOpЂRead_8/DisableCopyOnReadЂRead_8/ReadVariableOpЂRead_9/DisableCopyOnReadЂRead_9/ReadVariableOpw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: v
Read/DisableCopyOnReadDisableCopyOnRead$read_disablecopyonread_conv2d_kernel"/device:CPU:0*
_output_shapes
 Ј
Read/ReadVariableOpReadVariableOp$read_disablecopyonread_conv2d_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:x
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_conv2d_bias"/device:CPU:0*
_output_shapes
  
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_conv2d_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_2/DisableCopyOnReadDisableCopyOnRead2read_2_disablecopyonread_batch_normalization_gamma"/device:CPU:0*
_output_shapes
 Ў
Read_2/ReadVariableOpReadVariableOp2read_2_disablecopyonread_batch_normalization_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_3/DisableCopyOnReadDisableCopyOnRead1read_3_disablecopyonread_batch_normalization_beta"/device:CPU:0*
_output_shapes
 ­
Read_3/ReadVariableOpReadVariableOp1read_3_disablecopyonread_batch_normalization_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_4/DisableCopyOnReadDisableCopyOnRead8read_4_disablecopyonread_batch_normalization_moving_mean"/device:CPU:0*
_output_shapes
 Д
Read_4/ReadVariableOpReadVariableOp8read_4_disablecopyonread_batch_normalization_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_5/DisableCopyOnReadDisableCopyOnRead<read_5_disablecopyonread_batch_normalization_moving_variance"/device:CPU:0*
_output_shapes
 И
Read_5/ReadVariableOpReadVariableOp<read_5_disablecopyonread_batch_normalization_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 А
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_conv2d_1_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
: z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_conv2d_1_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_conv2d_1_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_8/DisableCopyOnReadDisableCopyOnRead4read_8_disablecopyonread_batch_normalization_1_gamma"/device:CPU:0*
_output_shapes
 А
Read_8/ReadVariableOpReadVariableOp4read_8_disablecopyonread_batch_normalization_1_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_9/DisableCopyOnReadDisableCopyOnRead3read_9_disablecopyonread_batch_normalization_1_beta"/device:CPU:0*
_output_shapes
 Џ
Read_9/ReadVariableOpReadVariableOp3read_9_disablecopyonread_batch_normalization_1_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_10/DisableCopyOnReadDisableCopyOnRead;read_10_disablecopyonread_batch_normalization_1_moving_mean"/device:CPU:0*
_output_shapes
 Й
Read_10/ReadVariableOpReadVariableOp;read_10_disablecopyonread_batch_normalization_1_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_11/DisableCopyOnReadDisableCopyOnRead?read_11_disablecopyonread_batch_normalization_1_moving_variance"/device:CPU:0*
_output_shapes
 Н
Read_11/ReadVariableOpReadVariableOp?read_11_disablecopyonread_batch_normalization_1_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: ~
Read_12/DisableCopyOnReadDisableCopyOnRead)read_12_disablecopyonread_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 Г
Read_12/ReadVariableOpReadVariableOp)read_12_disablecopyonread_conv2d_2_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*&
_output_shapes
: @|
Read_13/DisableCopyOnReadDisableCopyOnRead'read_13_disablecopyonread_conv2d_2_bias"/device:CPU:0*
_output_shapes
 Ѕ
Read_13/ReadVariableOpReadVariableOp'read_13_disablecopyonread_conv2d_2_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_14/DisableCopyOnReadDisableCopyOnRead)read_14_disablecopyonread_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 Г
Read_14/ReadVariableOpReadVariableOp)read_14_disablecopyonread_conv2d_3_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0w
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ m
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ |
Read_15/DisableCopyOnReadDisableCopyOnRead'read_15_disablecopyonread_conv2d_3_bias"/device:CPU:0*
_output_shapes
 Ѕ
Read_15/ReadVariableOpReadVariableOp'read_15_disablecopyonread_conv2d_3_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_16/DisableCopyOnReadDisableCopyOnRead5read_16_disablecopyonread_batch_normalization_2_gamma"/device:CPU:0*
_output_shapes
 Г
Read_16/ReadVariableOpReadVariableOp5read_16_disablecopyonread_batch_normalization_2_gamma^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_17/DisableCopyOnReadDisableCopyOnRead4read_17_disablecopyonread_batch_normalization_2_beta"/device:CPU:0*
_output_shapes
 В
Read_17/ReadVariableOpReadVariableOp4read_17_disablecopyonread_batch_normalization_2_beta^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_18/DisableCopyOnReadDisableCopyOnRead;read_18_disablecopyonread_batch_normalization_2_moving_mean"/device:CPU:0*
_output_shapes
 Й
Read_18/ReadVariableOpReadVariableOp;read_18_disablecopyonread_batch_normalization_2_moving_mean^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_19/DisableCopyOnReadDisableCopyOnRead?read_19_disablecopyonread_batch_normalization_2_moving_variance"/device:CPU:0*
_output_shapes
 Н
Read_19/ReadVariableOpReadVariableOp?read_19_disablecopyonread_batch_normalization_2_moving_variance^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
: ~
Read_20/DisableCopyOnReadDisableCopyOnRead)read_20_disablecopyonread_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 Г
Read_20/ReadVariableOpReadVariableOp)read_20_disablecopyonread_conv2d_4_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*&
_output_shapes
: |
Read_21/DisableCopyOnReadDisableCopyOnRead'read_21_disablecopyonread_conv2d_4_bias"/device:CPU:0*
_output_shapes
 Ѕ
Read_21/ReadVariableOpReadVariableOp'read_21_disablecopyonread_conv2d_4_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_22/DisableCopyOnReadDisableCopyOnRead5read_22_disablecopyonread_batch_normalization_3_gamma"/device:CPU:0*
_output_shapes
 Г
Read_22/ReadVariableOpReadVariableOp5read_22_disablecopyonread_batch_normalization_3_gamma^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_23/DisableCopyOnReadDisableCopyOnRead4read_23_disablecopyonread_batch_normalization_3_beta"/device:CPU:0*
_output_shapes
 В
Read_23/ReadVariableOpReadVariableOp4read_23_disablecopyonread_batch_normalization_3_beta^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_24/DisableCopyOnReadDisableCopyOnRead;read_24_disablecopyonread_batch_normalization_3_moving_mean"/device:CPU:0*
_output_shapes
 Й
Read_24/ReadVariableOpReadVariableOp;read_24_disablecopyonread_batch_normalization_3_moving_mean^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_25/DisableCopyOnReadDisableCopyOnRead?read_25_disablecopyonread_batch_normalization_3_moving_variance"/device:CPU:0*
_output_shapes
 Н
Read_25/ReadVariableOpReadVariableOp?read_25_disablecopyonread_batch_normalization_3_moving_variance^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_26/DisableCopyOnReadDisableCopyOnRead)read_26_disablecopyonread_conv2d_5_kernel"/device:CPU:0*
_output_shapes
 Г
Read_26/ReadVariableOpReadVariableOp)read_26_disablecopyonread_conv2d_5_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*&
_output_shapes
:|
Read_27/DisableCopyOnReadDisableCopyOnRead'read_27_disablecopyonread_conv2d_5_bias"/device:CPU:0*
_output_shapes
 Ѕ
Read_27/ReadVariableOpReadVariableOp'read_27_disablecopyonread_conv2d_5_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_28/DisableCopyOnReadDisableCopyOnRead#read_28_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 
Read_28/ReadVariableOpReadVariableOp#read_28_disablecopyonread_iteration^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_29/DisableCopyOnReadDisableCopyOnRead'read_29_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 Ё
Read_29/ReadVariableOpReadVariableOp'read_29_disablecopyonread_learning_rate^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_30/DisableCopyOnReadDisableCopyOnRead.read_30_disablecopyonread_adam_m_conv2d_kernel"/device:CPU:0*
_output_shapes
 И
Read_30/ReadVariableOpReadVariableOp.read_30_disablecopyonread_adam_m_conv2d_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*&
_output_shapes
:
Read_31/DisableCopyOnReadDisableCopyOnRead.read_31_disablecopyonread_adam_v_conv2d_kernel"/device:CPU:0*
_output_shapes
 И
Read_31/ReadVariableOpReadVariableOp.read_31_disablecopyonread_adam_v_conv2d_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*&
_output_shapes
:
Read_32/DisableCopyOnReadDisableCopyOnRead,read_32_disablecopyonread_adam_m_conv2d_bias"/device:CPU:0*
_output_shapes
 Њ
Read_32/ReadVariableOpReadVariableOp,read_32_disablecopyonread_adam_m_conv2d_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_33/DisableCopyOnReadDisableCopyOnRead,read_33_disablecopyonread_adam_v_conv2d_bias"/device:CPU:0*
_output_shapes
 Њ
Read_33/ReadVariableOpReadVariableOp,read_33_disablecopyonread_adam_v_conv2d_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_34/DisableCopyOnReadDisableCopyOnRead:read_34_disablecopyonread_adam_m_batch_normalization_gamma"/device:CPU:0*
_output_shapes
 И
Read_34/ReadVariableOpReadVariableOp:read_34_disablecopyonread_adam_m_batch_normalization_gamma^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_35/DisableCopyOnReadDisableCopyOnRead:read_35_disablecopyonread_adam_v_batch_normalization_gamma"/device:CPU:0*
_output_shapes
 И
Read_35/ReadVariableOpReadVariableOp:read_35_disablecopyonread_adam_v_batch_normalization_gamma^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_36/DisableCopyOnReadDisableCopyOnRead9read_36_disablecopyonread_adam_m_batch_normalization_beta"/device:CPU:0*
_output_shapes
 З
Read_36/ReadVariableOpReadVariableOp9read_36_disablecopyonread_adam_m_batch_normalization_beta^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_37/DisableCopyOnReadDisableCopyOnRead9read_37_disablecopyonread_adam_v_batch_normalization_beta"/device:CPU:0*
_output_shapes
 З
Read_37/ReadVariableOpReadVariableOp9read_37_disablecopyonread_adam_v_batch_normalization_beta^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_38/DisableCopyOnReadDisableCopyOnRead0read_38_disablecopyonread_adam_m_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 К
Read_38/ReadVariableOpReadVariableOp0read_38_disablecopyonread_adam_m_conv2d_1_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*&
_output_shapes
: 
Read_39/DisableCopyOnReadDisableCopyOnRead0read_39_disablecopyonread_adam_v_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 К
Read_39/ReadVariableOpReadVariableOp0read_39_disablecopyonread_adam_v_conv2d_1_kernel^Read_39/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*&
_output_shapes
: 
Read_40/DisableCopyOnReadDisableCopyOnRead.read_40_disablecopyonread_adam_m_conv2d_1_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_40/ReadVariableOpReadVariableOp.read_40_disablecopyonread_adam_m_conv2d_1_bias^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_41/DisableCopyOnReadDisableCopyOnRead.read_41_disablecopyonread_adam_v_conv2d_1_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_41/ReadVariableOpReadVariableOp.read_41_disablecopyonread_adam_v_conv2d_1_bias^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_42/DisableCopyOnReadDisableCopyOnRead<read_42_disablecopyonread_adam_m_batch_normalization_1_gamma"/device:CPU:0*
_output_shapes
 К
Read_42/ReadVariableOpReadVariableOp<read_42_disablecopyonread_adam_m_batch_normalization_1_gamma^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_43/DisableCopyOnReadDisableCopyOnRead<read_43_disablecopyonread_adam_v_batch_normalization_1_gamma"/device:CPU:0*
_output_shapes
 К
Read_43/ReadVariableOpReadVariableOp<read_43_disablecopyonread_adam_v_batch_normalization_1_gamma^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_44/DisableCopyOnReadDisableCopyOnRead;read_44_disablecopyonread_adam_m_batch_normalization_1_beta"/device:CPU:0*
_output_shapes
 Й
Read_44/ReadVariableOpReadVariableOp;read_44_disablecopyonread_adam_m_batch_normalization_1_beta^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_45/DisableCopyOnReadDisableCopyOnRead;read_45_disablecopyonread_adam_v_batch_normalization_1_beta"/device:CPU:0*
_output_shapes
 Й
Read_45/ReadVariableOpReadVariableOp;read_45_disablecopyonread_adam_v_batch_normalization_1_beta^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_46/DisableCopyOnReadDisableCopyOnRead0read_46_disablecopyonread_adam_m_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 К
Read_46/ReadVariableOpReadVariableOp0read_46_disablecopyonread_adam_m_conv2d_2_kernel^Read_46/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*&
_output_shapes
: @
Read_47/DisableCopyOnReadDisableCopyOnRead0read_47_disablecopyonread_adam_v_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 К
Read_47/ReadVariableOpReadVariableOp0read_47_disablecopyonread_adam_v_conv2d_2_kernel^Read_47/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*&
_output_shapes
: @
Read_48/DisableCopyOnReadDisableCopyOnRead.read_48_disablecopyonread_adam_m_conv2d_2_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_48/ReadVariableOpReadVariableOp.read_48_disablecopyonread_adam_m_conv2d_2_bias^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_49/DisableCopyOnReadDisableCopyOnRead.read_49_disablecopyonread_adam_v_conv2d_2_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_49/ReadVariableOpReadVariableOp.read_49_disablecopyonread_adam_v_conv2d_2_bias^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_50/DisableCopyOnReadDisableCopyOnRead0read_50_disablecopyonread_adam_m_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 К
Read_50/ReadVariableOpReadVariableOp0read_50_disablecopyonread_adam_m_conv2d_3_kernel^Read_50/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0x
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ o
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ 
Read_51/DisableCopyOnReadDisableCopyOnRead0read_51_disablecopyonread_adam_v_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 К
Read_51/ReadVariableOpReadVariableOp0read_51_disablecopyonread_adam_v_conv2d_3_kernel^Read_51/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0x
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ o
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ 
Read_52/DisableCopyOnReadDisableCopyOnRead.read_52_disablecopyonread_adam_m_conv2d_3_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_52/ReadVariableOpReadVariableOp.read_52_disablecopyonread_adam_m_conv2d_3_bias^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_53/DisableCopyOnReadDisableCopyOnRead.read_53_disablecopyonread_adam_v_conv2d_3_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_53/ReadVariableOpReadVariableOp.read_53_disablecopyonread_adam_v_conv2d_3_bias^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_54/DisableCopyOnReadDisableCopyOnRead<read_54_disablecopyonread_adam_m_batch_normalization_2_gamma"/device:CPU:0*
_output_shapes
 К
Read_54/ReadVariableOpReadVariableOp<read_54_disablecopyonread_adam_m_batch_normalization_2_gamma^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_55/DisableCopyOnReadDisableCopyOnRead<read_55_disablecopyonread_adam_v_batch_normalization_2_gamma"/device:CPU:0*
_output_shapes
 К
Read_55/ReadVariableOpReadVariableOp<read_55_disablecopyonread_adam_v_batch_normalization_2_gamma^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_56/DisableCopyOnReadDisableCopyOnRead;read_56_disablecopyonread_adam_m_batch_normalization_2_beta"/device:CPU:0*
_output_shapes
 Й
Read_56/ReadVariableOpReadVariableOp;read_56_disablecopyonread_adam_m_batch_normalization_2_beta^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_57/DisableCopyOnReadDisableCopyOnRead;read_57_disablecopyonread_adam_v_batch_normalization_2_beta"/device:CPU:0*
_output_shapes
 Й
Read_57/ReadVariableOpReadVariableOp;read_57_disablecopyonread_adam_v_batch_normalization_2_beta^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_58/DisableCopyOnReadDisableCopyOnRead0read_58_disablecopyonread_adam_m_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 К
Read_58/ReadVariableOpReadVariableOp0read_58_disablecopyonread_adam_m_conv2d_4_kernel^Read_58/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0x
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: o
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*&
_output_shapes
: 
Read_59/DisableCopyOnReadDisableCopyOnRead0read_59_disablecopyonread_adam_v_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 К
Read_59/ReadVariableOpReadVariableOp0read_59_disablecopyonread_adam_v_conv2d_4_kernel^Read_59/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0x
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: o
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*&
_output_shapes
: 
Read_60/DisableCopyOnReadDisableCopyOnRead.read_60_disablecopyonread_adam_m_conv2d_4_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_60/ReadVariableOpReadVariableOp.read_60_disablecopyonread_adam_m_conv2d_4_bias^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_61/DisableCopyOnReadDisableCopyOnRead.read_61_disablecopyonread_adam_v_conv2d_4_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_61/ReadVariableOpReadVariableOp.read_61_disablecopyonread_adam_v_conv2d_4_bias^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_62/DisableCopyOnReadDisableCopyOnRead<read_62_disablecopyonread_adam_m_batch_normalization_3_gamma"/device:CPU:0*
_output_shapes
 К
Read_62/ReadVariableOpReadVariableOp<read_62_disablecopyonread_adam_m_batch_normalization_3_gamma^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_63/DisableCopyOnReadDisableCopyOnRead<read_63_disablecopyonread_adam_v_batch_normalization_3_gamma"/device:CPU:0*
_output_shapes
 К
Read_63/ReadVariableOpReadVariableOp<read_63_disablecopyonread_adam_v_batch_normalization_3_gamma^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_64/DisableCopyOnReadDisableCopyOnRead;read_64_disablecopyonread_adam_m_batch_normalization_3_beta"/device:CPU:0*
_output_shapes
 Й
Read_64/ReadVariableOpReadVariableOp;read_64_disablecopyonread_adam_m_batch_normalization_3_beta^Read_64/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_65/DisableCopyOnReadDisableCopyOnRead;read_65_disablecopyonread_adam_v_batch_normalization_3_beta"/device:CPU:0*
_output_shapes
 Й
Read_65/ReadVariableOpReadVariableOp;read_65_disablecopyonread_adam_v_batch_normalization_3_beta^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_66/DisableCopyOnReadDisableCopyOnRead0read_66_disablecopyonread_adam_m_conv2d_5_kernel"/device:CPU:0*
_output_shapes
 К
Read_66/ReadVariableOpReadVariableOp0read_66_disablecopyonread_adam_m_conv2d_5_kernel^Read_66/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*&
_output_shapes
:
Read_67/DisableCopyOnReadDisableCopyOnRead0read_67_disablecopyonread_adam_v_conv2d_5_kernel"/device:CPU:0*
_output_shapes
 К
Read_67/ReadVariableOpReadVariableOp0read_67_disablecopyonread_adam_v_conv2d_5_kernel^Read_67/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*&
_output_shapes
:
Read_68/DisableCopyOnReadDisableCopyOnRead.read_68_disablecopyonread_adam_m_conv2d_5_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_68/ReadVariableOpReadVariableOp.read_68_disablecopyonread_adam_m_conv2d_5_bias^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_69/DisableCopyOnReadDisableCopyOnRead.read_69_disablecopyonread_adam_v_conv2d_5_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_69/ReadVariableOpReadVariableOp.read_69_disablecopyonread_adam_v_conv2d_5_bias^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes
:t
Read_70/DisableCopyOnReadDisableCopyOnReadread_70_disablecopyonread_total"/device:CPU:0*
_output_shapes
 
Read_70/ReadVariableOpReadVariableOpread_70_disablecopyonread_total^Read_70/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_71/DisableCopyOnReadDisableCopyOnReadread_71_disablecopyonread_count"/device:CPU:0*
_output_shapes
 
Read_71/ReadVariableOpReadVariableOpread_71_disablecopyonread_count^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes
: Д
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:I*
dtype0*н
valueгBаIB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:I*
dtype0*Ї
valueBIB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B с
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *W
dtypesM
K2I	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_144Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_145IdentityIdentity_144:output:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_145Identity_145:output:0*(
_construction_contextkEagerRuntime*Љ
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=I9

_output_shapes
: 

_user_specified_nameConst:%H!

_user_specified_namecount:%G!

_user_specified_nametotal:4F0
.
_user_specified_nameAdam/v/conv2d_5/bias:4E0
.
_user_specified_nameAdam/m/conv2d_5/bias:6D2
0
_user_specified_nameAdam/v/conv2d_5/kernel:6C2
0
_user_specified_nameAdam/m/conv2d_5/kernel:AB=
;
_user_specified_name#!Adam/v/batch_normalization_3/beta:AA=
;
_user_specified_name#!Adam/m/batch_normalization_3/beta:B@>
<
_user_specified_name$"Adam/v/batch_normalization_3/gamma:B?>
<
_user_specified_name$"Adam/m/batch_normalization_3/gamma:4>0
.
_user_specified_nameAdam/v/conv2d_4/bias:4=0
.
_user_specified_nameAdam/m/conv2d_4/bias:6<2
0
_user_specified_nameAdam/v/conv2d_4/kernel:6;2
0
_user_specified_nameAdam/m/conv2d_4/kernel:A:=
;
_user_specified_name#!Adam/v/batch_normalization_2/beta:A9=
;
_user_specified_name#!Adam/m/batch_normalization_2/beta:B8>
<
_user_specified_name$"Adam/v/batch_normalization_2/gamma:B7>
<
_user_specified_name$"Adam/m/batch_normalization_2/gamma:460
.
_user_specified_nameAdam/v/conv2d_3/bias:450
.
_user_specified_nameAdam/m/conv2d_3/bias:642
0
_user_specified_nameAdam/v/conv2d_3/kernel:632
0
_user_specified_nameAdam/m/conv2d_3/kernel:420
.
_user_specified_nameAdam/v/conv2d_2/bias:410
.
_user_specified_nameAdam/m/conv2d_2/bias:602
0
_user_specified_nameAdam/v/conv2d_2/kernel:6/2
0
_user_specified_nameAdam/m/conv2d_2/kernel:A.=
;
_user_specified_name#!Adam/v/batch_normalization_1/beta:A-=
;
_user_specified_name#!Adam/m/batch_normalization_1/beta:B,>
<
_user_specified_name$"Adam/v/batch_normalization_1/gamma:B+>
<
_user_specified_name$"Adam/m/batch_normalization_1/gamma:4*0
.
_user_specified_nameAdam/v/conv2d_1/bias:4)0
.
_user_specified_nameAdam/m/conv2d_1/bias:6(2
0
_user_specified_nameAdam/v/conv2d_1/kernel:6'2
0
_user_specified_nameAdam/m/conv2d_1/kernel:?&;
9
_user_specified_name!Adam/v/batch_normalization/beta:?%;
9
_user_specified_name!Adam/m/batch_normalization/beta:@$<
:
_user_specified_name" Adam/v/batch_normalization/gamma:@#<
:
_user_specified_name" Adam/m/batch_normalization/gamma:2".
,
_user_specified_nameAdam/v/conv2d/bias:2!.
,
_user_specified_nameAdam/m/conv2d/bias:4 0
.
_user_specified_nameAdam/v/conv2d/kernel:40
.
_user_specified_nameAdam/m/conv2d/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:-)
'
_user_specified_nameconv2d_5/bias:/+
)
_user_specified_nameconv2d_5/kernel:EA
?
_user_specified_name'%batch_normalization_3/moving_variance:A=
;
_user_specified_name#!batch_normalization_3/moving_mean::6
4
_user_specified_namebatch_normalization_3/beta:;7
5
_user_specified_namebatch_normalization_3/gamma:-)
'
_user_specified_nameconv2d_4/bias:/+
)
_user_specified_nameconv2d_4/kernel:EA
?
_user_specified_name'%batch_normalization_2/moving_variance:A=
;
_user_specified_name#!batch_normalization_2/moving_mean::6
4
_user_specified_namebatch_normalization_2/beta:;7
5
_user_specified_namebatch_normalization_2/gamma:-)
'
_user_specified_nameconv2d_3/bias:/+
)
_user_specified_nameconv2d_3/kernel:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_2/kernel:EA
?
_user_specified_name'%batch_normalization_1/moving_variance:A=
;
_user_specified_name#!batch_normalization_1/moving_mean::
6
4
_user_specified_namebatch_normalization_1/beta:;	7
5
_user_specified_namebatch_normalization_1/gamma:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_1/kernel:C?
=
_user_specified_name%#batch_normalization/moving_variance:?;
9
_user_specified_name!batch_normalization/moving_mean:84
2
_user_specified_namebatch_normalization/beta:95
3
_user_specified_namebatch_normalization/gamma:+'
%
_user_specified_nameconv2d/bias:-)
'
_user_specified_nameconv2d/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Я

P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_15054

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Я

P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_15143

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
І
e
I__inference_remove_padding_layer_call_and_return_conditional_losses_16260

inputs
identityl
strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"    
           n
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"    іџџџ        n
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            ў
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*

begin_mask*
end_maskx
IdentityIdentitystrided_slice:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Я

P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_16227

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_16009

inputs
identityЁ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

П
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_15125

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ А
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs


а
5__inference_batch_normalization_1_layer_call_fn_15950

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_15036
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name15946:%!

_user_specified_name15944:%!

_user_specified_name15942:%!

_user_specified_name15940:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Ж
K
/__inference_up_sampling2d_1_layer_call_fn_16133

inputs
identityи
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_15181
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
И
ќ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_15347

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџџ@Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџџ@j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:џџџџџџџџџџ 
 
_user_specified_nameinputs
Я

P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_15999

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs

П
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_15036

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ А
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
 
f
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_15181

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:Е
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Я

P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_15222

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

ќ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_15364

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

d
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_16046

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:Е
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ф
^
B__inference_reshape_layer_call_and_return_conditional_losses_15264

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :шQ
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Љ
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџшa
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:џџџџџџџџџш"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџш:T P
,
_output_shapes
:џџџџџџџџџш
 
_user_specified_nameinputs


(__inference_conv2d_2_layer_call_fn_16018

inputs!
unknown: @
	unknown_0:@
identityЂStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_15347x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16014:%!

_user_specified_name16012:X T
0
_output_shapes
:џџџџџџџџџџ 
 
_user_specified_nameinputs

П
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_15204

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџА
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_15013

inputs
identityЁ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_15085

inputs
identityЁ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

Н
N__inference_batch_normalization_layer_call_and_return_conditional_losses_14964

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџА
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
з
e
I__inference_custom_padding_layer_call_and_return_conditional_losses_15825

inputs
identityl
strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               n
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            ь
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_maskn
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*%
valueB"    џџџџ        p
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                p
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            є
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_maskg
Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   
         w
TileTilestrided_slice:output:0Tile/multiples:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
i
Tile_1/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   
         }
Tile_1Tilestrided_slice_1:output:0Tile_1/multiples:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2Tile:output:0inputsTile_1:output:0concat/axis:output:0*
N*
T0*0
_output_shapes
:џџџџџџџџџќ`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:џџџџџџџџџќ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџш:X T
0
_output_shapes
:џџџџџџџџџш
 
_user_specified_nameinputs


Ю
3__inference_batch_normalization_layer_call_fn_15858

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_14964
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name15854:%!

_user_specified_name15852:%!

_user_specified_name15850:%!

_user_specified_name15848:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

d
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_15102

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:Е
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
И
ќ
C__inference_conv2d_1_layer_call_and_return_conditional_losses_15321

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџў *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџў Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџў j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџў S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџў: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:џџџџџџџџџў
 
_user_specified_nameinputs

Н
N__inference_batch_normalization_layer_call_and_return_conditional_losses_15889

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџА
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Я

P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_16128

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
л

(__inference_conv2d_5_layer_call_fn_16236

inputs!
unknown:
	unknown_0:
identityЂStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_15415
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16232:%!

_user_specified_name16230:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

ќ
C__inference_conv2d_4_layer_call_and_return_conditional_losses_16165

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџj
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs


а
5__inference_batch_normalization_2_layer_call_fn_16092

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_15143
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16088:%!

_user_specified_name16086:%!

_user_specified_name16084:%!

_user_specified_name16082:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
И
ќ
C__inference_conv2d_1_layer_call_and_return_conditional_losses_15937

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџў *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџў Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџў j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџў S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџў: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:џџџџџџџџџў
 
_user_specified_nameinputs

ќ
C__inference_conv2d_5_layer_call_and_return_conditional_losses_16247

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџj
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџq
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
В
I
-__inference_up_sampling2d_layer_call_fn_16034

inputs
identityж
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_15102
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
з
e
I__inference_custom_padding_layer_call_and_return_conditional_losses_15283

inputs
identityl
strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               n
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            ь
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_maskn
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*%
valueB"    џџџџ        p
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                p
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            є
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_maskg
Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   
         w
TileTilestrided_slice:output:0Tile/multiples:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
i
Tile_1/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   
         }
Tile_1Tilestrided_slice_1:output:0Tile_1/multiples:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2Tile:output:0inputsTile_1:output:0concat/axis:output:0*
N*
T0*0
_output_shapes
:џџџџџџџџџќ`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:џџџџџџџџџќ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџш:X T
0
_output_shapes
:џџџџџџџџџш
 
_user_specified_nameinputs
ё
ї
*__inference_sequential_layer_call_fn_15645
input_1!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@$

unknown_13:@ 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18: $

unknown_19: 

unknown_20:

unknown_21:

unknown_22:

unknown_23:

unknown_24:$

unknown_25:

unknown_26:
identityЂStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџш*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_15523t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџш<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:џџџџџџџџџш: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name15641:%!

_user_specified_name15639:%!

_user_specified_name15637:%!

_user_specified_name15635:%!

_user_specified_name15633:%!

_user_specified_name15631:%!

_user_specified_name15629:%!

_user_specified_name15627:%!

_user_specified_name15625:%!

_user_specified_name15623:%!

_user_specified_name15621:%!

_user_specified_name15619:%!

_user_specified_name15617:%!

_user_specified_name15615:%!

_user_specified_name15613:%!

_user_specified_name15611:%!

_user_specified_name15609:%!

_user_specified_name15607:%
!

_user_specified_name15605:%	!

_user_specified_name15603:%!

_user_specified_name15601:%!

_user_specified_name15599:%!

_user_specified_name15597:%!

_user_specified_name15595:%!

_user_specified_name15593:%!

_user_specified_name15591:%!

_user_specified_name15589:%!

_user_specified_name15587:U Q
,
_output_shapes
:џџџџџџџџџш
!
_user_specified_name	input_1
Е
C
'__inference_reshape_layer_call_fn_15788

inputs
identityЖ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџш* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_15264i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџш"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџш:T P
,
_output_shapes
:џџџџџџџџџш
 
_user_specified_nameinputs
л
E
)__inference_reshape_1_layer_call_fn_16265

inputs
identityД
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџш* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_reshape_1_layer_call_and_return_conditional_losses_15442e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџш"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
л

(__inference_conv2d_4_layer_call_fn_16154

inputs!
unknown: 
	unknown_0:
identityЂStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_15390
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16150:%!

_user_specified_name16148:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs

`
D__inference_reshape_1_layer_call_and_return_conditional_losses_15442

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :шQ
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:џџџџџџџџџш]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:џџџџџџџџџш"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
И
ќ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_16029

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџџ@Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџџ@j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:џџџџџџџџџџ 
 
_user_specified_nameinputs


&__inference_conv2d_layer_call_fn_15834

inputs!
unknown:
	unknown_0:
identityЂStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџќ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_15295x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџќ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџќ: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name15830:%!

_user_specified_name15828:X T
0
_output_shapes
:џџџџџџџџџќ
 
_user_specified_nameinputs
]
Ч
E__inference_sequential_layer_call_and_return_conditional_losses_15523
input_1&
conv2d_15450:
conv2d_15452:'
batch_normalization_15455:'
batch_normalization_15457:'
batch_normalization_15459:'
batch_normalization_15461:(
conv2d_1_15465: 
conv2d_1_15467: )
batch_normalization_1_15470: )
batch_normalization_1_15472: )
batch_normalization_1_15474: )
batch_normalization_1_15476: (
conv2d_2_15480: @
conv2d_2_15482:@(
conv2d_3_15486:@ 
conv2d_3_15488: )
batch_normalization_2_15491: )
batch_normalization_2_15493: )
batch_normalization_2_15495: )
batch_normalization_2_15497: (
conv2d_4_15501: 
conv2d_4_15503:)
batch_normalization_3_15506:)
batch_normalization_3_15508:)
batch_normalization_3_15510:)
batch_normalization_3_15512:(
conv2d_5_15515:
conv2d_5_15517:
identityЂ+batch_normalization/StatefulPartitionedCallЂ-batch_normalization_1/StatefulPartitionedCallЂ-batch_normalization_2/StatefulPartitionedCallЂ-batch_normalization_3/StatefulPartitionedCallЂconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂ conv2d_2/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallП
reshape/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџш* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_15264ц
custom_padding/PartitionedCallPartitionedCall reshape/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџќ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_custom_padding_layer_call_and_return_conditional_losses_15283
conv2d/StatefulPartitionedCallStatefulPartitionedCall'custom_padding/PartitionedCall:output:0conv2d_15450conv2d_15452*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџќ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_15295§
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_15455batch_normalization_15457batch_normalization_15459batch_normalization_15461*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџќ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_14982ј
max_pooling2d/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџў* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_15013
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_15465conv2d_1_15467*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџў *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_15321
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_15470batch_normalization_1_15472batch_normalization_1_15474batch_normalization_1_15476*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџў *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_15054ў
max_pooling2d_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_15085
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_15480conv2d_2_15482*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_15347ў
up_sampling2d/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_15102Ї
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_3_15486conv2d_3_15488*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_15364
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_2_15491batch_normalization_2_15493batch_normalization_2_15495batch_normalization_2_15497*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_15143
up_sampling2d_1/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_15181Љ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_4_15501conv2d_4_15503*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_15390
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_3_15506batch_normalization_3_15508batch_normalization_3_15510batch_normalization_3_15512*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_15222З
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0conv2d_5_15515conv2d_5_15517*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_15415
remove_padding/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_remove_padding_layer_call_and_return_conditional_losses_15428п
reshape_1/PartitionedCallPartitionedCall'remove_padding/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџш* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_reshape_1_layer_call_and_return_conditional_losses_15442v
IdentityIdentity"reshape_1/PartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџшА
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:џџџџџџџџџш: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall:%!

_user_specified_name15517:%!

_user_specified_name15515:%!

_user_specified_name15512:%!

_user_specified_name15510:%!

_user_specified_name15508:%!

_user_specified_name15506:%!

_user_specified_name15503:%!

_user_specified_name15501:%!

_user_specified_name15497:%!

_user_specified_name15495:%!

_user_specified_name15493:%!

_user_specified_name15491:%!

_user_specified_name15488:%!

_user_specified_name15486:%!

_user_specified_name15482:%!

_user_specified_name15480:%!

_user_specified_name15476:%!

_user_specified_name15474:%
!

_user_specified_name15472:%	!

_user_specified_name15470:%!

_user_specified_name15467:%!

_user_specified_name15465:%!

_user_specified_name15461:%!

_user_specified_name15459:%!

_user_specified_name15457:%!

_user_specified_name15455:%!

_user_specified_name15452:%!

_user_specified_name15450:U Q
,
_output_shapes
:џџџџџџџџџш
!
_user_specified_name	input_1
]
Ч
E__inference_sequential_layer_call_and_return_conditional_losses_15445
input_1&
conv2d_15296:
conv2d_15298:'
batch_normalization_15301:'
batch_normalization_15303:'
batch_normalization_15305:'
batch_normalization_15307:(
conv2d_1_15322: 
conv2d_1_15324: )
batch_normalization_1_15327: )
batch_normalization_1_15329: )
batch_normalization_1_15331: )
batch_normalization_1_15333: (
conv2d_2_15348: @
conv2d_2_15350:@(
conv2d_3_15365:@ 
conv2d_3_15367: )
batch_normalization_2_15370: )
batch_normalization_2_15372: )
batch_normalization_2_15374: )
batch_normalization_2_15376: (
conv2d_4_15391: 
conv2d_4_15393:)
batch_normalization_3_15396:)
batch_normalization_3_15398:)
batch_normalization_3_15400:)
batch_normalization_3_15402:(
conv2d_5_15416:
conv2d_5_15418:
identityЂ+batch_normalization/StatefulPartitionedCallЂ-batch_normalization_1/StatefulPartitionedCallЂ-batch_normalization_2/StatefulPartitionedCallЂ-batch_normalization_3/StatefulPartitionedCallЂconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂ conv2d_2/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallП
reshape/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџш* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_15264ц
custom_padding/PartitionedCallPartitionedCall reshape/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџќ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_custom_padding_layer_call_and_return_conditional_losses_15283
conv2d/StatefulPartitionedCallStatefulPartitionedCall'custom_padding/PartitionedCall:output:0conv2d_15296conv2d_15298*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџќ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_15295ћ
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_15301batch_normalization_15303batch_normalization_15305batch_normalization_15307*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџќ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_14964ј
max_pooling2d/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџў* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_15013
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_15322conv2d_1_15324*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџў *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_15321
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_15327batch_normalization_1_15329batch_normalization_1_15331batch_normalization_1_15333*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџў *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_15036ў
max_pooling2d_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_15085
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_15348conv2d_2_15350*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_15347ў
up_sampling2d/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_15102Ї
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_3_15365conv2d_3_15367*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_15364
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_2_15370batch_normalization_2_15372batch_normalization_2_15374batch_normalization_2_15376*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_15125
up_sampling2d_1/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_15181Љ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_4_15391conv2d_4_15393*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_15390
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_3_15396batch_normalization_3_15398batch_normalization_3_15400batch_normalization_3_15402*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_15204З
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0conv2d_5_15416conv2d_5_15418*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_15415
remove_padding/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_remove_padding_layer_call_and_return_conditional_losses_15428п
reshape_1/PartitionedCallPartitionedCall'remove_padding/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџш* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_reshape_1_layer_call_and_return_conditional_losses_15442v
IdentityIdentity"reshape_1/PartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџшА
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:џџџџџџџџџш: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall:%!

_user_specified_name15418:%!

_user_specified_name15416:%!

_user_specified_name15402:%!

_user_specified_name15400:%!

_user_specified_name15398:%!

_user_specified_name15396:%!

_user_specified_name15393:%!

_user_specified_name15391:%!

_user_specified_name15376:%!

_user_specified_name15374:%!

_user_specified_name15372:%!

_user_specified_name15370:%!

_user_specified_name15367:%!

_user_specified_name15365:%!

_user_specified_name15350:%!

_user_specified_name15348:%!

_user_specified_name15333:%!

_user_specified_name15331:%
!

_user_specified_name15329:%	!

_user_specified_name15327:%!

_user_specified_name15324:%!

_user_specified_name15322:%!

_user_specified_name15307:%!

_user_specified_name15305:%!

_user_specified_name15303:%!

_user_specified_name15301:%!

_user_specified_name15298:%!

_user_specified_name15296:U Q
,
_output_shapes
:џџџџџџџџџш
!
_user_specified_name	input_1
щ
ї
*__inference_sequential_layer_call_fn_15584
input_1!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@$

unknown_13:@ 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18: $

unknown_19: 

unknown_20:

unknown_21:

unknown_22:

unknown_23:

unknown_24:$

unknown_25:

unknown_26:
identityЂStatefulPartitionedCallЛ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџш*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_15445t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџш<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:џџџџџџџџџш: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name15580:%!

_user_specified_name15578:%!

_user_specified_name15576:%!

_user_specified_name15574:%!

_user_specified_name15572:%!

_user_specified_name15570:%!

_user_specified_name15568:%!

_user_specified_name15566:%!

_user_specified_name15564:%!

_user_specified_name15562:%!

_user_specified_name15560:%!

_user_specified_name15558:%!

_user_specified_name15556:%!

_user_specified_name15554:%!

_user_specified_name15552:%!

_user_specified_name15550:%!

_user_specified_name15548:%!

_user_specified_name15546:%
!

_user_specified_name15544:%	!

_user_specified_name15542:%!

_user_specified_name15540:%!

_user_specified_name15538:%!

_user_specified_name15536:%!

_user_specified_name15534:%!

_user_specified_name15532:%!

_user_specified_name15530:%!

_user_specified_name15528:%!

_user_specified_name15526:U Q
,
_output_shapes
:џџџџџџџџџш
!
_user_specified_name	input_1
Ж
њ
A__inference_conv2d_layer_call_and_return_conditional_losses_15845

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџќ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџќY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџќj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџќS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџќ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:џџџџџџџџџќ
 
_user_specified_nameinputs
Ж
K
/__inference_max_pooling2d_1_layer_call_fn_16004

inputs
identityи
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_15085
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
І
e
I__inference_remove_padding_layer_call_and_return_conditional_losses_15428

inputs
identityl
strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"    
           n
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"    іџџџ        n
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            ў
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*

begin_mask*
end_maskx
IdentityIdentitystrided_slice:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы
J
.__inference_custom_padding_layer_call_fn_15807

inputs
identityН
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџќ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_custom_padding_layer_call_and_return_conditional_losses_15283i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџќ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџш:X T
0
_output_shapes
:џџџџџџџџџш
 
_user_specified_nameinputs

`
D__inference_reshape_1_layer_call_and_return_conditional_losses_16278

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :шQ
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:џџџџџџџџџш]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:џџџџџџџџџш"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_15917

inputs
identityЁ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Х
№
#__inference_signature_wrapper_15783
input_1!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@$

unknown_13:@ 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18: $

unknown_19: 

unknown_20:

unknown_21:

unknown_22:

unknown_23:

unknown_24:$

unknown_25:

unknown_26:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџш*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_14946t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџш<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:џџџџџџџџџш: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name15779:%!

_user_specified_name15777:%!

_user_specified_name15775:%!

_user_specified_name15773:%!

_user_specified_name15771:%!

_user_specified_name15769:%!

_user_specified_name15767:%!

_user_specified_name15765:%!

_user_specified_name15763:%!

_user_specified_name15761:%!

_user_specified_name15759:%!

_user_specified_name15757:%!

_user_specified_name15755:%!

_user_specified_name15753:%!

_user_specified_name15751:%!

_user_specified_name15749:%!

_user_specified_name15747:%!

_user_specified_name15745:%
!

_user_specified_name15743:%	!

_user_specified_name15741:%!

_user_specified_name15739:%!

_user_specified_name15737:%!

_user_specified_name15735:%!

_user_specified_name15733:%!

_user_specified_name15731:%!

_user_specified_name15729:%!

_user_specified_name15727:%!

_user_specified_name15725:U Q
,
_output_shapes
:џџџџџџџџџш
!
_user_specified_name	input_1
 
f
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_16145

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:Е
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


а
5__inference_batch_normalization_3_layer_call_fn_16191

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_15222
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16187:%!

_user_specified_name16185:%!

_user_specified_name16183:%!

_user_specified_name16181:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Лв
№/
!__inference__traced_restore_16957
file_prefix8
assignvariableop_conv2d_kernel:,
assignvariableop_1_conv2d_bias::
,assignvariableop_2_batch_normalization_gamma:9
+assignvariableop_3_batch_normalization_beta:@
2assignvariableop_4_batch_normalization_moving_mean:D
6assignvariableop_5_batch_normalization_moving_variance:<
"assignvariableop_6_conv2d_1_kernel: .
 assignvariableop_7_conv2d_1_bias: <
.assignvariableop_8_batch_normalization_1_gamma: ;
-assignvariableop_9_batch_normalization_1_beta: C
5assignvariableop_10_batch_normalization_1_moving_mean: G
9assignvariableop_11_batch_normalization_1_moving_variance: =
#assignvariableop_12_conv2d_2_kernel: @/
!assignvariableop_13_conv2d_2_bias:@=
#assignvariableop_14_conv2d_3_kernel:@ /
!assignvariableop_15_conv2d_3_bias: =
/assignvariableop_16_batch_normalization_2_gamma: <
.assignvariableop_17_batch_normalization_2_beta: C
5assignvariableop_18_batch_normalization_2_moving_mean: G
9assignvariableop_19_batch_normalization_2_moving_variance: =
#assignvariableop_20_conv2d_4_kernel: /
!assignvariableop_21_conv2d_4_bias:=
/assignvariableop_22_batch_normalization_3_gamma:<
.assignvariableop_23_batch_normalization_3_beta:C
5assignvariableop_24_batch_normalization_3_moving_mean:G
9assignvariableop_25_batch_normalization_3_moving_variance:=
#assignvariableop_26_conv2d_5_kernel:/
!assignvariableop_27_conv2d_5_bias:'
assignvariableop_28_iteration:	 +
!assignvariableop_29_learning_rate: B
(assignvariableop_30_adam_m_conv2d_kernel:B
(assignvariableop_31_adam_v_conv2d_kernel:4
&assignvariableop_32_adam_m_conv2d_bias:4
&assignvariableop_33_adam_v_conv2d_bias:B
4assignvariableop_34_adam_m_batch_normalization_gamma:B
4assignvariableop_35_adam_v_batch_normalization_gamma:A
3assignvariableop_36_adam_m_batch_normalization_beta:A
3assignvariableop_37_adam_v_batch_normalization_beta:D
*assignvariableop_38_adam_m_conv2d_1_kernel: D
*assignvariableop_39_adam_v_conv2d_1_kernel: 6
(assignvariableop_40_adam_m_conv2d_1_bias: 6
(assignvariableop_41_adam_v_conv2d_1_bias: D
6assignvariableop_42_adam_m_batch_normalization_1_gamma: D
6assignvariableop_43_adam_v_batch_normalization_1_gamma: C
5assignvariableop_44_adam_m_batch_normalization_1_beta: C
5assignvariableop_45_adam_v_batch_normalization_1_beta: D
*assignvariableop_46_adam_m_conv2d_2_kernel: @D
*assignvariableop_47_adam_v_conv2d_2_kernel: @6
(assignvariableop_48_adam_m_conv2d_2_bias:@6
(assignvariableop_49_adam_v_conv2d_2_bias:@D
*assignvariableop_50_adam_m_conv2d_3_kernel:@ D
*assignvariableop_51_adam_v_conv2d_3_kernel:@ 6
(assignvariableop_52_adam_m_conv2d_3_bias: 6
(assignvariableop_53_adam_v_conv2d_3_bias: D
6assignvariableop_54_adam_m_batch_normalization_2_gamma: D
6assignvariableop_55_adam_v_batch_normalization_2_gamma: C
5assignvariableop_56_adam_m_batch_normalization_2_beta: C
5assignvariableop_57_adam_v_batch_normalization_2_beta: D
*assignvariableop_58_adam_m_conv2d_4_kernel: D
*assignvariableop_59_adam_v_conv2d_4_kernel: 6
(assignvariableop_60_adam_m_conv2d_4_bias:6
(assignvariableop_61_adam_v_conv2d_4_bias:D
6assignvariableop_62_adam_m_batch_normalization_3_gamma:D
6assignvariableop_63_adam_v_batch_normalization_3_gamma:C
5assignvariableop_64_adam_m_batch_normalization_3_beta:C
5assignvariableop_65_adam_v_batch_normalization_3_beta:D
*assignvariableop_66_adam_m_conv2d_5_kernel:D
*assignvariableop_67_adam_v_conv2d_5_kernel:6
(assignvariableop_68_adam_m_conv2d_5_bias:6
(assignvariableop_69_adam_v_conv2d_5_bias:#
assignvariableop_70_total: #
assignvariableop_71_count: 
identity_73ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_46ЂAssignVariableOp_47ЂAssignVariableOp_48ЂAssignVariableOp_49ЂAssignVariableOp_5ЂAssignVariableOp_50ЂAssignVariableOp_51ЂAssignVariableOp_52ЂAssignVariableOp_53ЂAssignVariableOp_54ЂAssignVariableOp_55ЂAssignVariableOp_56ЂAssignVariableOp_57ЂAssignVariableOp_58ЂAssignVariableOp_59ЂAssignVariableOp_6ЂAssignVariableOp_60ЂAssignVariableOp_61ЂAssignVariableOp_62ЂAssignVariableOp_63ЂAssignVariableOp_64ЂAssignVariableOp_65ЂAssignVariableOp_66ЂAssignVariableOp_67ЂAssignVariableOp_68ЂAssignVariableOp_69ЂAssignVariableOp_7ЂAssignVariableOp_70ЂAssignVariableOp_71ЂAssignVariableOp_8ЂAssignVariableOp_9З
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:I*
dtype0*н
valueгBаIB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:I*
dtype0*Ї
valueBIB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*К
_output_shapesЇ
Є:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*W
dtypesM
K2I	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_2AssignVariableOp,assignvariableop_2_batch_normalization_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_3AssignVariableOp+assignvariableop_3_batch_normalization_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_4AssignVariableOp2assignvariableop_4_batch_normalization_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_5AssignVariableOp6assignvariableop_5_batch_normalization_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_1_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_1_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_1_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_1_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_1_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:в
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_1_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv2d_2_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv2d_2_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_14AssignVariableOp#assignvariableop_14_conv2d_3_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_15AssignVariableOp!assignvariableop_15_conv2d_3_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_16AssignVariableOp/assignvariableop_16_batch_normalization_2_gammaIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_17AssignVariableOp.assignvariableop_17_batch_normalization_2_betaIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_18AssignVariableOp5assignvariableop_18_batch_normalization_2_moving_meanIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:в
AssignVariableOp_19AssignVariableOp9assignvariableop_19_batch_normalization_2_moving_varianceIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_20AssignVariableOp#assignvariableop_20_conv2d_4_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_21AssignVariableOp!assignvariableop_21_conv2d_4_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_22AssignVariableOp/assignvariableop_22_batch_normalization_3_gammaIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_23AssignVariableOp.assignvariableop_23_batch_normalization_3_betaIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_24AssignVariableOp5assignvariableop_24_batch_normalization_3_moving_meanIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:в
AssignVariableOp_25AssignVariableOp9assignvariableop_25_batch_normalization_3_moving_varianceIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_26AssignVariableOp#assignvariableop_26_conv2d_5_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_27AssignVariableOp!assignvariableop_27_conv2d_5_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0	*
_output_shapes
:Ж
AssignVariableOp_28AssignVariableOpassignvariableop_28_iterationIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_29AssignVariableOp!assignvariableop_29_learning_rateIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_m_conv2d_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_v_conv2d_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_m_conv2d_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_33AssignVariableOp&assignvariableop_33_adam_v_conv2d_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_34AssignVariableOp4assignvariableop_34_adam_m_batch_normalization_gammaIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_35AssignVariableOp4assignvariableop_35_adam_v_batch_normalization_gammaIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_36AssignVariableOp3assignvariableop_36_adam_m_batch_normalization_betaIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_37AssignVariableOp3assignvariableop_37_adam_v_batch_normalization_betaIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_m_conv2d_1_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_v_conv2d_1_kernelIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_m_conv2d_1_biasIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_v_conv2d_1_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_42AssignVariableOp6assignvariableop_42_adam_m_batch_normalization_1_gammaIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_43AssignVariableOp6assignvariableop_43_adam_v_batch_normalization_1_gammaIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_44AssignVariableOp5assignvariableop_44_adam_m_batch_normalization_1_betaIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_45AssignVariableOp5assignvariableop_45_adam_v_batch_normalization_1_betaIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_46AssignVariableOp*assignvariableop_46_adam_m_conv2d_2_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_v_conv2d_2_kernelIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_m_conv2d_2_biasIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_v_conv2d_2_biasIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_50AssignVariableOp*assignvariableop_50_adam_m_conv2d_3_kernelIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_v_conv2d_3_kernelIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_m_conv2d_3_biasIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_53AssignVariableOp(assignvariableop_53_adam_v_conv2d_3_biasIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_54AssignVariableOp6assignvariableop_54_adam_m_batch_normalization_2_gammaIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_55AssignVariableOp6assignvariableop_55_adam_v_batch_normalization_2_gammaIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_56AssignVariableOp5assignvariableop_56_adam_m_batch_normalization_2_betaIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_57AssignVariableOp5assignvariableop_57_adam_v_batch_normalization_2_betaIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_58AssignVariableOp*assignvariableop_58_adam_m_conv2d_4_kernelIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_v_conv2d_4_kernelIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_m_conv2d_4_biasIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_61AssignVariableOp(assignvariableop_61_adam_v_conv2d_4_biasIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_62AssignVariableOp6assignvariableop_62_adam_m_batch_normalization_3_gammaIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_63AssignVariableOp6assignvariableop_63_adam_v_batch_normalization_3_gammaIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_64AssignVariableOp5assignvariableop_64_adam_m_batch_normalization_3_betaIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_65AssignVariableOp5assignvariableop_65_adam_v_batch_normalization_3_betaIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_66AssignVariableOp*assignvariableop_66_adam_m_conv2d_5_kernelIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_67AssignVariableOp*assignvariableop_67_adam_v_conv2d_5_kernelIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_68AssignVariableOp(assignvariableop_68_adam_m_conv2d_5_biasIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_69AssignVariableOp(assignvariableop_69_adam_v_conv2d_5_biasIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_70AssignVariableOpassignvariableop_70_totalIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_71AssignVariableOpassignvariableop_71_countIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 џ
Identity_72Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_73IdentityIdentity_72:output:0^NoOp_1*
T0*
_output_shapes
: Ш
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_73Identity_73:output:0*(
_construction_contextkEagerRuntime*Ї
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
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
AssignVariableOp_4AssignVariableOp_42*
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
AssignVariableOp_5AssignVariableOp_52*
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
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%H!

_user_specified_namecount:%G!

_user_specified_nametotal:4F0
.
_user_specified_nameAdam/v/conv2d_5/bias:4E0
.
_user_specified_nameAdam/m/conv2d_5/bias:6D2
0
_user_specified_nameAdam/v/conv2d_5/kernel:6C2
0
_user_specified_nameAdam/m/conv2d_5/kernel:AB=
;
_user_specified_name#!Adam/v/batch_normalization_3/beta:AA=
;
_user_specified_name#!Adam/m/batch_normalization_3/beta:B@>
<
_user_specified_name$"Adam/v/batch_normalization_3/gamma:B?>
<
_user_specified_name$"Adam/m/batch_normalization_3/gamma:4>0
.
_user_specified_nameAdam/v/conv2d_4/bias:4=0
.
_user_specified_nameAdam/m/conv2d_4/bias:6<2
0
_user_specified_nameAdam/v/conv2d_4/kernel:6;2
0
_user_specified_nameAdam/m/conv2d_4/kernel:A:=
;
_user_specified_name#!Adam/v/batch_normalization_2/beta:A9=
;
_user_specified_name#!Adam/m/batch_normalization_2/beta:B8>
<
_user_specified_name$"Adam/v/batch_normalization_2/gamma:B7>
<
_user_specified_name$"Adam/m/batch_normalization_2/gamma:460
.
_user_specified_nameAdam/v/conv2d_3/bias:450
.
_user_specified_nameAdam/m/conv2d_3/bias:642
0
_user_specified_nameAdam/v/conv2d_3/kernel:632
0
_user_specified_nameAdam/m/conv2d_3/kernel:420
.
_user_specified_nameAdam/v/conv2d_2/bias:410
.
_user_specified_nameAdam/m/conv2d_2/bias:602
0
_user_specified_nameAdam/v/conv2d_2/kernel:6/2
0
_user_specified_nameAdam/m/conv2d_2/kernel:A.=
;
_user_specified_name#!Adam/v/batch_normalization_1/beta:A-=
;
_user_specified_name#!Adam/m/batch_normalization_1/beta:B,>
<
_user_specified_name$"Adam/v/batch_normalization_1/gamma:B+>
<
_user_specified_name$"Adam/m/batch_normalization_1/gamma:4*0
.
_user_specified_nameAdam/v/conv2d_1/bias:4)0
.
_user_specified_nameAdam/m/conv2d_1/bias:6(2
0
_user_specified_nameAdam/v/conv2d_1/kernel:6'2
0
_user_specified_nameAdam/m/conv2d_1/kernel:?&;
9
_user_specified_name!Adam/v/batch_normalization/beta:?%;
9
_user_specified_name!Adam/m/batch_normalization/beta:@$<
:
_user_specified_name" Adam/v/batch_normalization/gamma:@#<
:
_user_specified_name" Adam/m/batch_normalization/gamma:2".
,
_user_specified_nameAdam/v/conv2d/bias:2!.
,
_user_specified_nameAdam/m/conv2d/bias:4 0
.
_user_specified_nameAdam/v/conv2d/kernel:40
.
_user_specified_nameAdam/m/conv2d/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:-)
'
_user_specified_nameconv2d_5/bias:/+
)
_user_specified_nameconv2d_5/kernel:EA
?
_user_specified_name'%batch_normalization_3/moving_variance:A=
;
_user_specified_name#!batch_normalization_3/moving_mean::6
4
_user_specified_namebatch_normalization_3/beta:;7
5
_user_specified_namebatch_normalization_3/gamma:-)
'
_user_specified_nameconv2d_4/bias:/+
)
_user_specified_nameconv2d_4/kernel:EA
?
_user_specified_name'%batch_normalization_2/moving_variance:A=
;
_user_specified_name#!batch_normalization_2/moving_mean::6
4
_user_specified_namebatch_normalization_2/beta:;7
5
_user_specified_namebatch_normalization_2/gamma:-)
'
_user_specified_nameconv2d_3/bias:/+
)
_user_specified_nameconv2d_3/kernel:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_2/kernel:EA
?
_user_specified_name'%batch_normalization_1/moving_variance:A=
;
_user_specified_name#!batch_normalization_1/moving_mean::
6
4
_user_specified_namebatch_normalization_1/beta:;	7
5
_user_specified_namebatch_normalization_1/gamma:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_1/kernel:C?
=
_user_specified_name%#batch_normalization/moving_variance:?;
9
_user_specified_name!batch_normalization/moving_mean:84
2
_user_specified_namebatch_normalization/beta:95
3
_user_specified_namebatch_normalization/gamma:+'
%
_user_specified_nameconv2d/bias:-)
'
_user_specified_nameconv2d/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix


а
5__inference_batch_normalization_3_layer_call_fn_16178

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_15204
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16174:%!

_user_specified_name16172:%!

_user_specified_name16170:%!

_user_specified_name16168:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

ќ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_16066

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Э

N__inference_batch_normalization_layer_call_and_return_conditional_losses_14982

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ал
є
 __inference__wrapped_model_14946
input_1J
0sequential_conv2d_conv2d_readvariableop_resource:?
1sequential_conv2d_biasadd_readvariableop_resource:D
6sequential_batch_normalization_readvariableop_resource:F
8sequential_batch_normalization_readvariableop_1_resource:U
Gsequential_batch_normalization_fusedbatchnormv3_readvariableop_resource:W
Isequential_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:L
2sequential_conv2d_1_conv2d_readvariableop_resource: A
3sequential_conv2d_1_biasadd_readvariableop_resource: F
8sequential_batch_normalization_1_readvariableop_resource: H
:sequential_batch_normalization_1_readvariableop_1_resource: W
Isequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource: Y
Ksequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource: L
2sequential_conv2d_2_conv2d_readvariableop_resource: @A
3sequential_conv2d_2_biasadd_readvariableop_resource:@L
2sequential_conv2d_3_conv2d_readvariableop_resource:@ A
3sequential_conv2d_3_biasadd_readvariableop_resource: F
8sequential_batch_normalization_2_readvariableop_resource: H
:sequential_batch_normalization_2_readvariableop_1_resource: W
Isequential_batch_normalization_2_fusedbatchnormv3_readvariableop_resource: Y
Ksequential_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource: L
2sequential_conv2d_4_conv2d_readvariableop_resource: A
3sequential_conv2d_4_biasadd_readvariableop_resource:F
8sequential_batch_normalization_3_readvariableop_resource:H
:sequential_batch_normalization_3_readvariableop_1_resource:W
Isequential_batch_normalization_3_fusedbatchnormv3_readvariableop_resource:Y
Ksequential_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:L
2sequential_conv2d_5_conv2d_readvariableop_resource:A
3sequential_conv2d_5_biasadd_readvariableop_resource:
identityЂ>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpЂ@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1Ђ-sequential/batch_normalization/ReadVariableOpЂ/sequential/batch_normalization/ReadVariableOp_1Ђ@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpЂBsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Ђ/sequential/batch_normalization_1/ReadVariableOpЂ1sequential/batch_normalization_1/ReadVariableOp_1Ђ@sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOpЂBsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Ђ/sequential/batch_normalization_2/ReadVariableOpЂ1sequential/batch_normalization_2/ReadVariableOp_1Ђ@sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOpЂBsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Ђ/sequential/batch_normalization_3/ReadVariableOpЂ1sequential/batch_normalization_3/ReadVariableOp_1Ђ(sequential/conv2d/BiasAdd/ReadVariableOpЂ'sequential/conv2d/Conv2D/ReadVariableOpЂ*sequential/conv2d_1/BiasAdd/ReadVariableOpЂ)sequential/conv2d_1/Conv2D/ReadVariableOpЂ*sequential/conv2d_2/BiasAdd/ReadVariableOpЂ)sequential/conv2d_2/Conv2D/ReadVariableOpЂ*sequential/conv2d_3/BiasAdd/ReadVariableOpЂ)sequential/conv2d_3/Conv2D/ReadVariableOpЂ*sequential/conv2d_4/BiasAdd/ReadVariableOpЂ)sequential/conv2d_4/Conv2D/ReadVariableOpЂ*sequential/conv2d_5/BiasAdd/ReadVariableOpЂ)sequential/conv2d_5/Conv2D/ReadVariableOp]
sequential/reshape/ShapeShapeinput_1*
T0*
_output_shapes
::эЯp
&sequential/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(sequential/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(sequential/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
 sequential/reshape/strided_sliceStridedSlice!sequential/reshape/Shape:output:0/sequential/reshape/strided_slice/stack:output:01sequential/reshape/strided_slice/stack_1:output:01sequential/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
"sequential/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :шd
"sequential/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :d
"sequential/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
 sequential/reshape/Reshape/shapePack)sequential/reshape/strided_slice:output:0+sequential/reshape/Reshape/shape/1:output:0+sequential/reshape/Reshape/shape/2:output:0+sequential/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
sequential/reshape/ReshapeReshapeinput_1)sequential/reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџш
-sequential/custom_padding/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                
/sequential/custom_padding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               
/sequential/custom_padding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            ё
'sequential/custom_padding/strided_sliceStridedSlice#sequential/reshape/Reshape:output:06sequential/custom_padding/strided_slice/stack:output:08sequential/custom_padding/strided_slice/stack_1:output:08sequential/custom_padding/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask
/sequential/custom_padding/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*%
valueB"    џџџџ        
1sequential/custom_padding/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                
1sequential/custom_padding/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            љ
)sequential/custom_padding/strided_slice_1StridedSlice#sequential/reshape/Reshape:output:08sequential/custom_padding/strided_slice_1/stack:output:0:sequential/custom_padding/strided_slice_1/stack_1:output:0:sequential/custom_padding/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask
(sequential/custom_padding/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   
         Х
sequential/custom_padding/TileTile0sequential/custom_padding/strided_slice:output:01sequential/custom_padding/Tile/multiples:output:0*
T0*/
_output_shapes
:џџџџџџџџџ

*sequential/custom_padding/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   
         Ы
 sequential/custom_padding/Tile_1Tile2sequential/custom_padding/strided_slice_1:output:03sequential/custom_padding/Tile_1/multiples:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
g
%sequential/custom_padding/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
 sequential/custom_padding/concatConcatV2'sequential/custom_padding/Tile:output:0#sequential/reshape/Reshape:output:0)sequential/custom_padding/Tile_1:output:0.sequential/custom_padding/concat/axis:output:0*
N*
T0*0
_output_shapes
:џџџџџџџџџќ 
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0с
sequential/conv2d/Conv2DConv2D)sequential/custom_padding/concat:output:0/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџќ*
paddingSAME*
strides

(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Д
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџќ}
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџќ 
-sequential/batch_normalization/ReadVariableOpReadVariableOp6sequential_batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype0Є
/sequential/batch_normalization/ReadVariableOp_1ReadVariableOp8sequential_batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype0Т
>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpGsequential_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0Ц
@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpIsequential_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0№
/sequential/batch_normalization/FusedBatchNormV3FusedBatchNormV3$sequential/conv2d/Relu:activations:05sequential/batch_normalization/ReadVariableOp:value:07sequential/batch_normalization/ReadVariableOp_1:value:0Fsequential/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Hsequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџќ:::::*
epsilon%o:*
is_training( Э
 sequential/max_pooling2d/MaxPoolMaxPool3sequential/batch_normalization/FusedBatchNormV3:y:0*0
_output_shapes
:џџџџџџџџџў*
ksize
*
paddingSAME*
strides
Є
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0х
sequential/conv2d_1/Conv2DConv2D)sequential/max_pooling2d/MaxPool:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџў *
paddingSAME*
strides

*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0К
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџў 
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџў Є
/sequential/batch_normalization_1/ReadVariableOpReadVariableOp8sequential_batch_normalization_1_readvariableop_resource*
_output_shapes
: *
dtype0Ј
1sequential/batch_normalization_1/ReadVariableOp_1ReadVariableOp:sequential_batch_normalization_1_readvariableop_1_resource*
_output_shapes
: *
dtype0Ц
@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpIsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0Ъ
Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ќ
1sequential/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3&sequential/conv2d_1/Relu:activations:07sequential/batch_normalization_1/ReadVariableOp:value:09sequential/batch_normalization_1/ReadVariableOp_1:value:0Hsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Jsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџў : : : : :*
epsilon%o:*
is_training( б
"sequential/max_pooling2d_1/MaxPoolMaxPool5sequential/batch_normalization_1/FusedBatchNormV3:y:0*0
_output_shapes
:џџџџџџџџџџ *
ksize
*
paddingSAME*
strides
Є
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ч
sequential/conv2d_2/Conv2DConv2D+sequential/max_pooling2d_1/MaxPool:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџџ@*
paddingSAME*
strides

*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0К
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџџ@
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџџ@o
sequential/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"џ      q
 sequential/up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
sequential/up_sampling2d/mulMul'sequential/up_sampling2d/Const:output:0)sequential/up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:э
5sequential/up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor&sequential/conv2d_2/Relu:activations:0 sequential/up_sampling2d/mul:z:0*
T0*0
_output_shapes
:џџџџџџџџџў@*
half_pixel_centers(Є
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0
sequential/conv2d_3/Conv2DConv2DFsequential/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџў *
paddingSAME*
strides

*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0К
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџў 
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџў Є
/sequential/batch_normalization_2/ReadVariableOpReadVariableOp8sequential_batch_normalization_2_readvariableop_resource*
_output_shapes
: *
dtype0Ј
1sequential/batch_normalization_2/ReadVariableOp_1ReadVariableOp:sequential_batch_normalization_2_readvariableop_1_resource*
_output_shapes
: *
dtype0Ц
@sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpIsequential_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0Ъ
Bsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKsequential_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ќ
1sequential/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3&sequential/conv2d_3/Relu:activations:07sequential/batch_normalization_2/ReadVariableOp:value:09sequential/batch_normalization_2/ReadVariableOp_1:value:0Hsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Jsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџў : : : : :*
epsilon%o:*
is_training( q
 sequential/up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ў     s
"sequential/up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ђ
sequential/up_sampling2d_1/mulMul)sequential/up_sampling2d_1/Const:output:0+sequential/up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:
7sequential/up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighbor5sequential/batch_normalization_2/FusedBatchNormV3:y:0"sequential/up_sampling2d_1/mul:z:0*
T0*0
_output_shapes
:џџџџџџџџџќ *
half_pixel_centers(Є
)sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
sequential/conv2d_4/Conv2DConv2DHsequential/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџќ*
paddingSAME*
strides

*sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0К
sequential/conv2d_4/BiasAddBiasAdd#sequential/conv2d_4/Conv2D:output:02sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџќ
sequential/conv2d_4/ReluRelu$sequential/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџќЄ
/sequential/batch_normalization_3/ReadVariableOpReadVariableOp8sequential_batch_normalization_3_readvariableop_resource*
_output_shapes
:*
dtype0Ј
1sequential/batch_normalization_3/ReadVariableOp_1ReadVariableOp:sequential_batch_normalization_3_readvariableop_1_resource*
_output_shapes
:*
dtype0Ц
@sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpIsequential_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0Ъ
Bsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKsequential_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0ќ
1sequential/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3&sequential/conv2d_4/Relu:activations:07sequential/batch_normalization_3/ReadVariableOp:value:09sequential/batch_normalization_3/ReadVariableOp_1:value:0Hsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Jsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:џџџџџџџџџќ:::::*
epsilon%o:*
is_training( Є
)sequential/conv2d_5/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ё
sequential/conv2d_5/Conv2DConv2D5sequential/batch_normalization_3/FusedBatchNormV3:y:01sequential/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџќ*
paddingSAME*
strides

*sequential/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0К
sequential/conv2d_5/BiasAddBiasAdd#sequential/conv2d_5/Conv2D:output:02sequential/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџќ
sequential/conv2d_5/TanhTanh$sequential/conv2d_5/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџќ
-sequential/remove_padding/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"    
           
/sequential/remove_padding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"    іџџџ        
/sequential/remove_padding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            ы
'sequential/remove_padding/strided_sliceStridedSlicesequential/conv2d_5/Tanh:y:06sequential/remove_padding/strided_slice/stack:output:08sequential/remove_padding/strided_slice/stack_1:output:08sequential/remove_padding/strided_slice/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџш*

begin_mask*
end_mask
sequential/reshape_1/ShapeShape0sequential/remove_padding/strided_slice:output:0*
T0*
_output_shapes
::эЯr
(sequential/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:К
"sequential/reshape_1/strided_sliceStridedSlice#sequential/reshape_1/Shape:output:01sequential/reshape_1/strided_slice/stack:output:03sequential/reshape_1/strided_slice/stack_1:output:03sequential/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
$sequential/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :шf
$sequential/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :у
"sequential/reshape_1/Reshape/shapePack+sequential/reshape_1/strided_slice:output:0-sequential/reshape_1/Reshape/shape/1:output:0-sequential/reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:Н
sequential/reshape_1/ReshapeReshape0sequential/remove_padding/strided_slice:output:0+sequential/reshape_1/Reshape/shape:output:0*
T0*,
_output_shapes
:џџџџџџџџџшy
IdentityIdentity%sequential/reshape_1/Reshape:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџшф
NoOpNoOp?^sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpA^sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1.^sequential/batch_normalization/ReadVariableOp0^sequential/batch_normalization/ReadVariableOp_1A^sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpC^sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_10^sequential/batch_normalization_1/ReadVariableOp2^sequential/batch_normalization_1/ReadVariableOp_1A^sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOpC^sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_10^sequential/batch_normalization_2/ReadVariableOp2^sequential/batch_normalization_2/ReadVariableOp_1A^sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOpC^sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_10^sequential/batch_normalization_3/ReadVariableOp2^sequential/batch_normalization_3/ReadVariableOp_1)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp+^sequential/conv2d_4/BiasAdd/ReadVariableOp*^sequential/conv2d_4/Conv2D/ReadVariableOp+^sequential/conv2d_5/BiasAdd/ReadVariableOp*^sequential/conv2d_5/Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:џџџџџџџџџш: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2
@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_12
>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp2b
/sequential/batch_normalization/ReadVariableOp_1/sequential/batch_normalization/ReadVariableOp_12^
-sequential/batch_normalization/ReadVariableOp-sequential/batch_normalization/ReadVariableOp2
Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12
@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2f
1sequential/batch_normalization_1/ReadVariableOp_11sequential/batch_normalization_1/ReadVariableOp_12b
/sequential/batch_normalization_1/ReadVariableOp/sequential/batch_normalization_1/ReadVariableOp2
Bsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Bsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12
@sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp@sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2f
1sequential/batch_normalization_2/ReadVariableOp_11sequential/batch_normalization_2/ReadVariableOp_12b
/sequential/batch_normalization_2/ReadVariableOp/sequential/batch_normalization_2/ReadVariableOp2
Bsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Bsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12
@sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp@sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2f
1sequential/batch_normalization_3/ReadVariableOp_11sequential/batch_normalization_3/ReadVariableOp_12b
/sequential/batch_normalization_3/ReadVariableOp/sequential/batch_normalization_3/ReadVariableOp2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2X
*sequential/conv2d_4/BiasAdd/ReadVariableOp*sequential/conv2d_4/BiasAdd/ReadVariableOp2V
)sequential/conv2d_4/Conv2D/ReadVariableOp)sequential/conv2d_4/Conv2D/ReadVariableOp2X
*sequential/conv2d_5/BiasAdd/ReadVariableOp*sequential/conv2d_5/BiasAdd/ReadVariableOp2V
)sequential/conv2d_5/Conv2D/ReadVariableOp)sequential/conv2d_5/Conv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:U Q
,
_output_shapes
:џџџџџџџџџш
!
_user_specified_name	input_1


а
5__inference_batch_normalization_1_layer_call_fn_15963

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_15054
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name15959:%!

_user_specified_name15957:%!

_user_specified_name15955:%!

_user_specified_name15953:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
ф
^
B__inference_reshape_layer_call_and_return_conditional_losses_15802

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :шQ
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Љ
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџшa
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:џџџџџџџџџш"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџш:T P
,
_output_shapes
:џџџџџџџџџш
 
_user_specified_nameinputs

ќ
C__inference_conv2d_4_layer_call_and_return_conditional_losses_15390

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџj
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Э

N__inference_batch_normalization_layer_call_and_return_conditional_losses_15907

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
В
I
-__inference_max_pooling2d_layer_call_fn_15912

inputs
identityж
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_15013
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

П
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_15981

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ А
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs


(__inference_conv2d_1_layer_call_fn_15926

inputs!
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџў *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_15321x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџў <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџў: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name15922:%!

_user_specified_name15920:X T
0
_output_shapes
:џџџџџџџџџў
 
_user_specified_nameinputs
Ж
њ
A__inference_conv2d_layer_call_and_return_conditional_losses_15295

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџќ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџќY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџќj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџќS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџќ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:џџџџџџџџџќ
 
_user_specified_nameinputs

П
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_16110

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ А
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs"ЪL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ж
serving_defaultЂ
@
input_15
serving_default_input_1:0џџџџџџџџџшB
	reshape_15
StatefulPartitionedCall:0џџџџџџџџџшtensorflow/serving/predict:эА
м
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer-12
layer_with_weights-7
layer-13
layer_with_weights-8
layer-14
layer_with_weights-9
layer-15
layer-16
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Ѕ
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
н
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias
 0_jit_compiled_convolution_op"
_tf_keras_layer
ъ
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses
7axis
	8gamma
9beta
:moving_mean
;moving_variance"
_tf_keras_layer
Ѕ
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
н
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

Hkernel
Ibias
 J_jit_compiled_convolution_op"
_tf_keras_layer
ъ
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses
Qaxis
	Rgamma
Sbeta
Tmoving_mean
Umoving_variance"
_tf_keras_layer
Ѕ
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"
_tf_keras_layer
н
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses

bkernel
cbias
 d_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses"
_tf_keras_layer
н
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses

qkernel
rbias
 s_jit_compiled_convolution_op"
_tf_keras_layer
ъ
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses
zaxis
	{gamma
|beta
}moving_mean
~moving_variance"
_tf_keras_layer
Њ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op"
_tf_keras_layer
ѕ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis

gamma
	beta
moving_mean
moving_variance"
_tf_keras_layer
ц
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	 bias
!Ё_jit_compiled_convolution_op"
_tf_keras_layer
Ћ
Ђ	variables
Ѓtrainable_variables
Єregularization_losses
Ѕ	keras_api
І__call__
+Ї&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
Ј	variables
Љtrainable_variables
Њregularization_losses
Ћ	keras_api
Ќ__call__
+­&call_and_return_all_conditional_losses"
_tf_keras_layer
ў
.0
/1
82
93
:4
;5
H6
I7
R8
S9
T10
U11
b12
c13
q14
r15
{16
|17
}18
~19
20
21
22
23
24
25
26
 27"
trackable_list_wrapper
М
.0
/1
82
93
H4
I5
R6
S7
b8
c9
q10
r11
{12
|13
14
15
16
17
18
 19"
trackable_list_wrapper
 "
trackable_list_wrapper
Я
Ўnon_trainable_variables
Џlayers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ы
Гtrace_0
Дtrace_12
*__inference_sequential_layer_call_fn_15584
*__inference_sequential_layer_call_fn_15645Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zГtrace_0zДtrace_1

Еtrace_0
Жtrace_12Ц
E__inference_sequential_layer_call_and_return_conditional_losses_15445
E__inference_sequential_layer_call_and_return_conditional_losses_15523Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЕtrace_0zЖtrace_1
ЫBШ
 __inference__wrapped_model_14946input_1"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ѓ
З
_variables
И_iterations
Й_learning_rate
К_index_dict
Л
_momentums
М_velocities
Н_update_step_xla"
experimentalOptimizer
-
Оserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
у
Фtrace_02Ф
'__inference_reshape_layer_call_fn_15788
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zФtrace_0
ў
Хtrace_02п
B__inference_reshape_layer_call_and_return_conditional_losses_15802
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zХtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
ъ
Ыtrace_02Ы
.__inference_custom_padding_layer_call_fn_15807
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЫtrace_0

Ьtrace_02ц
I__inference_custom_padding_layer_call_and_return_conditional_losses_15825
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЬtrace_0
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Эnon_trainable_variables
Юlayers
Яmetrics
 аlayer_regularization_losses
бlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
т
вtrace_02У
&__inference_conv2d_layer_call_fn_15834
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zвtrace_0
§
гtrace_02о
A__inference_conv2d_layer_call_and_return_conditional_losses_15845
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zгtrace_0
':%2conv2d/kernel
:2conv2d/bias
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
<
80
91
:2
;3"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
В
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
н
йtrace_0
кtrace_12Ђ
3__inference_batch_normalization_layer_call_fn_15858
3__inference_batch_normalization_layer_call_fn_15871Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zйtrace_0zкtrace_1

лtrace_0
мtrace_12и
N__inference_batch_normalization_layer_call_and_return_conditional_losses_15889
N__inference_batch_normalization_layer_call_and_return_conditional_losses_15907Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zлtrace_0zмtrace_1
 "
trackable_list_wrapper
':%2batch_normalization/gamma
&:$2batch_normalization/beta
/:- (2batch_normalization/moving_mean
3:1 (2#batch_normalization/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
нnon_trainable_variables
оlayers
пmetrics
 рlayer_regularization_losses
сlayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
щ
тtrace_02Ъ
-__inference_max_pooling2d_layer_call_fn_15912
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zтtrace_0

уtrace_02х
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_15917
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zуtrace_0
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
ф
щtrace_02Х
(__inference_conv2d_1_layer_call_fn_15926
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zщtrace_0
џ
ъtrace_02р
C__inference_conv2d_1_layer_call_and_return_conditional_losses_15937
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zъtrace_0
):' 2conv2d_1/kernel
: 2conv2d_1/bias
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
<
R0
S1
T2
U3"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
с
№trace_0
ёtrace_12І
5__inference_batch_normalization_1_layer_call_fn_15950
5__inference_batch_normalization_1_layer_call_fn_15963Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z№trace_0zёtrace_1

ђtrace_0
ѓtrace_12м
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_15981
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_15999Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zђtrace_0zѓtrace_1
 "
trackable_list_wrapper
):' 2batch_normalization_1/gamma
(:& 2batch_normalization_1/beta
1:/  (2!batch_normalization_1/moving_mean
5:3  (2%batch_normalization_1/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
єnon_trainable_variables
ѕlayers
іmetrics
 їlayer_regularization_losses
јlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
ы
љtrace_02Ь
/__inference_max_pooling2d_1_layer_call_fn_16004
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zљtrace_0

њtrace_02ч
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_16009
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zњtrace_0
.
b0
c1"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
ћnon_trainable_variables
ќlayers
§metrics
 ўlayer_regularization_losses
џlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
ф
trace_02Х
(__inference_conv2d_2_layer_call_fn_16018
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
џ
trace_02р
C__inference_conv2d_2_layer_call_and_return_conditional_losses_16029
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
):' @2conv2d_2/kernel
:@2conv2d_2/bias
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
щ
trace_02Ъ
-__inference_up_sampling2d_layer_call_fn_16034
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02х
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_16046
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
.
q0
r1"
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
ф
trace_02Х
(__inference_conv2d_3_layer_call_fn_16055
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
џ
trace_02р
C__inference_conv2d_3_layer_call_and_return_conditional_losses_16066
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
):'@ 2conv2d_3/kernel
: 2conv2d_3/bias
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
<
{0
|1
}2
~3"
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
с
trace_0
trace_12І
5__inference_batch_normalization_2_layer_call_fn_16079
5__inference_batch_normalization_2_layer_call_fn_16092Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1

trace_0
trace_12м
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_16110
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_16128Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
 "
trackable_list_wrapper
):' 2batch_normalization_2/gamma
(:& 2batch_normalization_2/beta
1:/  (2!batch_normalization_2/moving_mean
5:3  (2%batch_normalization_2/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
З
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ы
trace_02Ь
/__inference_up_sampling2d_1_layer_call_fn_16133
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ч
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_16145
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
 non_trainable_variables
Ёlayers
Ђmetrics
 Ѓlayer_regularization_losses
Єlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ф
Ѕtrace_02Х
(__inference_conv2d_4_layer_call_fn_16154
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЅtrace_0
џ
Іtrace_02р
C__inference_conv2d_4_layer_call_and_return_conditional_losses_16165
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zІtrace_0
):' 2conv2d_4/kernel
:2conv2d_4/bias
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
@
0
1
2
3"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Їnon_trainable_variables
Јlayers
Љmetrics
 Њlayer_regularization_losses
Ћlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
с
Ќtrace_0
­trace_12І
5__inference_batch_normalization_3_layer_call_fn_16178
5__inference_batch_normalization_3_layer_call_fn_16191Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЌtrace_0z­trace_1

Ўtrace_0
Џtrace_12м
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_16209
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_16227Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЎtrace_0zЏtrace_1
 "
trackable_list_wrapper
):'2batch_normalization_3/gamma
(:&2batch_normalization_3/beta
1:/ (2!batch_normalization_3/moving_mean
5:3 (2%batch_normalization_3/moving_variance
0
0
 1"
trackable_list_wrapper
0
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ф
Еtrace_02Х
(__inference_conv2d_5_layer_call_fn_16236
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЕtrace_0
џ
Жtrace_02р
C__inference_conv2d_5_layer_call_and_return_conditional_losses_16247
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЖtrace_0
):'2conv2d_5/kernel
:2conv2d_5/bias
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
Ђ	variables
Ѓtrainable_variables
Єregularization_losses
І__call__
+Ї&call_and_return_all_conditional_losses
'Ї"call_and_return_conditional_losses"
_generic_user_object
ъ
Мtrace_02Ы
.__inference_remove_padding_layer_call_fn_16252
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zМtrace_0

Нtrace_02ц
I__inference_remove_padding_layer_call_and_return_conditional_losses_16260
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zНtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
Ј	variables
Љtrainable_variables
Њregularization_losses
Ќ__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses"
_generic_user_object
х
Уtrace_02Ц
)__inference_reshape_1_layer_call_fn_16265
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zУtrace_0

Фtrace_02с
D__inference_reshape_1_layer_call_and_return_conditional_losses_16278
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zФtrace_0
Z
:0
;1
T2
U3
}4
~5
6
7"
trackable_list_wrapper
І
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
17"
trackable_list_wrapper
(
Х0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ђBя
*__inference_sequential_layer_call_fn_15584input_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ђBя
*__inference_sequential_layer_call_fn_15645input_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
E__inference_sequential_layer_call_and_return_conditional_losses_15445input_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
E__inference_sequential_layer_call_and_return_conditional_losses_15523input_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 

И0
Ц1
Ч2
Ш3
Щ4
Ъ5
Ы6
Ь7
Э8
Ю9
Я10
а11
б12
в13
г14
д15
е16
ж17
з18
и19
й20
к21
л22
м23
н24
о25
п26
р27
с28
т29
у30
ф31
х32
ц33
ч34
ш35
щ36
ъ37
ы38
ь39
э40"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
Ъ
Ц0
Ш1
Ъ2
Ь3
Ю4
а5
в6
д7
ж8
и9
к10
м11
о12
р13
т14
ф15
ц16
ш17
ъ18
ь19"
trackable_list_wrapper
Ъ
Ч0
Щ1
Ы2
Э3
Я4
б5
г6
е7
з8
й9
л10
н11
п12
с13
у14
х15
ч16
щ17
ы18
э19"
trackable_list_wrapper
Е2ВЏ
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
ЪBЧ
#__inference_signature_wrapper_15783input_1"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
бBЮ
'__inference_reshape_layer_call_fn_15788inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
B__inference_reshape_layer_call_and_return_conditional_losses_15802inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
иBе
.__inference_custom_padding_layer_call_fn_15807inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѓB№
I__inference_custom_padding_layer_call_and_return_conditional_losses_15825inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
аBЭ
&__inference_conv2d_layer_call_fn_15834inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ыBш
A__inference_conv2d_layer_call_and_return_conditional_losses_15845inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
њBї
3__inference_batch_normalization_layer_call_fn_15858inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
њBї
3__inference_batch_normalization_layer_call_fn_15871inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
N__inference_batch_normalization_layer_call_and_return_conditional_losses_15889inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
N__inference_batch_normalization_layer_call_and_return_conditional_losses_15907inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
зBд
-__inference_max_pooling2d_layer_call_fn_15912inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ђBя
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_15917inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
вBЯ
(__inference_conv2d_1_layer_call_fn_15926inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
C__inference_conv2d_1_layer_call_and_return_conditional_losses_15937inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ќBљ
5__inference_batch_normalization_1_layer_call_fn_15950inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ќBљ
5__inference_batch_normalization_1_layer_call_fn_15963inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_15981inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_15999inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
йBж
/__inference_max_pooling2d_1_layer_call_fn_16004inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
єBё
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_16009inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
вBЯ
(__inference_conv2d_2_layer_call_fn_16018inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_16029inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
зBд
-__inference_up_sampling2d_layer_call_fn_16034inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ђBя
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_16046inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
вBЯ
(__inference_conv2d_3_layer_call_fn_16055inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_16066inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
}0
~1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ќBљ
5__inference_batch_normalization_2_layer_call_fn_16079inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ќBљ
5__inference_batch_normalization_2_layer_call_fn_16092inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_16110inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_16128inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
йBж
/__inference_up_sampling2d_1_layer_call_fn_16133inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
єBё
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_16145inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
вBЯ
(__inference_conv2d_4_layer_call_fn_16154inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
C__inference_conv2d_4_layer_call_and_return_conditional_losses_16165inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ќBљ
5__inference_batch_normalization_3_layer_call_fn_16178inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ќBљ
5__inference_batch_normalization_3_layer_call_fn_16191inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_16209inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_16227inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
вBЯ
(__inference_conv2d_5_layer_call_fn_16236inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
C__inference_conv2d_5_layer_call_and_return_conditional_losses_16247inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
иBе
.__inference_remove_padding_layer_call_fn_16252inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѓB№
I__inference_remove_padding_layer_call_and_return_conditional_losses_16260inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
гBа
)__inference_reshape_1_layer_call_fn_16265inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
D__inference_reshape_1_layer_call_and_return_conditional_losses_16278inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
R
ю	variables
я	keras_api

№total

ёcount"
_tf_keras_metric
,:*2Adam/m/conv2d/kernel
,:*2Adam/v/conv2d/kernel
:2Adam/m/conv2d/bias
:2Adam/v/conv2d/bias
,:*2 Adam/m/batch_normalization/gamma
,:*2 Adam/v/batch_normalization/gamma
+:)2Adam/m/batch_normalization/beta
+:)2Adam/v/batch_normalization/beta
.:, 2Adam/m/conv2d_1/kernel
.:, 2Adam/v/conv2d_1/kernel
 : 2Adam/m/conv2d_1/bias
 : 2Adam/v/conv2d_1/bias
.:, 2"Adam/m/batch_normalization_1/gamma
.:, 2"Adam/v/batch_normalization_1/gamma
-:+ 2!Adam/m/batch_normalization_1/beta
-:+ 2!Adam/v/batch_normalization_1/beta
.:, @2Adam/m/conv2d_2/kernel
.:, @2Adam/v/conv2d_2/kernel
 :@2Adam/m/conv2d_2/bias
 :@2Adam/v/conv2d_2/bias
.:,@ 2Adam/m/conv2d_3/kernel
.:,@ 2Adam/v/conv2d_3/kernel
 : 2Adam/m/conv2d_3/bias
 : 2Adam/v/conv2d_3/bias
.:, 2"Adam/m/batch_normalization_2/gamma
.:, 2"Adam/v/batch_normalization_2/gamma
-:+ 2!Adam/m/batch_normalization_2/beta
-:+ 2!Adam/v/batch_normalization_2/beta
.:, 2Adam/m/conv2d_4/kernel
.:, 2Adam/v/conv2d_4/kernel
 :2Adam/m/conv2d_4/bias
 :2Adam/v/conv2d_4/bias
.:,2"Adam/m/batch_normalization_3/gamma
.:,2"Adam/v/batch_normalization_3/gamma
-:+2!Adam/m/batch_normalization_3/beta
-:+2!Adam/v/batch_normalization_3/beta
.:,2Adam/m/conv2d_5/kernel
.:,2Adam/v/conv2d_5/kernel
 :2Adam/m/conv2d_5/bias
 :2Adam/v/conv2d_5/bias
0
№0
ё1"
trackable_list_wrapper
.
ю	variables"
_generic_user_object
:  (2total
:  (2countО
 __inference__wrapped_model_14946$./89:;HIRSTUbcqr{|}~ 5Ђ2
+Ђ(
&#
input_1џџџџџџџџџш
Њ ":Њ7
5
	reshape_1(%
	reshape_1џџџџџџџџџші
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_15981ЁRSTUQЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 і
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_15999ЁRSTUQЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p 

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 а
5__inference_batch_normalization_1_layer_call_fn_15950RSTUQЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ а
5__inference_batch_normalization_1_layer_call_fn_15963RSTUQЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p 

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ і
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_16110Ё{|}~QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 і
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_16128Ё{|}~QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p 

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 а
5__inference_batch_normalization_2_layer_call_fn_16079{|}~QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ а
5__inference_batch_normalization_2_layer_call_fn_16092{|}~QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p 

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ њ
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_16209ЅQЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 њ
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_16227ЅQЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 д
5__inference_batch_normalization_3_layer_call_fn_16178QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџд
5__inference_batch_normalization_3_layer_call_fn_16191QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџє
N__inference_batch_normalization_layer_call_and_return_conditional_losses_15889Ё89:;QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 є
N__inference_batch_normalization_layer_call_and_return_conditional_losses_15907Ё89:;QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ю
3__inference_batch_normalization_layer_call_fn_1585889:;QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџЮ
3__inference_batch_normalization_layer_call_fn_1587189:;QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџМ
C__inference_conv2d_1_layer_call_and_return_conditional_losses_15937uHI8Ђ5
.Ђ+
)&
inputsџџџџџџџџџў
Њ "5Ђ2
+(
tensor_0џџџџџџџџџў 
 
(__inference_conv2d_1_layer_call_fn_15926jHI8Ђ5
.Ђ+
)&
inputsџџџџџџџџџў
Њ "*'
unknownџџџџџџџџџў М
C__inference_conv2d_2_layer_call_and_return_conditional_losses_16029ubc8Ђ5
.Ђ+
)&
inputsџџџџџџџџџџ 
Њ "5Ђ2
+(
tensor_0џџџџџџџџџџ@
 
(__inference_conv2d_2_layer_call_fn_16018jbc8Ђ5
.Ђ+
)&
inputsџџџџџџџџџџ 
Њ "*'
unknownџџџџџџџџџџ@п
C__inference_conv2d_3_layer_call_and_return_conditional_losses_16066qrIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Й
(__inference_conv2d_3_layer_call_fn_16055qrIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ с
C__inference_conv2d_4_layer_call_and_return_conditional_losses_16165IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Л
(__inference_conv2d_4_layer_call_fn_16154IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџс
C__inference_conv2d_5_layer_call_and_return_conditional_losses_16247 IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Л
(__inference_conv2d_5_layer_call_fn_16236 IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџК
A__inference_conv2d_layer_call_and_return_conditional_losses_15845u./8Ђ5
.Ђ+
)&
inputsџџџџџџџџџќ
Њ "5Ђ2
+(
tensor_0џџџџџџџџџќ
 
&__inference_conv2d_layer_call_fn_15834j./8Ђ5
.Ђ+
)&
inputsџџџџџџџџџќ
Њ "*'
unknownџџџџџџџџџќО
I__inference_custom_padding_layer_call_and_return_conditional_losses_15825q8Ђ5
.Ђ+
)&
inputsџџџџџџџџџш
Њ "5Ђ2
+(
tensor_0џџџџџџџџџќ
 
.__inference_custom_padding_layer_call_fn_15807f8Ђ5
.Ђ+
)&
inputsџџџџџџџџџш
Њ "*'
unknownџџџџџџџџџќє
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_16009ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ю
/__inference_max_pooling2d_1_layer_call_fn_16004RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџђ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_15917ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ь
-__inference_max_pooling2d_layer_call_fn_15912RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџс
I__inference_remove_padding_layer_call_and_return_conditional_losses_16260IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Л
.__inference_remove_padding_layer_call_fn_16252IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџЦ
D__inference_reshape_1_layer_call_and_return_conditional_losses_16278~IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "1Ђ.
'$
tensor_0џџџџџџџџџш
  
)__inference_reshape_1_layer_call_fn_16265sIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "&#
unknownџџџџџџџџџшГ
B__inference_reshape_layer_call_and_return_conditional_losses_15802m4Ђ1
*Ђ'
%"
inputsџџџџџџџџџш
Њ "5Ђ2
+(
tensor_0џџџџџџџџџш
 
'__inference_reshape_layer_call_fn_15788b4Ђ1
*Ђ'
%"
inputsџџџџџџџџџш
Њ "*'
unknownџџџџџџџџџшт
E__inference_sequential_layer_call_and_return_conditional_losses_15445$./89:;HIRSTUbcqr{|}~ =Ђ:
3Ђ0
&#
input_1џџџџџџџџџш
p

 
Њ "1Ђ.
'$
tensor_0џџџџџџџџџш
 т
E__inference_sequential_layer_call_and_return_conditional_losses_15523$./89:;HIRSTUbcqr{|}~ =Ђ:
3Ђ0
&#
input_1џџџџџџџџџш
p 

 
Њ "1Ђ.
'$
tensor_0џџџџџџџџџш
 М
*__inference_sequential_layer_call_fn_15584$./89:;HIRSTUbcqr{|}~ =Ђ:
3Ђ0
&#
input_1џџџџџџџџџш
p

 
Њ "&#
unknownџџџџџџџџџшМ
*__inference_sequential_layer_call_fn_15645$./89:;HIRSTUbcqr{|}~ =Ђ:
3Ђ0
&#
input_1џџџџџџџџџш
p 

 
Њ "&#
unknownџџџџџџџџџшЬ
#__inference_signature_wrapper_15783Є$./89:;HIRSTUbcqr{|}~ @Ђ=
Ђ 
6Њ3
1
input_1&#
input_1џџџџџџџџџш":Њ7
5
	reshape_1(%
	reshape_1џџџџџџџџџшє
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_16145ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ю
/__inference_up_sampling2d_1_layer_call_fn_16133RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџђ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_16046ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ь
-__inference_up_sampling2d_layer_call_fn_16034RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ