��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
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
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
�
ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring ��
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758��
�
random_rotation/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*)
shared_namerandom_rotation/StateVar
�
,random_rotation/StateVar/Read/ReadVariableOpReadVariableOprandom_rotation/StateVar*
_output_shapes
:*
dtype0	
�
random_flip/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*%
shared_namerandom_flip/StateVar
y
(random_flip/StateVar/Read/ReadVariableOpReadVariableOprandom_flip/StateVar*
_output_shapes
:*
dtype0	
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
~
Adam/v/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_3/bias
w
'Adam/v/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_3/bias
w
'Adam/m/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/v/dense_3/kernel

)Adam/v/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/kernel*
_output_shapes

:@*
dtype0
�
Adam/m/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/m/dense_3/kernel

)Adam/m/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/kernel*
_output_shapes

:@*
dtype0
~
Adam/v/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/v/dense_2/bias
w
'Adam/v/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/bias*
_output_shapes
:@*
dtype0
~
Adam/m/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/m/dense_2/bias
w
'Adam/m/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/bias*
_output_shapes
:@*
dtype0
�
Adam/v/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*&
shared_nameAdam/v/dense_2/kernel
�
)Adam/v/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/kernel*
_output_shapes
:	�@*
dtype0
�
Adam/m/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*&
shared_nameAdam/m/dense_2/kernel
�
)Adam/m/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/kernel*
_output_shapes
:	�@*
dtype0
�
Adam/v/conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_11/bias
{
)Adam/v/conv2d_11/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_11/bias*
_output_shapes
:@*
dtype0
�
Adam/m/conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_11/bias
{
)Adam/m/conv2d_11/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_11/bias*
_output_shapes
:@*
dtype0
�
Adam/v/conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/v/conv2d_11/kernel
�
+Adam/v/conv2d_11/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_11/kernel*&
_output_shapes
:@@*
dtype0
�
Adam/m/conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/m/conv2d_11/kernel
�
+Adam/m/conv2d_11/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_11/kernel*&
_output_shapes
:@@*
dtype0
�
Adam/v/conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_10/bias
{
)Adam/v/conv2d_10/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_10/bias*
_output_shapes
:@*
dtype0
�
Adam/m/conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_10/bias
{
)Adam/m/conv2d_10/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_10/bias*
_output_shapes
:@*
dtype0
�
Adam/v/conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/v/conv2d_10/kernel
�
+Adam/v/conv2d_10/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_10/kernel*&
_output_shapes
:@@*
dtype0
�
Adam/m/conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/m/conv2d_10/kernel
�
+Adam/m/conv2d_10/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_10/kernel*&
_output_shapes
:@@*
dtype0
�
Adam/v/conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_9/bias
y
(Adam/v/conv2d_9/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_9/bias*
_output_shapes
:@*
dtype0
�
Adam/m/conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_9/bias
y
(Adam/m/conv2d_9/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_9/bias*
_output_shapes
:@*
dtype0
�
Adam/v/conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/v/conv2d_9/kernel
�
*Adam/v/conv2d_9/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_9/kernel*&
_output_shapes
:@@*
dtype0
�
Adam/m/conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/m/conv2d_9/kernel
�
*Adam/m/conv2d_9/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_9/kernel*&
_output_shapes
:@@*
dtype0
�
Adam/v/conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_8/bias
y
(Adam/v/conv2d_8/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_8/bias*
_output_shapes
:@*
dtype0
�
Adam/m/conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_8/bias
y
(Adam/m/conv2d_8/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_8/bias*
_output_shapes
:@*
dtype0
�
Adam/v/conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/v/conv2d_8/kernel
�
*Adam/v/conv2d_8/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_8/kernel*&
_output_shapes
:@@*
dtype0
�
Adam/m/conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/m/conv2d_8/kernel
�
*Adam/m/conv2d_8/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_8/kernel*&
_output_shapes
:@@*
dtype0
�
Adam/v/conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_7/bias
y
(Adam/v/conv2d_7/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_7/bias*
_output_shapes
:@*
dtype0
�
Adam/m/conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_7/bias
y
(Adam/m/conv2d_7/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_7/bias*
_output_shapes
:@*
dtype0
�
Adam/v/conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/v/conv2d_7/kernel
�
*Adam/v/conv2d_7/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_7/kernel*&
_output_shapes
: @*
dtype0
�
Adam/m/conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/m/conv2d_7/kernel
�
*Adam/m/conv2d_7/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_7/kernel*&
_output_shapes
: @*
dtype0
�
Adam/v/conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/conv2d_6/bias
y
(Adam/v/conv2d_6/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_6/bias*
_output_shapes
: *
dtype0
�
Adam/m/conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/conv2d_6/bias
y
(Adam/m/conv2d_6/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_6/bias*
_output_shapes
: *
dtype0
�
Adam/v/conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/v/conv2d_6/kernel
�
*Adam/v/conv2d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_6/kernel*&
_output_shapes
: *
dtype0
�
Adam/m/conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/m/conv2d_6/kernel
�
*Adam/m/conv2d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_6/kernel*&
_output_shapes
: *
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
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:@*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:@*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	�@*
dtype0
t
conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_11/bias
m
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes
:@*
dtype0
�
conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_11/kernel
}
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_10/bias
m
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes
:@*
dtype0
�
conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_9/bias
k
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes
:@*
dtype0
�
conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_9/kernel
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
:@*
dtype0
�
conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_7/bias
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:@*
dtype0
�
conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_7/kernel
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_6/bias
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
: *
dtype0
�
conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_6/kernel
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
: *
dtype0
�
 serving_default_sequential_inputPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCall serving_default_sequential_inputconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_24034

NoOpNoOp
ʗ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B�
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer_with_weights-6
layer-14
layer_with_weights-7
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses* 
�
"layer-0
#layer-1
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses*
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias
 2_jit_compiled_convolution_op*
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses* 
�
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

?kernel
@bias
 A_jit_compiled_convolution_op*
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses* 
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

Nkernel
Obias
 P_jit_compiled_convolution_op*
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses* 
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

]kernel
^bias
 __jit_compiled_convolution_op*
�
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses* 
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

lkernel
mbias
 n_jit_compiled_convolution_op*
�
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses* 
�
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses

{kernel
|bias
 }_jit_compiled_convolution_op*
�
~	variables
trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
~
00
11
?2
@3
N4
O5
]6
^7
l8
m9
{10
|11
�12
�13
�14
�15*
~
00
11
?2
@3
N4
O5
]6
^7
l8
m9
{10
|11
�12
�13
�14
�15*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla*

�serving_default* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 

00
11*

00
11*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

?0
@1*

?0
@1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_7/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

N0
O1*

N0
O1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

]0
^1*

]0
^1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_9/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_9/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

l0
m1*

l0
m1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_10/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

{0
|1*

{0
|1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_11/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_11/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
~	variables
trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
z
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
15*

�0
�1*
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
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15*
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

0
1* 
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

�
_generator*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

�
_generator*
* 

"0
#1*
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
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
a[
VARIABLE_VALUEAdam/m/conv2d_6/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_6/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv2d_6/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d_6/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_7/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_7/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv2d_7/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d_7/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_8/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_8/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_8/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_8/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_9/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_9/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_9/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_9/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_10/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_10/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_10/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_10/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_11/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_11/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_11/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_11/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_2/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_2/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_2/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_2/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_3/kernel2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_3/kernel2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_3/bias2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_3/bias2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
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

�
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 

�
_state_var*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
�z
VARIABLE_VALUErandom_flip/StateVarRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUErandom_rotation/StateVarRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias	iterationlearning_rateAdam/m/conv2d_6/kernelAdam/v/conv2d_6/kernelAdam/m/conv2d_6/biasAdam/v/conv2d_6/biasAdam/m/conv2d_7/kernelAdam/v/conv2d_7/kernelAdam/m/conv2d_7/biasAdam/v/conv2d_7/biasAdam/m/conv2d_8/kernelAdam/v/conv2d_8/kernelAdam/m/conv2d_8/biasAdam/v/conv2d_8/biasAdam/m/conv2d_9/kernelAdam/v/conv2d_9/kernelAdam/m/conv2d_9/biasAdam/v/conv2d_9/biasAdam/m/conv2d_10/kernelAdam/v/conv2d_10/kernelAdam/m/conv2d_10/biasAdam/v/conv2d_10/biasAdam/m/conv2d_11/kernelAdam/v/conv2d_11/kernelAdam/m/conv2d_11/biasAdam/v/conv2d_11/biasAdam/m/dense_2/kernelAdam/v/dense_2/kernelAdam/m/dense_2/biasAdam/v/dense_2/biasAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biastotal_1count_1totalcountrandom_flip/StateVarrandom_rotation/StateVarConst*E
Tin>
<2:*
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
GPU 2J 8� *'
f"R 
__inference__traced_save_25627
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias	iterationlearning_rateAdam/m/conv2d_6/kernelAdam/v/conv2d_6/kernelAdam/m/conv2d_6/biasAdam/v/conv2d_6/biasAdam/m/conv2d_7/kernelAdam/v/conv2d_7/kernelAdam/m/conv2d_7/biasAdam/v/conv2d_7/biasAdam/m/conv2d_8/kernelAdam/v/conv2d_8/kernelAdam/m/conv2d_8/biasAdam/v/conv2d_8/biasAdam/m/conv2d_9/kernelAdam/v/conv2d_9/kernelAdam/m/conv2d_9/biasAdam/v/conv2d_9/biasAdam/m/conv2d_10/kernelAdam/v/conv2d_10/kernelAdam/m/conv2d_10/biasAdam/v/conv2d_10/biasAdam/m/conv2d_11/kernelAdam/v/conv2d_11/kernelAdam/m/conv2d_11/biasAdam/v/conv2d_11/biasAdam/m/dense_2/kernelAdam/v/dense_2/kernelAdam/m/dense_2/biasAdam/v/dense_2/biasAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biastotal_1count_1totalcountrandom_flip/StateVarrandom_rotation/StateVar*D
Tin=
;29*
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
GPU 2J 8� **
f%R#
!__inference__traced_restore_25805�
�	
n
G__inference_sequential_1_layer_call_and_return_conditional_losses_23299
random_flip_input
identity�
random_flip/PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_23291�
random_rotation/PartitionedCallPartitionedCall$random_flip/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_23296z
IdentityIdentity(random_rotation/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:d `
1
_output_shapes
:�����������
+
_user_specified_namerandom_flip_input
�A
�
G__inference_sequential_3_layer_call_and_return_conditional_losses_23642
sequential_input(
conv2d_6_23595: 
conv2d_6_23597: (
conv2d_7_23601: @
conv2d_7_23603:@(
conv2d_8_23607:@@
conv2d_8_23609:@(
conv2d_9_23613:@@
conv2d_9_23615:@)
conv2d_10_23619:@@
conv2d_10_23621:@)
conv2d_11_23625:@@
conv2d_11_23627:@ 
dense_2_23631:	�@
dense_2_23633:@
dense_3_23636:@
dense_3_23638:
identity��!conv2d_10/StatefulPartitionedCall�!conv2d_11/StatefulPartitionedCall� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall� conv2d_9/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�
sequential/PartitionedCallPartitionedCallsequential_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_23018�
sequential_1/PartitionedCallPartitionedCall#sequential/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_23327�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall%sequential_1/PartitionedCall:output:0conv2d_6_23595conv2d_6_23597*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_23451�
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_23376�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_7_23601conv2d_7_23603*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_23469�
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_23388�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_8_23607conv2d_8_23609*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_23487�
max_pooling2d_7/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_23400�
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_9_23613conv2d_9_23615*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_23505�
max_pooling2d_8/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_23412�
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_10_23619conv2d_10_23621*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_23523�
max_pooling2d_9/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_23424�
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_11_23625conv2d_11_23627*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_23541�
flatten_1/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_23553�
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_23631dense_2_23633*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_23566�
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_23636dense_3_23638*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_23583w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_namesequential_input
�
K
/__inference_random_rotation_layer_call_fn_25136

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_23296j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_8_layer_call_fn_24867

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_23412�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_9_layer_call_and_return_conditional_losses_23505

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
`
D__inference_rescaling_layer_call_and_return_conditional_losses_22989

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:�����������d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
f
J__inference_random_rotation_layer_call_and_return_conditional_losses_23296

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_23412

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_10_layer_call_fn_24881

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_23523w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
��
�
J__inference_random_rotation_layer_call_and_return_conditional_losses_23280

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:���������g
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
::��m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������S
transform/ShapeShapeinputs*
T0*
_output_shapes
::��g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:�����������h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
,__inference_sequential_3_layer_call_fn_24112

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	�@

unknown_12:@

unknown_13:@

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_23794o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_23312

inputs
random_flip_23305:	#
random_rotation_23308:	
identity��#random_flip/StatefulPartitionedCall�'random_rotation/StatefulPartitionedCall�
#random_flip/StatefulPartitionedCallStatefulPartitionedCallinputsrandom_flip_23305*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_23158�
'random_rotation/StatefulPartitionedCallStatefulPartitionedCall,random_flip/StatefulPartitionedCall:output:0random_rotation_23308*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_23280�
IdentityIdentity0random_rotation/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp$^random_flip/StatefulPartitionedCall(^random_rotation/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 2J
#random_flip/StatefulPartitionedCall#random_flip/StatefulPartitionedCall2R
'random_rotation/StatefulPartitionedCall'random_rotation/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�A
�
G__inference_sequential_3_layer_call_and_return_conditional_losses_23794

inputs(
conv2d_6_23747: 
conv2d_6_23749: (
conv2d_7_23753: @
conv2d_7_23755:@(
conv2d_8_23759:@@
conv2d_8_23761:@(
conv2d_9_23765:@@
conv2d_9_23767:@)
conv2d_10_23771:@@
conv2d_10_23773:@)
conv2d_11_23777:@@
conv2d_11_23779:@ 
dense_2_23783:	�@
dense_2_23785:@
dense_3_23788:@
dense_3_23790:
identity��!conv2d_10/StatefulPartitionedCall�!conv2d_11/StatefulPartitionedCall� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall� conv2d_9/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�
sequential/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_23018�
sequential_1/PartitionedCallPartitionedCall#sequential/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_23327�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall%sequential_1/PartitionedCall:output:0conv2d_6_23747conv2d_6_23749*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_23451�
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_23376�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_7_23753conv2d_7_23755*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_23469�
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_23388�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_8_23759conv2d_8_23761*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_23487�
max_pooling2d_7/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_23400�
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_9_23765conv2d_9_23767*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_23505�
max_pooling2d_8/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_23412�
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_10_23771conv2d_10_23773*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_23523�
max_pooling2d_9/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_23424�
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_11_23777conv2d_11_23779*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_23541�
flatten_1/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_23553�
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_23783dense_2_23785*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_23566�
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_23788dense_3_23790*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_23583w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
E
)__inference_flatten_1_layer_call_fn_24927

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_23553a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
F
*__inference_sequential_layer_call_fn_24484

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_23007j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
i
E__inference_sequential_layer_call_and_return_conditional_losses_22992
resizing_input
identity�
resizing/PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_22979�
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_22989t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:a ]
1
_output_shapes
:�����������
(
_user_specified_nameresizing_input
��
�
F__inference_random_flip_layer_call_and_return_conditional_losses_25120

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identity��(stateful_uniform_full_int/RngReadAndSkip�*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:������������
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::��~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:�
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:���������y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:�����������k
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:������������
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:�����������k
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
*stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource+stateful_uniform_full_int_1/Cast/x:output:0&stateful_uniform_full_int_1/Cast_1:y:0)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:y
/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
#stateful_uniform_full_int_1/BitcastBitcast2stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0{
1stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_full_int_1StatelessRandomUniformFullIntV2*stateful_uniform_full_int_1/shape:output:0.stateful_uniform_full_int_1/Bitcast_1:output:0,stateful_uniform_full_int_1/Bitcast:output:0(stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	V
zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ~
stack_1Pack$stateful_uniform_full_int_1:output:0zeros_like_1:output:0*
N*
T0	*
_output_shapes

:f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*1
_output_shapes
:������������
#stateless_random_flip_up_down/ShapeShape9stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::��{
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
<stateless_random_flip_up_down/stateless_random_uniform/shapePack4stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
:stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
:stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::�
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������o
-stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:���������v
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:�����������h
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:����������
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:������������
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:�����������~
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
E
)__inference_rescaling_layer_call_fn_24989

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_22989j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
B__inference_dense_2_layer_call_and_return_conditional_losses_24953

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_23553

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�m
�
 __inference__wrapped_model_22969
sequential_inputN
4sequential_3_conv2d_6_conv2d_readvariableop_resource: C
5sequential_3_conv2d_6_biasadd_readvariableop_resource: N
4sequential_3_conv2d_7_conv2d_readvariableop_resource: @C
5sequential_3_conv2d_7_biasadd_readvariableop_resource:@N
4sequential_3_conv2d_8_conv2d_readvariableop_resource:@@C
5sequential_3_conv2d_8_biasadd_readvariableop_resource:@N
4sequential_3_conv2d_9_conv2d_readvariableop_resource:@@C
5sequential_3_conv2d_9_biasadd_readvariableop_resource:@O
5sequential_3_conv2d_10_conv2d_readvariableop_resource:@@D
6sequential_3_conv2d_10_biasadd_readvariableop_resource:@O
5sequential_3_conv2d_11_conv2d_readvariableop_resource:@@D
6sequential_3_conv2d_11_biasadd_readvariableop_resource:@F
3sequential_3_dense_2_matmul_readvariableop_resource:	�@B
4sequential_3_dense_2_biasadd_readvariableop_resource:@E
3sequential_3_dense_3_matmul_readvariableop_resource:@B
4sequential_3_dense_3_biasadd_readvariableop_resource:
identity��-sequential_3/conv2d_10/BiasAdd/ReadVariableOp�,sequential_3/conv2d_10/Conv2D/ReadVariableOp�-sequential_3/conv2d_11/BiasAdd/ReadVariableOp�,sequential_3/conv2d_11/Conv2D/ReadVariableOp�,sequential_3/conv2d_6/BiasAdd/ReadVariableOp�+sequential_3/conv2d_6/Conv2D/ReadVariableOp�,sequential_3/conv2d_7/BiasAdd/ReadVariableOp�+sequential_3/conv2d_7/Conv2D/ReadVariableOp�,sequential_3/conv2d_8/BiasAdd/ReadVariableOp�+sequential_3/conv2d_8/Conv2D/ReadVariableOp�,sequential_3/conv2d_9/BiasAdd/ReadVariableOp�+sequential_3/conv2d_9/Conv2D/ReadVariableOp�+sequential_3/dense_2/BiasAdd/ReadVariableOp�*sequential_3/dense_2/MatMul/ReadVariableOp�+sequential_3/dense_3/BiasAdd/ReadVariableOp�*sequential_3/dense_3/MatMul/ReadVariableOp}
,sequential_3/sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
6sequential_3/sequential/resizing/resize/ResizeBilinearResizeBilinearsequential_input5sequential_3/sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(m
(sequential_3/sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;o
*sequential_3/sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%sequential_3/sequential/rescaling/mulMulGsequential_3/sequential/resizing/resize/ResizeBilinear:resized_images:01sequential_3/sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:������������
%sequential_3/sequential/rescaling/addAddV2)sequential_3/sequential/rescaling/mul:z:03sequential_3/sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:������������
+sequential_3/conv2d_6/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
sequential_3/conv2d_6/Conv2DConv2D)sequential_3/sequential/rescaling/add:z:03sequential_3/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
�
,sequential_3/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential_3/conv2d_6/BiasAddBiasAdd%sequential_3/conv2d_6/Conv2D:output:04sequential_3/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� �
sequential_3/conv2d_6/ReluRelu&sequential_3/conv2d_6/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
$sequential_3/max_pooling2d_5/MaxPoolMaxPool(sequential_3/conv2d_6/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
+sequential_3/conv2d_7/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
sequential_3/conv2d_7/Conv2DConv2D-sequential_3/max_pooling2d_5/MaxPool:output:03sequential_3/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@*
paddingVALID*
strides
�
,sequential_3/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_3/conv2d_7/BiasAddBiasAdd%sequential_3/conv2d_7/Conv2D:output:04sequential_3/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@�
sequential_3/conv2d_7/ReluRelu&sequential_3/conv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:���������}}@�
$sequential_3/max_pooling2d_6/MaxPoolMaxPool(sequential_3/conv2d_7/Relu:activations:0*/
_output_shapes
:���������>>@*
ksize
*
paddingVALID*
strides
�
+sequential_3/conv2d_8/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
sequential_3/conv2d_8/Conv2DConv2D-sequential_3/max_pooling2d_6/MaxPool:output:03sequential_3/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@*
paddingVALID*
strides
�
,sequential_3/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_3/conv2d_8/BiasAddBiasAdd%sequential_3/conv2d_8/Conv2D:output:04sequential_3/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@�
sequential_3/conv2d_8/ReluRelu&sequential_3/conv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:���������<<@�
$sequential_3/max_pooling2d_7/MaxPoolMaxPool(sequential_3/conv2d_8/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
+sequential_3/conv2d_9/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
sequential_3/conv2d_9/Conv2DConv2D-sequential_3/max_pooling2d_7/MaxPool:output:03sequential_3/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
,sequential_3/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_3/conv2d_9/BiasAddBiasAdd%sequential_3/conv2d_9/Conv2D:output:04sequential_3/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
sequential_3/conv2d_9/ReluRelu&sequential_3/conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
$sequential_3/max_pooling2d_8/MaxPoolMaxPool(sequential_3/conv2d_9/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
,sequential_3/conv2d_10/Conv2D/ReadVariableOpReadVariableOp5sequential_3_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
sequential_3/conv2d_10/Conv2DConv2D-sequential_3/max_pooling2d_8/MaxPool:output:04sequential_3/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
-sequential_3/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp6sequential_3_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_3/conv2d_10/BiasAddBiasAdd&sequential_3/conv2d_10/Conv2D:output:05sequential_3/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
sequential_3/conv2d_10/ReluRelu'sequential_3/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
$sequential_3/max_pooling2d_9/MaxPoolMaxPool)sequential_3/conv2d_10/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
,sequential_3/conv2d_11/Conv2D/ReadVariableOpReadVariableOp5sequential_3_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
sequential_3/conv2d_11/Conv2DConv2D-sequential_3/max_pooling2d_9/MaxPool:output:04sequential_3/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
-sequential_3/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp6sequential_3_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_3/conv2d_11/BiasAddBiasAdd&sequential_3/conv2d_11/Conv2D:output:05sequential_3/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
sequential_3/conv2d_11/ReluRelu'sequential_3/conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:���������@m
sequential_3/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
sequential_3/flatten_1/ReshapeReshape)sequential_3/conv2d_11/Relu:activations:0%sequential_3/flatten_1/Const:output:0*
T0*(
_output_shapes
:�����������
*sequential_3/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_2_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
sequential_3/dense_2/MatMulMatMul'sequential_3/flatten_1/Reshape:output:02sequential_3/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
+sequential_3/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_3/dense_2/BiasAddBiasAdd%sequential_3/dense_2/MatMul:product:03sequential_3/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@z
sequential_3/dense_2/ReluRelu%sequential_3/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
*sequential_3/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
sequential_3/dense_3/MatMulMatMul'sequential_3/dense_2/Relu:activations:02sequential_3/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_3/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_3/dense_3/BiasAddBiasAdd%sequential_3/dense_3/MatMul:product:03sequential_3/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential_3/dense_3/SoftmaxSoftmax%sequential_3/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������u
IdentityIdentity&sequential_3/dense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^sequential_3/conv2d_10/BiasAdd/ReadVariableOp-^sequential_3/conv2d_10/Conv2D/ReadVariableOp.^sequential_3/conv2d_11/BiasAdd/ReadVariableOp-^sequential_3/conv2d_11/Conv2D/ReadVariableOp-^sequential_3/conv2d_6/BiasAdd/ReadVariableOp,^sequential_3/conv2d_6/Conv2D/ReadVariableOp-^sequential_3/conv2d_7/BiasAdd/ReadVariableOp,^sequential_3/conv2d_7/Conv2D/ReadVariableOp-^sequential_3/conv2d_8/BiasAdd/ReadVariableOp,^sequential_3/conv2d_8/Conv2D/ReadVariableOp-^sequential_3/conv2d_9/BiasAdd/ReadVariableOp,^sequential_3/conv2d_9/Conv2D/ReadVariableOp,^sequential_3/dense_2/BiasAdd/ReadVariableOp+^sequential_3/dense_2/MatMul/ReadVariableOp,^sequential_3/dense_3/BiasAdd/ReadVariableOp+^sequential_3/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 2^
-sequential_3/conv2d_10/BiasAdd/ReadVariableOp-sequential_3/conv2d_10/BiasAdd/ReadVariableOp2\
,sequential_3/conv2d_10/Conv2D/ReadVariableOp,sequential_3/conv2d_10/Conv2D/ReadVariableOp2^
-sequential_3/conv2d_11/BiasAdd/ReadVariableOp-sequential_3/conv2d_11/BiasAdd/ReadVariableOp2\
,sequential_3/conv2d_11/Conv2D/ReadVariableOp,sequential_3/conv2d_11/Conv2D/ReadVariableOp2\
,sequential_3/conv2d_6/BiasAdd/ReadVariableOp,sequential_3/conv2d_6/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_6/Conv2D/ReadVariableOp+sequential_3/conv2d_6/Conv2D/ReadVariableOp2\
,sequential_3/conv2d_7/BiasAdd/ReadVariableOp,sequential_3/conv2d_7/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_7/Conv2D/ReadVariableOp+sequential_3/conv2d_7/Conv2D/ReadVariableOp2\
,sequential_3/conv2d_8/BiasAdd/ReadVariableOp,sequential_3/conv2d_8/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_8/Conv2D/ReadVariableOp+sequential_3/conv2d_8/Conv2D/ReadVariableOp2\
,sequential_3/conv2d_9/BiasAdd/ReadVariableOp,sequential_3/conv2d_9/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_9/Conv2D/ReadVariableOp+sequential_3/conv2d_9/Conv2D/ReadVariableOp2Z
+sequential_3/dense_2/BiasAdd/ReadVariableOp+sequential_3/dense_2/BiasAdd/ReadVariableOp2X
*sequential_3/dense_2/MatMul/ReadVariableOp*sequential_3/dense_2/MatMul/ReadVariableOp2Z
+sequential_3/dense_3/BiasAdd/ReadVariableOp+sequential_3/dense_3/BiasAdd/ReadVariableOp2X
*sequential_3/dense_3/MatMul/ReadVariableOp*sequential_3/dense_3/MatMul/ReadVariableOp:c _
1
_output_shapes
:�����������
*
_user_specified_namesequential_input
�
�
)__inference_conv2d_11_layer_call_fn_24911

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_23541w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_23400

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
(__inference_conv2d_7_layer_call_fn_24791

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_23469w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������}}@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
_
C__inference_resizing_layer_call_and_return_conditional_losses_22979

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
'__inference_dense_2_layer_call_fn_24942

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_23566o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_10_layer_call_and_return_conditional_losses_24892

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
(__inference_conv2d_8_layer_call_fn_24821

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_23487w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<<@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������>>@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������>>@
 
_user_specified_nameinputs
�
�
C__inference_conv2d_7_layer_call_and_return_conditional_losses_24802

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������}}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������}}@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
,__inference_sequential_1_layer_call_fn_23319
random_flip_input
unknown:	
	unknown_0:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_23312y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
1
_output_shapes
:�����������
+
_user_specified_namerandom_flip_input
��
�
F__inference_random_flip_layer_call_and_return_conditional_losses_23158

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identity��(stateful_uniform_full_int/RngReadAndSkip�*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:������������
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::��~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:�
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:���������y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:�����������k
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:������������
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:�����������k
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
*stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource+stateful_uniform_full_int_1/Cast/x:output:0&stateful_uniform_full_int_1/Cast_1:y:0)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:y
/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
#stateful_uniform_full_int_1/BitcastBitcast2stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0{
1stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_full_int_1StatelessRandomUniformFullIntV2*stateful_uniform_full_int_1/shape:output:0.stateful_uniform_full_int_1/Bitcast_1:output:0,stateful_uniform_full_int_1/Bitcast:output:0(stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	V
zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ~
stack_1Pack$stateful_uniform_full_int_1:output:0zeros_like_1:output:0*
N*
T0	*
_output_shapes

:f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*1
_output_shapes
:������������
#stateless_random_flip_up_down/ShapeShape9stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::��{
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
<stateless_random_flip_up_down/stateless_random_uniform/shapePack4stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
:stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
:stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::�
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������o
-stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:���������v
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:�����������h
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:����������
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:������������
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:�����������~
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
i
E__inference_sequential_layer_call_and_return_conditional_losses_22998
resizing_input
identity�
resizing/PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_22979�
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_22989t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:a ]
1
_output_shapes
:�����������
(
_user_specified_nameresizing_input
�
f
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_24782

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_10_layer_call_and_return_conditional_losses_23523

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_24842

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

/__inference_random_rotation_layer_call_fn_25131

inputs
unknown:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_23280y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_9_layer_call_and_return_conditional_losses_24862

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
F
*__inference_sequential_layer_call_fn_24489

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_23018j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_24748

inputsK
=random_flip_stateful_uniform_full_int_rngreadandskip_resource:	F
8random_rotation_stateful_uniform_rngreadandskip_resource:	
identity��4random_flip/stateful_uniform_full_int/RngReadAndSkip�6random_flip/stateful_uniform_full_int_1/RngReadAndSkip�/random_rotation/stateful_uniform/RngReadAndSkipu
+random_flip/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+random_flip/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
*random_flip/stateful_uniform_full_int/ProdProd4random_flip/stateful_uniform_full_int/shape:output:04random_flip/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: n
,random_flip/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
,random_flip/stateful_uniform_full_int/Cast_1Cast3random_flip/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
4random_flip/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=random_flip_stateful_uniform_full_int_rngreadandskip_resource5random_flip/stateful_uniform_full_int/Cast/x:output:00random_flip/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
9random_flip/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
;random_flip/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;random_flip/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3random_flip/stateful_uniform_full_int/strided_sliceStridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Brandom_flip/stateful_uniform_full_int/strided_slice/stack:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_1:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
-random_flip/stateful_uniform_full_int/BitcastBitcast<random_flip/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
;random_flip/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
5random_flip/stateful_uniform_full_int/strided_slice_1StridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Drandom_flip/stateful_uniform_full_int/strided_slice_1/stack:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
/random_flip/stateful_uniform_full_int/Bitcast_1Bitcast>random_flip/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)random_flip/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
%random_flip/stateful_uniform_full_intStatelessRandomUniformFullIntV24random_flip/stateful_uniform_full_int/shape:output:08random_flip/stateful_uniform_full_int/Bitcast_1:output:06random_flip/stateful_uniform_full_int/Bitcast:output:02random_flip/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	`
random_flip/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
random_flip/stackPack.random_flip/stateful_uniform_full_int:output:0random_flip/zeros_like:output:0*
N*
T0	*
_output_shapes

:p
random_flip/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!random_flip/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!random_flip/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
random_flip/strided_sliceStridedSlicerandom_flip/stack:output:0(random_flip/strided_slice/stack:output:0*random_flip/strided_slice/stack_1:output:0*random_flip/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
?random_flip/stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:������������
2random_flip/stateless_random_flip_left_right/ShapeShapeHrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::���
@random_flip/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
:random_flip/stateless_random_flip_left_right/strided_sliceStridedSlice;random_flip/stateless_random_flip_left_right/Shape:output:0Irandom_flip/stateless_random_flip_left_right/strided_slice/stack:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_1:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"random_flip/strided_slice:output:0* 
_output_shapes
::�
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Trandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0hrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0lrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/subSubRrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mulMulgrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
Erandom_flip/stateless_random_flip_left_right/stateless_random_uniformAddV2Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������~
<random_flip/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :~
<random_flip/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :~
<random_flip/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
:random_flip/stateless_random_flip_left_right/Reshape/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/1:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/2:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
4random_flip/stateless_random_flip_left_right/ReshapeReshapeIrandom_flip/stateless_random_flip_left_right/stateless_random_uniform:z:0Crandom_flip/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
2random_flip/stateless_random_flip_left_right/RoundRound=random_flip/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:����������
;random_flip/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
6random_flip/stateless_random_flip_left_right/ReverseV2	ReverseV2Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0Drandom_flip/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
0random_flip/stateless_random_flip_left_right/mulMul6random_flip/stateless_random_flip_left_right/Round:y:0?random_flip/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:�����������w
2random_flip/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
0random_flip/stateless_random_flip_left_right/subSub;random_flip/stateless_random_flip_left_right/sub/x:output:06random_flip/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:����������
2random_flip/stateless_random_flip_left_right/mul_1Mul4random_flip/stateless_random_flip_left_right/sub:z:0Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:������������
0random_flip/stateless_random_flip_left_right/addAddV24random_flip/stateless_random_flip_left_right/mul:z:06random_flip/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:�����������w
-random_flip/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:w
-random_flip/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
,random_flip/stateful_uniform_full_int_1/ProdProd6random_flip/stateful_uniform_full_int_1/shape:output:06random_flip/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: p
.random_flip/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
.random_flip/stateful_uniform_full_int_1/Cast_1Cast5random_flip/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
6random_flip/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=random_flip_stateful_uniform_full_int_rngreadandskip_resource7random_flip/stateful_uniform_full_int_1/Cast/x:output:02random_flip/stateful_uniform_full_int_1/Cast_1:y:05^random_flip/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:�
;random_flip/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
=random_flip/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
=random_flip/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
5random_flip/stateful_uniform_full_int_1/strided_sliceStridedSlice>random_flip/stateful_uniform_full_int_1/RngReadAndSkip:value:0Drandom_flip/stateful_uniform_full_int_1/strided_slice/stack:output:0Frandom_flip/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Frandom_flip/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
/random_flip/stateful_uniform_full_int_1/BitcastBitcast>random_flip/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
=random_flip/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
?random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
?random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
7random_flip/stateful_uniform_full_int_1/strided_slice_1StridedSlice>random_flip/stateful_uniform_full_int_1/RngReadAndSkip:value:0Frandom_flip/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Hrandom_flip/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Hrandom_flip/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
1random_flip/stateful_uniform_full_int_1/Bitcast_1Bitcast@random_flip/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0m
+random_flip/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
'random_flip/stateful_uniform_full_int_1StatelessRandomUniformFullIntV26random_flip/stateful_uniform_full_int_1/shape:output:0:random_flip/stateful_uniform_full_int_1/Bitcast_1:output:08random_flip/stateful_uniform_full_int_1/Bitcast:output:04random_flip/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	b
random_flip/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R �
random_flip/stack_1Pack0random_flip/stateful_uniform_full_int_1:output:0!random_flip/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:r
!random_flip/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        t
#random_flip/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#random_flip/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
random_flip/strided_slice_1StridedSlicerandom_flip/stack_1:output:0*random_flip/strided_slice_1/stack:output:0,random_flip/strided_slice_1/stack_1:output:0,random_flip/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
<random_flip/stateless_random_flip_up_down/control_dependencyIdentity4random_flip/stateless_random_flip_left_right/add:z:0*
T0*C
_class9
75loc:@random_flip/stateless_random_flip_left_right/add*1
_output_shapes
:������������
/random_flip/stateless_random_flip_up_down/ShapeShapeErandom_flip/stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::���
=random_flip/stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
?random_flip/stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
?random_flip/stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
7random_flip/stateless_random_flip_up_down/strided_sliceStridedSlice8random_flip/stateless_random_flip_up_down/Shape:output:0Frandom_flip/stateless_random_flip_up_down/strided_slice/stack:output:0Hrandom_flip/stateless_random_flip_up_down/strided_slice/stack_1:output:0Hrandom_flip/stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Hrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/shapePack@random_flip/stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
_random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter$random_flip/strided_slice_1:output:0* 
_output_shapes
::�
_random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
[random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Qrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0erandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0irandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0hrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/subSubOrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Orandom_flip/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/mulMuldrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Jrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
Brandom_flip/stateless_random_flip_up_down/stateless_random_uniformAddV2Jrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Orandom_flip/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������{
9random_flip/stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
9random_flip/stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :{
9random_flip/stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
7random_flip/stateless_random_flip_up_down/Reshape/shapePack@random_flip/stateless_random_flip_up_down/strided_slice:output:0Brandom_flip/stateless_random_flip_up_down/Reshape/shape/1:output:0Brandom_flip/stateless_random_flip_up_down/Reshape/shape/2:output:0Brandom_flip/stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
1random_flip/stateless_random_flip_up_down/ReshapeReshapeFrandom_flip/stateless_random_flip_up_down/stateless_random_uniform:z:0@random_flip/stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
/random_flip/stateless_random_flip_up_down/RoundRound:random_flip/stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:����������
8random_flip/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
3random_flip/stateless_random_flip_up_down/ReverseV2	ReverseV2Erandom_flip/stateless_random_flip_up_down/control_dependency:output:0Arandom_flip/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
-random_flip/stateless_random_flip_up_down/mulMul3random_flip/stateless_random_flip_up_down/Round:y:0<random_flip/stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:�����������t
/random_flip/stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
-random_flip/stateless_random_flip_up_down/subSub8random_flip/stateless_random_flip_up_down/sub/x:output:03random_flip/stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:����������
/random_flip/stateless_random_flip_up_down/mul_1Mul1random_flip/stateless_random_flip_up_down/sub:z:0Erandom_flip/stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:������������
-random_flip/stateless_random_flip_up_down/addAddV21random_flip/stateless_random_flip_up_down/mul:z:03random_flip/stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:������������
random_rotation/ShapeShape1random_flip/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
::��m
#random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
random_rotation/strided_sliceStridedSlicerandom_rotation/Shape:output:0,random_rotation/strided_slice/stack:output:0.random_rotation/strided_slice/stack_1:output:0.random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
%random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������z
'random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������q
'random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
random_rotation/strided_slice_1StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_1/stack:output:00random_rotation/strided_slice_1/stack_1:output:00random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
random_rotation/CastCast(random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: x
%random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������z
'random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������q
'random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
random_rotation/strided_slice_2StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_2/stack:output:00random_rotation/strided_slice_2/stack_1:output:00random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
random_rotation/Cast_1Cast(random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: �
&random_rotation/stateful_uniform/shapePack&random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:i
$random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�i
$random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?p
&random_rotation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
%random_rotation/stateful_uniform/ProdProd/random_rotation/stateful_uniform/shape:output:0/random_rotation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: i
'random_rotation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
'random_rotation/stateful_uniform/Cast_1Cast.random_rotation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
/random_rotation/stateful_uniform/RngReadAndSkipRngReadAndSkip8random_rotation_stateful_uniform_rngreadandskip_resource0random_rotation/stateful_uniform/Cast/x:output:0+random_rotation/stateful_uniform/Cast_1:y:0*
_output_shapes
:~
4random_rotation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6random_rotation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6random_rotation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.random_rotation/stateful_uniform/strided_sliceStridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0=random_rotation/stateful_uniform/strided_slice/stack:output:0?random_rotation/stateful_uniform/strided_slice/stack_1:output:0?random_rotation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
(random_rotation/stateful_uniform/BitcastBitcast7random_rotation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
6random_rotation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
8random_rotation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8random_rotation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0random_rotation/stateful_uniform/strided_slice_1StridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0?random_rotation/stateful_uniform/strided_slice_1/stack:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_1:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
*random_rotation/stateful_uniform/Bitcast_1Bitcast9random_rotation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
=random_rotation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
9random_rotation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2/random_rotation/stateful_uniform/shape:output:03random_rotation/stateful_uniform/Bitcast_1:output:01random_rotation/stateful_uniform/Bitcast:output:0Frandom_rotation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
$random_rotation/stateful_uniform/subSub-random_rotation/stateful_uniform/max:output:0-random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: �
$random_rotation/stateful_uniform/mulMulBrandom_rotation/stateful_uniform/StatelessRandomUniformV2:output:0(random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
 random_rotation/stateful_uniformAddV2(random_rotation/stateful_uniform/mul:z:0-random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������j
%random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#random_rotation/rotation_matrix/subSubrandom_rotation/Cast_1:y:0.random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ~
#random_rotation/rotation_matrix/CosCos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������l
'random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%random_rotation/rotation_matrix/sub_1Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: �
#random_rotation/rotation_matrix/mulMul'random_rotation/rotation_matrix/Cos:y:0)random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:���������~
#random_rotation/rotation_matrix/SinSin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������l
'random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%random_rotation/rotation_matrix/sub_2Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: �
%random_rotation/rotation_matrix/mul_1Mul'random_rotation/rotation_matrix/Sin:y:0)random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:����������
%random_rotation/rotation_matrix/sub_3Sub'random_rotation/rotation_matrix/mul:z:0)random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:����������
%random_rotation/rotation_matrix/sub_4Sub'random_rotation/rotation_matrix/sub:z:0)random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������n
)random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
'random_rotation/rotation_matrix/truedivRealDiv)random_rotation/rotation_matrix/sub_4:z:02random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������l
'random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%random_rotation/rotation_matrix/sub_5Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: �
%random_rotation/rotation_matrix/Sin_1Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������l
'random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%random_rotation/rotation_matrix/sub_6Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
%random_rotation/rotation_matrix/mul_2Mul)random_rotation/rotation_matrix/Sin_1:y:0)random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:����������
%random_rotation/rotation_matrix/Cos_1Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������l
'random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%random_rotation/rotation_matrix/sub_7Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
%random_rotation/rotation_matrix/mul_3Mul)random_rotation/rotation_matrix/Cos_1:y:0)random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
#random_rotation/rotation_matrix/addAddV2)random_rotation/rotation_matrix/mul_2:z:0)random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:����������
%random_rotation/rotation_matrix/sub_8Sub)random_rotation/rotation_matrix/sub_5:z:0'random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������p
+random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
)random_rotation/rotation_matrix/truediv_1RealDiv)random_rotation/rotation_matrix/sub_8:z:04random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:����������
%random_rotation/rotation_matrix/ShapeShape$random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
::��}
3random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-random_rotation/rotation_matrix/strided_sliceStridedSlice.random_rotation/rotation_matrix/Shape:output:0<random_rotation/rotation_matrix/strided_slice/stack:output:0>random_rotation/rotation_matrix/strided_slice/stack_1:output:0>random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
%random_rotation/rotation_matrix/Cos_2Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
5random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
/random_rotation/rotation_matrix/strided_slice_1StridedSlice)random_rotation/rotation_matrix/Cos_2:y:0>random_rotation/rotation_matrix/strided_slice_1/stack:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
%random_rotation/rotation_matrix/Sin_2Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
5random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
/random_rotation/rotation_matrix/strided_slice_2StridedSlice)random_rotation/rotation_matrix/Sin_2:y:0>random_rotation/rotation_matrix/strided_slice_2/stack:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
#random_rotation/rotation_matrix/NegNeg8random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:����������
5random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
/random_rotation/rotation_matrix/strided_slice_3StridedSlice+random_rotation/rotation_matrix/truediv:z:0>random_rotation/rotation_matrix/strided_slice_3/stack:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
%random_rotation/rotation_matrix/Sin_3Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
5random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
/random_rotation/rotation_matrix/strided_slice_4StridedSlice)random_rotation/rotation_matrix/Sin_3:y:0>random_rotation/rotation_matrix/strided_slice_4/stack:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
%random_rotation/rotation_matrix/Cos_3Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
5random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
/random_rotation/rotation_matrix/strided_slice_5StridedSlice)random_rotation/rotation_matrix/Cos_3:y:0>random_rotation/rotation_matrix/strided_slice_5/stack:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
5random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
/random_rotation/rotation_matrix/strided_slice_6StridedSlice-random_rotation/rotation_matrix/truediv_1:z:0>random_rotation/rotation_matrix/strided_slice_6/stack:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskp
.random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
,random_rotation/rotation_matrix/zeros/packedPack6random_rotation/rotation_matrix/strided_slice:output:07random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:p
+random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%random_rotation/rotation_matrix/zerosFill5random_rotation/rotation_matrix/zeros/packed:output:04random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������m
+random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
&random_rotation/rotation_matrix/concatConcatV28random_rotation/rotation_matrix/strided_slice_1:output:0'random_rotation/rotation_matrix/Neg:y:08random_rotation/rotation_matrix/strided_slice_3:output:08random_rotation/rotation_matrix/strided_slice_4:output:08random_rotation/rotation_matrix/strided_slice_5:output:08random_rotation/rotation_matrix/strided_slice_6:output:0.random_rotation/rotation_matrix/zeros:output:04random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
random_rotation/transform/ShapeShape1random_flip/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
::��w
-random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:y
/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'random_rotation/transform/strided_sliceStridedSlice(random_rotation/transform/Shape:output:06random_rotation/transform/strided_slice/stack:output:08random_rotation/transform/strided_slice/stack_1:output:08random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:i
$random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
4random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV31random_flip/stateless_random_flip_up_down/add:z:0/random_rotation/rotation_matrix/concat:output:00random_rotation/transform/strided_slice:output:0-random_rotation/transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentityIrandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp5^random_flip/stateful_uniform_full_int/RngReadAndSkip7^random_flip/stateful_uniform_full_int_1/RngReadAndSkip0^random_rotation/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 2l
4random_flip/stateful_uniform_full_int/RngReadAndSkip4random_flip/stateful_uniform_full_int/RngReadAndSkip2p
6random_flip/stateful_uniform_full_int_1/RngReadAndSkip6random_flip/stateful_uniform_full_int_1/RngReadAndSkip2b
/random_rotation/stateful_uniform/RngReadAndSkip/random_rotation/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
#__inference_signature_wrapper_24034
sequential_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	�@

unknown_12:@

unknown_13:@

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_22969o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_namesequential_input
�
K
/__inference_max_pooling2d_5_layer_call_fn_24777

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_23376�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_24812

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_23424

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
,__inference_sequential_3_layer_call_fn_23829
sequential_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	�@

unknown_12:@

unknown_13:@

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_23794o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_namesequential_input
�
�
C__inference_conv2d_8_layer_call_and_return_conditional_losses_24832

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������<<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������<<@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������>>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������>>@
 
_user_specified_nameinputs
�
N
*__inference_sequential_layer_call_fn_23010
resizing_input
identity�
PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_23007j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:a ]
1
_output_shapes
:�����������
(
_user_specified_nameresizing_input
��
�#
!__inference__traced_restore_25805
file_prefix:
 assignvariableop_conv2d_6_kernel: .
 assignvariableop_1_conv2d_6_bias: <
"assignvariableop_2_conv2d_7_kernel: @.
 assignvariableop_3_conv2d_7_bias:@<
"assignvariableop_4_conv2d_8_kernel:@@.
 assignvariableop_5_conv2d_8_bias:@<
"assignvariableop_6_conv2d_9_kernel:@@.
 assignvariableop_7_conv2d_9_bias:@=
#assignvariableop_8_conv2d_10_kernel:@@/
!assignvariableop_9_conv2d_10_bias:@>
$assignvariableop_10_conv2d_11_kernel:@@0
"assignvariableop_11_conv2d_11_bias:@5
"assignvariableop_12_dense_2_kernel:	�@.
 assignvariableop_13_dense_2_bias:@4
"assignvariableop_14_dense_3_kernel:@.
 assignvariableop_15_dense_3_bias:'
assignvariableop_16_iteration:	 +
!assignvariableop_17_learning_rate: D
*assignvariableop_18_adam_m_conv2d_6_kernel: D
*assignvariableop_19_adam_v_conv2d_6_kernel: 6
(assignvariableop_20_adam_m_conv2d_6_bias: 6
(assignvariableop_21_adam_v_conv2d_6_bias: D
*assignvariableop_22_adam_m_conv2d_7_kernel: @D
*assignvariableop_23_adam_v_conv2d_7_kernel: @6
(assignvariableop_24_adam_m_conv2d_7_bias:@6
(assignvariableop_25_adam_v_conv2d_7_bias:@D
*assignvariableop_26_adam_m_conv2d_8_kernel:@@D
*assignvariableop_27_adam_v_conv2d_8_kernel:@@6
(assignvariableop_28_adam_m_conv2d_8_bias:@6
(assignvariableop_29_adam_v_conv2d_8_bias:@D
*assignvariableop_30_adam_m_conv2d_9_kernel:@@D
*assignvariableop_31_adam_v_conv2d_9_kernel:@@6
(assignvariableop_32_adam_m_conv2d_9_bias:@6
(assignvariableop_33_adam_v_conv2d_9_bias:@E
+assignvariableop_34_adam_m_conv2d_10_kernel:@@E
+assignvariableop_35_adam_v_conv2d_10_kernel:@@7
)assignvariableop_36_adam_m_conv2d_10_bias:@7
)assignvariableop_37_adam_v_conv2d_10_bias:@E
+assignvariableop_38_adam_m_conv2d_11_kernel:@@E
+assignvariableop_39_adam_v_conv2d_11_kernel:@@7
)assignvariableop_40_adam_m_conv2d_11_bias:@7
)assignvariableop_41_adam_v_conv2d_11_bias:@<
)assignvariableop_42_adam_m_dense_2_kernel:	�@<
)assignvariableop_43_adam_v_dense_2_kernel:	�@5
'assignvariableop_44_adam_m_dense_2_bias:@5
'assignvariableop_45_adam_v_dense_2_bias:@;
)assignvariableop_46_adam_m_dense_3_kernel:@;
)assignvariableop_47_adam_v_dense_3_kernel:@5
'assignvariableop_48_adam_m_dense_3_bias:5
'assignvariableop_49_adam_v_dense_3_bias:%
assignvariableop_50_total_1: %
assignvariableop_51_count_1: #
assignvariableop_52_total: #
assignvariableop_53_count: 6
(assignvariableop_54_random_flip_statevar:	:
,assignvariableop_55_random_rotation_statevar:	
identity_57��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*�
value�B�9B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*�
value|Bz9B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::*G
dtypes=
;29			[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp assignvariableop_conv2d_6_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_6_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_7_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_7_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_8_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_8_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_9_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_9_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_10_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_10_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_11_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_11_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_2_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_2_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_3_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_3_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_iterationIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp!assignvariableop_17_learning_rateIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_m_conv2d_6_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_v_conv2d_6_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_m_conv2d_6_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_v_conv2d_6_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_m_conv2d_7_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_v_conv2d_7_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_m_conv2d_7_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_v_conv2d_7_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_m_conv2d_8_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_v_conv2d_8_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_m_conv2d_8_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_v_conv2d_8_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_m_conv2d_9_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_v_conv2d_9_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_m_conv2d_9_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_v_conv2d_9_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_m_conv2d_10_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_v_conv2d_10_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_m_conv2d_10_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_v_conv2d_10_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_m_conv2d_11_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_v_conv2d_11_kernelIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_m_conv2d_11_biasIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_v_conv2d_11_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_m_dense_2_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_v_dense_2_kernelIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp'assignvariableop_44_adam_m_dense_2_biasIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp'assignvariableop_45_adam_v_dense_2_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_m_dense_3_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_v_dense_3_kernelIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_m_dense_3_biasIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp'assignvariableop_49_adam_v_dense_3_biasIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOpassignvariableop_50_total_1Identity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOpassignvariableop_51_count_1Identity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOpassignvariableop_52_totalIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOpassignvariableop_53_countIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp(assignvariableop_54_random_flip_statevarIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp,assignvariableop_55_random_rotation_statevarIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �

Identity_56Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_57IdentityIdentity_56:output:0^NoOp_1*
T0*
_output_shapes
: �

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_57Identity_57:output:0*�
_input_shapest
r: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_55AssignVariableOp_552(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�

�
B__inference_dense_3_layer_call_and_return_conditional_losses_23583

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
{
+__inference_random_flip_layer_call_fn_25004

inputs
unknown:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_23158y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
c
G__inference_sequential_1_layer_call_and_return_conditional_losses_24752

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
f
J__inference_random_rotation_layer_call_and_return_conditional_losses_25258

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
B__inference_dense_3_layer_call_and_return_conditional_losses_24973

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
D__inference_conv2d_11_layer_call_and_return_conditional_losses_23541

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_6_layer_call_fn_24807

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_23388�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_6_layer_call_and_return_conditional_losses_23451

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
H
,__inference_sequential_1_layer_call_fn_24523

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_23327j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_11_layer_call_and_return_conditional_losses_24922

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
_
C__inference_resizing_layer_call_and_return_conditional_losses_24984

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
(__inference_conv2d_6_layer_call_fn_24761

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_23451y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:����������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�D
�
G__inference_sequential_3_layer_call_and_return_conditional_losses_23590
sequential_input 
sequential_1_23435:	 
sequential_1_23437:	(
conv2d_6_23452: 
conv2d_6_23454: (
conv2d_7_23470: @
conv2d_7_23472:@(
conv2d_8_23488:@@
conv2d_8_23490:@(
conv2d_9_23506:@@
conv2d_9_23508:@)
conv2d_10_23524:@@
conv2d_10_23526:@)
conv2d_11_23542:@@
conv2d_11_23544:@ 
dense_2_23567:	�@
dense_2_23569:@
dense_3_23584:@
dense_3_23586:
identity��!conv2d_10/StatefulPartitionedCall�!conv2d_11/StatefulPartitionedCall� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall� conv2d_9/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�$sequential_1/StatefulPartitionedCall�
sequential/PartitionedCallPartitionedCallsequential_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_23007�
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall#sequential/PartitionedCall:output:0sequential_1_23435sequential_1_23437*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_23312�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall-sequential_1/StatefulPartitionedCall:output:0conv2d_6_23452conv2d_6_23454*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_23451�
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_23376�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_7_23470conv2d_7_23472*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_23469�
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_23388�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_8_23488conv2d_8_23490*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_23487�
max_pooling2d_7/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_23400�
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_9_23506conv2d_9_23508*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_23505�
max_pooling2d_8/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_23412�
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_10_23524conv2d_10_23526*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_23523�
max_pooling2d_9/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_23424�
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_11_23542conv2d_11_23544*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_23541�
flatten_1/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_23553�
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_23567dense_2_23569*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_23566�
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_23584dense_3_23586*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_23583w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_namesequential_input
�
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_24933

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
C__inference_conv2d_7_layer_call_and_return_conditional_losses_23469

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������}}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������}}@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�C
�
G__inference_sequential_3_layer_call_and_return_conditional_losses_23701

inputs 
sequential_1_23649:	 
sequential_1_23651:	(
conv2d_6_23654: 
conv2d_6_23656: (
conv2d_7_23660: @
conv2d_7_23662:@(
conv2d_8_23666:@@
conv2d_8_23668:@(
conv2d_9_23672:@@
conv2d_9_23674:@)
conv2d_10_23678:@@
conv2d_10_23680:@)
conv2d_11_23684:@@
conv2d_11_23686:@ 
dense_2_23690:	�@
dense_2_23692:@
dense_3_23695:@
dense_3_23697:
identity��!conv2d_10/StatefulPartitionedCall�!conv2d_11/StatefulPartitionedCall� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall� conv2d_9/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�$sequential_1/StatefulPartitionedCall�
sequential/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_23007�
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall#sequential/PartitionedCall:output:0sequential_1_23649sequential_1_23651*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_23312�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall-sequential_1/StatefulPartitionedCall:output:0conv2d_6_23654conv2d_6_23656*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_23451�
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_23376�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_7_23660conv2d_7_23662*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_23469�
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_23388�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_8_23666conv2d_8_23668*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_23487�
max_pooling2d_7/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_23400�
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_9_23672conv2d_9_23674*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_23505�
max_pooling2d_8/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_23412�
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_10_23678conv2d_10_23680*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_23523�
max_pooling2d_9/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_23424�
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_11_23684conv2d_11_23686*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_23541�
flatten_1/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_23553�
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_23690dense_2_23692*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_23566�
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_23695dense_3_23697*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_23583w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_8_layer_call_and_return_conditional_losses_23487

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������<<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������<<@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������>>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������>>@
 
_user_specified_nameinputs
�	
a
E__inference_sequential_layer_call_and_return_conditional_losses_24499

inputs
identitye
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
resizing/resize/ResizeBilinearResizeBilinearinputsresizing/resize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(U
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:������������
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:�����������c
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
N
*__inference_sequential_layer_call_fn_23021
resizing_input
identity�
PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_23018j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:a ]
1
_output_shapes
:�����������
(
_user_specified_nameresizing_input
�
D
(__inference_resizing_layer_call_fn_24978

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_22979j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
c
G__inference_sequential_1_layer_call_and_return_conditional_losses_23327

inputs
identity�
random_flip/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_23291�
random_rotation/PartitionedCallPartitionedCall$random_flip/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_23296z
IdentityIdentity(random_rotation/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
G__inference_sequential_3_layer_call_and_return_conditional_losses_24406

inputsX
Jsequential_1_random_flip_stateful_uniform_full_int_rngreadandskip_resource:	S
Esequential_1_random_rotation_stateful_uniform_rngreadandskip_resource:	A
'conv2d_6_conv2d_readvariableop_resource: 6
(conv2d_6_biasadd_readvariableop_resource: A
'conv2d_7_conv2d_readvariableop_resource: @6
(conv2d_7_biasadd_readvariableop_resource:@A
'conv2d_8_conv2d_readvariableop_resource:@@6
(conv2d_8_biasadd_readvariableop_resource:@A
'conv2d_9_conv2d_readvariableop_resource:@@6
(conv2d_9_biasadd_readvariableop_resource:@B
(conv2d_10_conv2d_readvariableop_resource:@@7
)conv2d_10_biasadd_readvariableop_resource:@B
(conv2d_11_conv2d_readvariableop_resource:@@7
)conv2d_11_biasadd_readvariableop_resource:@9
&dense_2_matmul_readvariableop_resource:	�@5
'dense_2_biasadd_readvariableop_resource:@8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identity�� conv2d_10/BiasAdd/ReadVariableOp�conv2d_10/Conv2D/ReadVariableOp� conv2d_11/BiasAdd/ReadVariableOp�conv2d_11/Conv2D/ReadVariableOp�conv2d_6/BiasAdd/ReadVariableOp�conv2d_6/Conv2D/ReadVariableOp�conv2d_7/BiasAdd/ReadVariableOp�conv2d_7/Conv2D/ReadVariableOp�conv2d_8/BiasAdd/ReadVariableOp�conv2d_8/Conv2D/ReadVariableOp�conv2d_9/BiasAdd/ReadVariableOp�conv2d_9/Conv2D/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOp�Asequential_1/random_flip/stateful_uniform_full_int/RngReadAndSkip�Csequential_1/random_flip/stateful_uniform_full_int_1/RngReadAndSkip�<sequential_1/random_rotation/stateful_uniform/RngReadAndSkipp
sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
)sequential/resizing/resize/ResizeBilinearResizeBilinearinputs(sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(`
sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;b
sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential/rescaling/mulMul:sequential/resizing/resize/ResizeBilinear:resized_images:0$sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:������������
sequential/rescaling/addAddV2sequential/rescaling/mul:z:0&sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:������������
8sequential_1/random_flip/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
8sequential_1/random_flip/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
7sequential_1/random_flip/stateful_uniform_full_int/ProdProdAsequential_1/random_flip/stateful_uniform_full_int/shape:output:0Asequential_1/random_flip/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: {
9sequential_1/random_flip/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
9sequential_1/random_flip/stateful_uniform_full_int/Cast_1Cast@sequential_1/random_flip/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Asequential_1/random_flip/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipJsequential_1_random_flip_stateful_uniform_full_int_rngreadandskip_resourceBsequential_1/random_flip/stateful_uniform_full_int/Cast/x:output:0=sequential_1/random_flip/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
Fsequential_1/random_flip/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Hsequential_1/random_flip/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Hsequential_1/random_flip/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
@sequential_1/random_flip/stateful_uniform_full_int/strided_sliceStridedSliceIsequential_1/random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Osequential_1/random_flip/stateful_uniform_full_int/strided_slice/stack:output:0Qsequential_1/random_flip/stateful_uniform_full_int/strided_slice/stack_1:output:0Qsequential_1/random_flip/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
:sequential_1/random_flip/stateful_uniform_full_int/BitcastBitcastIsequential_1/random_flip/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Hsequential_1/random_flip/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Jsequential_1/random_flip/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Jsequential_1/random_flip/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Bsequential_1/random_flip/stateful_uniform_full_int/strided_slice_1StridedSliceIsequential_1/random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Qsequential_1/random_flip/stateful_uniform_full_int/strided_slice_1/stack:output:0Ssequential_1/random_flip/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Ssequential_1/random_flip/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
<sequential_1/random_flip/stateful_uniform_full_int/Bitcast_1BitcastKsequential_1/random_flip/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0x
6sequential_1/random_flip/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
2sequential_1/random_flip/stateful_uniform_full_intStatelessRandomUniformFullIntV2Asequential_1/random_flip/stateful_uniform_full_int/shape:output:0Esequential_1/random_flip/stateful_uniform_full_int/Bitcast_1:output:0Csequential_1/random_flip/stateful_uniform_full_int/Bitcast:output:0?sequential_1/random_flip/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	m
#sequential_1/random_flip/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
sequential_1/random_flip/stackPack;sequential_1/random_flip/stateful_uniform_full_int:output:0,sequential_1/random_flip/zeros_like:output:0*
N*
T0	*
_output_shapes

:}
,sequential_1/random_flip/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.sequential_1/random_flip/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.sequential_1/random_flip/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&sequential_1/random_flip/strided_sliceStridedSlice'sequential_1/random_flip/stack:output:05sequential_1/random_flip/strided_slice/stack:output:07sequential_1/random_flip/strided_slice/stack_1:output:07sequential_1/random_flip/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Lsequential_1/random_flip/stateless_random_flip_left_right/control_dependencyIdentitysequential/rescaling/add:z:0*
T0*+
_class!
loc:@sequential/rescaling/add*1
_output_shapes
:������������
?sequential_1/random_flip/stateless_random_flip_left_right/ShapeShapeUsequential_1/random_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::���
Msequential_1/random_flip/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Osequential_1/random_flip/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Osequential_1/random_flip/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Gsequential_1/random_flip/stateless_random_flip_left_right/strided_sliceStridedSliceHsequential_1/random_flip/stateless_random_flip_left_right/Shape:output:0Vsequential_1/random_flip/stateless_random_flip_left_right/strided_slice/stack:output:0Xsequential_1/random_flip/stateless_random_flip_left_right/strided_slice/stack_1:output:0Xsequential_1/random_flip/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Xsequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/shapePackPsequential_1/random_flip/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Vsequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Vsequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
osequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter/sequential_1/random_flip/strided_slice:output:0* 
_output_shapes
::�
osequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
ksequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2asequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0usequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0ysequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0xsequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
Vsequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/subSub_sequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/max:output:0_sequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Vsequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/mulMultsequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Zsequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
Rsequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniformAddV2Zsequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0_sequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:����������
Isequential_1/random_flip/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
Isequential_1/random_flip/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Isequential_1/random_flip/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
Gsequential_1/random_flip/stateless_random_flip_left_right/Reshape/shapePackPsequential_1/random_flip/stateless_random_flip_left_right/strided_slice:output:0Rsequential_1/random_flip/stateless_random_flip_left_right/Reshape/shape/1:output:0Rsequential_1/random_flip/stateless_random_flip_left_right/Reshape/shape/2:output:0Rsequential_1/random_flip/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
Asequential_1/random_flip/stateless_random_flip_left_right/ReshapeReshapeVsequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform:z:0Psequential_1/random_flip/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
?sequential_1/random_flip/stateless_random_flip_left_right/RoundRoundJsequential_1/random_flip/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:����������
Hsequential_1/random_flip/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
Csequential_1/random_flip/stateless_random_flip_left_right/ReverseV2	ReverseV2Usequential_1/random_flip/stateless_random_flip_left_right/control_dependency:output:0Qsequential_1/random_flip/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
=sequential_1/random_flip/stateless_random_flip_left_right/mulMulCsequential_1/random_flip/stateless_random_flip_left_right/Round:y:0Lsequential_1/random_flip/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:������������
?sequential_1/random_flip/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
=sequential_1/random_flip/stateless_random_flip_left_right/subSubHsequential_1/random_flip/stateless_random_flip_left_right/sub/x:output:0Csequential_1/random_flip/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:����������
?sequential_1/random_flip/stateless_random_flip_left_right/mul_1MulAsequential_1/random_flip/stateless_random_flip_left_right/sub:z:0Usequential_1/random_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:������������
=sequential_1/random_flip/stateless_random_flip_left_right/addAddV2Asequential_1/random_flip/stateless_random_flip_left_right/mul:z:0Csequential_1/random_flip/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:������������
:sequential_1/random_flip/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
:sequential_1/random_flip/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
9sequential_1/random_flip/stateful_uniform_full_int_1/ProdProdCsequential_1/random_flip/stateful_uniform_full_int_1/shape:output:0Csequential_1/random_flip/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: }
;sequential_1/random_flip/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
;sequential_1/random_flip/stateful_uniform_full_int_1/Cast_1CastBsequential_1/random_flip/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Csequential_1/random_flip/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipJsequential_1_random_flip_stateful_uniform_full_int_rngreadandskip_resourceDsequential_1/random_flip/stateful_uniform_full_int_1/Cast/x:output:0?sequential_1/random_flip/stateful_uniform_full_int_1/Cast_1:y:0B^sequential_1/random_flip/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:�
Hsequential_1/random_flip/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Jsequential_1/random_flip/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Jsequential_1/random_flip/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Bsequential_1/random_flip/stateful_uniform_full_int_1/strided_sliceStridedSliceKsequential_1/random_flip/stateful_uniform_full_int_1/RngReadAndSkip:value:0Qsequential_1/random_flip/stateful_uniform_full_int_1/strided_slice/stack:output:0Ssequential_1/random_flip/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Ssequential_1/random_flip/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
<sequential_1/random_flip/stateful_uniform_full_int_1/BitcastBitcastKsequential_1/random_flip/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Jsequential_1/random_flip/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Lsequential_1/random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Lsequential_1/random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Dsequential_1/random_flip/stateful_uniform_full_int_1/strided_slice_1StridedSliceKsequential_1/random_flip/stateful_uniform_full_int_1/RngReadAndSkip:value:0Ssequential_1/random_flip/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Usequential_1/random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Usequential_1/random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
>sequential_1/random_flip/stateful_uniform_full_int_1/Bitcast_1BitcastMsequential_1/random_flip/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0z
8sequential_1/random_flip/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
4sequential_1/random_flip/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Csequential_1/random_flip/stateful_uniform_full_int_1/shape:output:0Gsequential_1/random_flip/stateful_uniform_full_int_1/Bitcast_1:output:0Esequential_1/random_flip/stateful_uniform_full_int_1/Bitcast:output:0Asequential_1/random_flip/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	o
%sequential_1/random_flip/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R �
 sequential_1/random_flip/stack_1Pack=sequential_1/random_flip/stateful_uniform_full_int_1:output:0.sequential_1/random_flip/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:
.sequential_1/random_flip/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
0sequential_1/random_flip/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
0sequential_1/random_flip/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(sequential_1/random_flip/strided_slice_1StridedSlice)sequential_1/random_flip/stack_1:output:07sequential_1/random_flip/strided_slice_1/stack:output:09sequential_1/random_flip/strided_slice_1/stack_1:output:09sequential_1/random_flip/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Isequential_1/random_flip/stateless_random_flip_up_down/control_dependencyIdentityAsequential_1/random_flip/stateless_random_flip_left_right/add:z:0*
T0*P
_classF
DBloc:@sequential_1/random_flip/stateless_random_flip_left_right/add*1
_output_shapes
:������������
<sequential_1/random_flip/stateless_random_flip_up_down/ShapeShapeRsequential_1/random_flip/stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::���
Jsequential_1/random_flip/stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Lsequential_1/random_flip/stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Lsequential_1/random_flip/stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Dsequential_1/random_flip/stateless_random_flip_up_down/strided_sliceStridedSliceEsequential_1/random_flip/stateless_random_flip_up_down/Shape:output:0Ssequential_1/random_flip/stateless_random_flip_up_down/strided_slice/stack:output:0Usequential_1/random_flip/stateless_random_flip_up_down/strided_slice/stack_1:output:0Usequential_1/random_flip/stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Usequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/shapePackMsequential_1/random_flip/stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Ssequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Ssequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lsequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter1sequential_1/random_flip/strided_slice_1:output:0* 
_output_shapes
::�
lsequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
hsequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2^sequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0rsequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0vsequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0usequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
Ssequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/subSub\sequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/max:output:0\sequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Ssequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/mulMulqsequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Wsequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
Osequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniformAddV2Wsequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0\sequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:����������
Fsequential_1/random_flip/stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
Fsequential_1/random_flip/stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Fsequential_1/random_flip/stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
Dsequential_1/random_flip/stateless_random_flip_up_down/Reshape/shapePackMsequential_1/random_flip/stateless_random_flip_up_down/strided_slice:output:0Osequential_1/random_flip/stateless_random_flip_up_down/Reshape/shape/1:output:0Osequential_1/random_flip/stateless_random_flip_up_down/Reshape/shape/2:output:0Osequential_1/random_flip/stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
>sequential_1/random_flip/stateless_random_flip_up_down/ReshapeReshapeSsequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform:z:0Msequential_1/random_flip/stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
<sequential_1/random_flip/stateless_random_flip_up_down/RoundRoundGsequential_1/random_flip/stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:����������
Esequential_1/random_flip/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
@sequential_1/random_flip/stateless_random_flip_up_down/ReverseV2	ReverseV2Rsequential_1/random_flip/stateless_random_flip_up_down/control_dependency:output:0Nsequential_1/random_flip/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
:sequential_1/random_flip/stateless_random_flip_up_down/mulMul@sequential_1/random_flip/stateless_random_flip_up_down/Round:y:0Isequential_1/random_flip/stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:������������
<sequential_1/random_flip/stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
:sequential_1/random_flip/stateless_random_flip_up_down/subSubEsequential_1/random_flip/stateless_random_flip_up_down/sub/x:output:0@sequential_1/random_flip/stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:����������
<sequential_1/random_flip/stateless_random_flip_up_down/mul_1Mul>sequential_1/random_flip/stateless_random_flip_up_down/sub:z:0Rsequential_1/random_flip/stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:������������
:sequential_1/random_flip/stateless_random_flip_up_down/addAddV2>sequential_1/random_flip/stateless_random_flip_up_down/mul:z:0@sequential_1/random_flip/stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:������������
"sequential_1/random_rotation/ShapeShape>sequential_1/random_flip/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
::��z
0sequential_1/random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_1/random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_1/random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*sequential_1/random_rotation/strided_sliceStridedSlice+sequential_1/random_rotation/Shape:output:09sequential_1/random_rotation/strided_slice/stack:output:0;sequential_1/random_rotation/strided_slice/stack_1:output:0;sequential_1/random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
2sequential_1/random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
4sequential_1/random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������~
4sequential_1/random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,sequential_1/random_rotation/strided_slice_1StridedSlice+sequential_1/random_rotation/Shape:output:0;sequential_1/random_rotation/strided_slice_1/stack:output:0=sequential_1/random_rotation/strided_slice_1/stack_1:output:0=sequential_1/random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
!sequential_1/random_rotation/CastCast5sequential_1/random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: �
2sequential_1/random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
4sequential_1/random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������~
4sequential_1/random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,sequential_1/random_rotation/strided_slice_2StridedSlice+sequential_1/random_rotation/Shape:output:0;sequential_1/random_rotation/strided_slice_2/stack:output:0=sequential_1/random_rotation/strided_slice_2/stack_1:output:0=sequential_1/random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
#sequential_1/random_rotation/Cast_1Cast5sequential_1/random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: �
3sequential_1/random_rotation/stateful_uniform/shapePack3sequential_1/random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:v
1sequential_1/random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�v
1sequential_1/random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?}
3sequential_1/random_rotation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
2sequential_1/random_rotation/stateful_uniform/ProdProd<sequential_1/random_rotation/stateful_uniform/shape:output:0<sequential_1/random_rotation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: v
4sequential_1/random_rotation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
4sequential_1/random_rotation/stateful_uniform/Cast_1Cast;sequential_1/random_rotation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
<sequential_1/random_rotation/stateful_uniform/RngReadAndSkipRngReadAndSkipEsequential_1_random_rotation_stateful_uniform_rngreadandskip_resource=sequential_1/random_rotation/stateful_uniform/Cast/x:output:08sequential_1/random_rotation/stateful_uniform/Cast_1:y:0*
_output_shapes
:�
Asequential_1/random_rotation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Csequential_1/random_rotation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Csequential_1/random_rotation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
;sequential_1/random_rotation/stateful_uniform/strided_sliceStridedSliceDsequential_1/random_rotation/stateful_uniform/RngReadAndSkip:value:0Jsequential_1/random_rotation/stateful_uniform/strided_slice/stack:output:0Lsequential_1/random_rotation/stateful_uniform/strided_slice/stack_1:output:0Lsequential_1/random_rotation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
5sequential_1/random_rotation/stateful_uniform/BitcastBitcastDsequential_1/random_rotation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Csequential_1/random_rotation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Esequential_1/random_rotation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Esequential_1/random_rotation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
=sequential_1/random_rotation/stateful_uniform/strided_slice_1StridedSliceDsequential_1/random_rotation/stateful_uniform/RngReadAndSkip:value:0Lsequential_1/random_rotation/stateful_uniform/strided_slice_1/stack:output:0Nsequential_1/random_rotation/stateful_uniform/strided_slice_1/stack_1:output:0Nsequential_1/random_rotation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
7sequential_1/random_rotation/stateful_uniform/Bitcast_1BitcastFsequential_1/random_rotation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
Jsequential_1/random_rotation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Fsequential_1/random_rotation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2<sequential_1/random_rotation/stateful_uniform/shape:output:0@sequential_1/random_rotation/stateful_uniform/Bitcast_1:output:0>sequential_1/random_rotation/stateful_uniform/Bitcast:output:0Ssequential_1/random_rotation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
1sequential_1/random_rotation/stateful_uniform/subSub:sequential_1/random_rotation/stateful_uniform/max:output:0:sequential_1/random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: �
1sequential_1/random_rotation/stateful_uniform/mulMulOsequential_1/random_rotation/stateful_uniform/StatelessRandomUniformV2:output:05sequential_1/random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
-sequential_1/random_rotation/stateful_uniformAddV25sequential_1/random_rotation/stateful_uniform/mul:z:0:sequential_1/random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������w
2sequential_1/random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
0sequential_1/random_rotation/rotation_matrix/subSub'sequential_1/random_rotation/Cast_1:y:0;sequential_1/random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: �
0sequential_1/random_rotation/rotation_matrix/CosCos1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������y
4sequential_1/random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
2sequential_1/random_rotation/rotation_matrix/sub_1Sub'sequential_1/random_rotation/Cast_1:y:0=sequential_1/random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: �
0sequential_1/random_rotation/rotation_matrix/mulMul4sequential_1/random_rotation/rotation_matrix/Cos:y:06sequential_1/random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:����������
0sequential_1/random_rotation/rotation_matrix/SinSin1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������y
4sequential_1/random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
2sequential_1/random_rotation/rotation_matrix/sub_2Sub%sequential_1/random_rotation/Cast:y:0=sequential_1/random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: �
2sequential_1/random_rotation/rotation_matrix/mul_1Mul4sequential_1/random_rotation/rotation_matrix/Sin:y:06sequential_1/random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:����������
2sequential_1/random_rotation/rotation_matrix/sub_3Sub4sequential_1/random_rotation/rotation_matrix/mul:z:06sequential_1/random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:����������
2sequential_1/random_rotation/rotation_matrix/sub_4Sub4sequential_1/random_rotation/rotation_matrix/sub:z:06sequential_1/random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������{
6sequential_1/random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
4sequential_1/random_rotation/rotation_matrix/truedivRealDiv6sequential_1/random_rotation/rotation_matrix/sub_4:z:0?sequential_1/random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������y
4sequential_1/random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
2sequential_1/random_rotation/rotation_matrix/sub_5Sub%sequential_1/random_rotation/Cast:y:0=sequential_1/random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: �
2sequential_1/random_rotation/rotation_matrix/Sin_1Sin1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������y
4sequential_1/random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
2sequential_1/random_rotation/rotation_matrix/sub_6Sub'sequential_1/random_rotation/Cast_1:y:0=sequential_1/random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
2sequential_1/random_rotation/rotation_matrix/mul_2Mul6sequential_1/random_rotation/rotation_matrix/Sin_1:y:06sequential_1/random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:����������
2sequential_1/random_rotation/rotation_matrix/Cos_1Cos1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������y
4sequential_1/random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
2sequential_1/random_rotation/rotation_matrix/sub_7Sub%sequential_1/random_rotation/Cast:y:0=sequential_1/random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
2sequential_1/random_rotation/rotation_matrix/mul_3Mul6sequential_1/random_rotation/rotation_matrix/Cos_1:y:06sequential_1/random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
0sequential_1/random_rotation/rotation_matrix/addAddV26sequential_1/random_rotation/rotation_matrix/mul_2:z:06sequential_1/random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:����������
2sequential_1/random_rotation/rotation_matrix/sub_8Sub6sequential_1/random_rotation/rotation_matrix/sub_5:z:04sequential_1/random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������}
8sequential_1/random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
6sequential_1/random_rotation/rotation_matrix/truediv_1RealDiv6sequential_1/random_rotation/rotation_matrix/sub_8:z:0Asequential_1/random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:����������
2sequential_1/random_rotation/rotation_matrix/ShapeShape1sequential_1/random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
::���
@sequential_1/random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Bsequential_1/random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Bsequential_1/random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
:sequential_1/random_rotation/rotation_matrix/strided_sliceStridedSlice;sequential_1/random_rotation/rotation_matrix/Shape:output:0Isequential_1/random_rotation/rotation_matrix/strided_slice/stack:output:0Ksequential_1/random_rotation/rotation_matrix/strided_slice/stack_1:output:0Ksequential_1/random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
2sequential_1/random_rotation/rotation_matrix/Cos_2Cos1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
Bsequential_1/random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_1/random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_1/random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
<sequential_1/random_rotation/rotation_matrix/strided_slice_1StridedSlice6sequential_1/random_rotation/rotation_matrix/Cos_2:y:0Ksequential_1/random_rotation/rotation_matrix/strided_slice_1/stack:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
2sequential_1/random_rotation/rotation_matrix/Sin_2Sin1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
Bsequential_1/random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_1/random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_1/random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
<sequential_1/random_rotation/rotation_matrix/strided_slice_2StridedSlice6sequential_1/random_rotation/rotation_matrix/Sin_2:y:0Ksequential_1/random_rotation/rotation_matrix/strided_slice_2/stack:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
0sequential_1/random_rotation/rotation_matrix/NegNegEsequential_1/random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:����������
Bsequential_1/random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_1/random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_1/random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
<sequential_1/random_rotation/rotation_matrix/strided_slice_3StridedSlice8sequential_1/random_rotation/rotation_matrix/truediv:z:0Ksequential_1/random_rotation/rotation_matrix/strided_slice_3/stack:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
2sequential_1/random_rotation/rotation_matrix/Sin_3Sin1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
Bsequential_1/random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_1/random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_1/random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
<sequential_1/random_rotation/rotation_matrix/strided_slice_4StridedSlice6sequential_1/random_rotation/rotation_matrix/Sin_3:y:0Ksequential_1/random_rotation/rotation_matrix/strided_slice_4/stack:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
2sequential_1/random_rotation/rotation_matrix/Cos_3Cos1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
Bsequential_1/random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_1/random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_1/random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
<sequential_1/random_rotation/rotation_matrix/strided_slice_5StridedSlice6sequential_1/random_rotation/rotation_matrix/Cos_3:y:0Ksequential_1/random_rotation/rotation_matrix/strided_slice_5/stack:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
Bsequential_1/random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_1/random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_1/random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
<sequential_1/random_rotation/rotation_matrix/strided_slice_6StridedSlice:sequential_1/random_rotation/rotation_matrix/truediv_1:z:0Ksequential_1/random_rotation/rotation_matrix/strided_slice_6/stack:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask}
;sequential_1/random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
9sequential_1/random_rotation/rotation_matrix/zeros/packedPackCsequential_1/random_rotation/rotation_matrix/strided_slice:output:0Dsequential_1/random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:}
8sequential_1/random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
2sequential_1/random_rotation/rotation_matrix/zerosFillBsequential_1/random_rotation/rotation_matrix/zeros/packed:output:0Asequential_1/random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������z
8sequential_1/random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
3sequential_1/random_rotation/rotation_matrix/concatConcatV2Esequential_1/random_rotation/rotation_matrix/strided_slice_1:output:04sequential_1/random_rotation/rotation_matrix/Neg:y:0Esequential_1/random_rotation/rotation_matrix/strided_slice_3:output:0Esequential_1/random_rotation/rotation_matrix/strided_slice_4:output:0Esequential_1/random_rotation/rotation_matrix/strided_slice_5:output:0Esequential_1/random_rotation/rotation_matrix/strided_slice_6:output:0;sequential_1/random_rotation/rotation_matrix/zeros:output:0Asequential_1/random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
,sequential_1/random_rotation/transform/ShapeShape>sequential_1/random_flip/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
::���
:sequential_1/random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
<sequential_1/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
<sequential_1/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
4sequential_1/random_rotation/transform/strided_sliceStridedSlice5sequential_1/random_rotation/transform/Shape:output:0Csequential_1/random_rotation/transform/strided_slice/stack:output:0Esequential_1/random_rotation/transform/strided_slice/stack_1:output:0Esequential_1/random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:v
1sequential_1/random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Asequential_1/random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3>sequential_1/random_flip/stateless_random_flip_up_down/add:z:0<sequential_1/random_rotation/rotation_matrix/concat:output:0=sequential_1/random_rotation/transform/strided_slice:output:0:sequential_1/random_rotation/transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_6/Conv2DConv2DVsequential_1/random_rotation/transform/ImageProjectiveTransformV3:transformed_images:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
�
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� l
conv2d_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
max_pooling2d_5/MaxPoolMaxPoolconv2d_6/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_7/Conv2DConv2D max_pooling2d_5/MaxPool:output:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@*
paddingVALID*
strides
�
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@j
conv2d_7/ReluReluconv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:���������}}@�
max_pooling2d_6/MaxPoolMaxPoolconv2d_7/Relu:activations:0*/
_output_shapes
:���������>>@*
ksize
*
paddingVALID*
strides
�
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_8/Conv2DConv2D max_pooling2d_6/MaxPool:output:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@*
paddingVALID*
strides
�
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@j
conv2d_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:���������<<@�
max_pooling2d_7/MaxPoolMaxPoolconv2d_8/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_9/Conv2DConv2D max_pooling2d_7/MaxPool:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@j
conv2d_9/ReluReluconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
max_pooling2d_8/MaxPoolMaxPoolconv2d_9/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_10/Conv2DConv2D max_pooling2d_8/MaxPool:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
max_pooling2d_9/MaxPoolMaxPoolconv2d_10/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_11/Conv2DConv2D max_pooling2d_9/MaxPool:output:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:���������@`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
flatten_1/ReshapeReshapeconv2d_11/Relu:activations:0flatten_1/Const:output:0*
T0*(
_output_shapes
:�����������
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@`
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOpB^sequential_1/random_flip/stateful_uniform_full_int/RngReadAndSkipD^sequential_1/random_flip/stateful_uniform_full_int_1/RngReadAndSkip=^sequential_1/random_rotation/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2�
Asequential_1/random_flip/stateful_uniform_full_int/RngReadAndSkipAsequential_1/random_flip/stateful_uniform_full_int/RngReadAndSkip2�
Csequential_1/random_flip/stateful_uniform_full_int_1/RngReadAndSkipCsequential_1/random_flip/stateful_uniform_full_int_1/RngReadAndSkip2|
<sequential_1/random_rotation/stateful_uniform/RngReadAndSkip<sequential_1/random_rotation/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_6_layer_call_and_return_conditional_losses_24772

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_23388

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
a
E__inference_sequential_layer_call_and_return_conditional_losses_23018

inputs
identity�
resizing/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_22979�
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_22989t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�Y
�
G__inference_sequential_3_layer_call_and_return_conditional_losses_24479

inputsA
'conv2d_6_conv2d_readvariableop_resource: 6
(conv2d_6_biasadd_readvariableop_resource: A
'conv2d_7_conv2d_readvariableop_resource: @6
(conv2d_7_biasadd_readvariableop_resource:@A
'conv2d_8_conv2d_readvariableop_resource:@@6
(conv2d_8_biasadd_readvariableop_resource:@A
'conv2d_9_conv2d_readvariableop_resource:@@6
(conv2d_9_biasadd_readvariableop_resource:@B
(conv2d_10_conv2d_readvariableop_resource:@@7
)conv2d_10_biasadd_readvariableop_resource:@B
(conv2d_11_conv2d_readvariableop_resource:@@7
)conv2d_11_biasadd_readvariableop_resource:@9
&dense_2_matmul_readvariableop_resource:	�@5
'dense_2_biasadd_readvariableop_resource:@8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identity�� conv2d_10/BiasAdd/ReadVariableOp�conv2d_10/Conv2D/ReadVariableOp� conv2d_11/BiasAdd/ReadVariableOp�conv2d_11/Conv2D/ReadVariableOp�conv2d_6/BiasAdd/ReadVariableOp�conv2d_6/Conv2D/ReadVariableOp�conv2d_7/BiasAdd/ReadVariableOp�conv2d_7/Conv2D/ReadVariableOp�conv2d_8/BiasAdd/ReadVariableOp�conv2d_8/Conv2D/ReadVariableOp�conv2d_9/BiasAdd/ReadVariableOp�conv2d_9/Conv2D/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOpp
sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
)sequential/resizing/resize/ResizeBilinearResizeBilinearinputs(sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(`
sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;b
sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential/rescaling/mulMul:sequential/resizing/resize/ResizeBilinear:resized_images:0$sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:������������
sequential/rescaling/addAddV2sequential/rescaling/mul:z:0&sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:������������
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_6/Conv2DConv2Dsequential/rescaling/add:z:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
�
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� l
conv2d_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
max_pooling2d_5/MaxPoolMaxPoolconv2d_6/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_7/Conv2DConv2D max_pooling2d_5/MaxPool:output:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@*
paddingVALID*
strides
�
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@j
conv2d_7/ReluReluconv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:���������}}@�
max_pooling2d_6/MaxPoolMaxPoolconv2d_7/Relu:activations:0*/
_output_shapes
:���������>>@*
ksize
*
paddingVALID*
strides
�
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_8/Conv2DConv2D max_pooling2d_6/MaxPool:output:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@*
paddingVALID*
strides
�
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@j
conv2d_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:���������<<@�
max_pooling2d_7/MaxPoolMaxPoolconv2d_8/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_9/Conv2DConv2D max_pooling2d_7/MaxPool:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@j
conv2d_9/ReluReluconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
max_pooling2d_8/MaxPoolMaxPoolconv2d_9/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_10/Conv2DConv2D max_pooling2d_8/MaxPool:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
max_pooling2d_9/MaxPoolMaxPoolconv2d_10/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_11/Conv2DConv2D max_pooling2d_9/MaxPool:output:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:���������@`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
flatten_1/ReshapeReshapeconv2d_11/Relu:activations:0flatten_1/Const:output:0*
T0*(
_output_shapes
:�����������
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@`
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
,__inference_sequential_3_layer_call_fn_23740
sequential_input
unknown:	
	unknown_0:	#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:	�@

unknown_14:@

unknown_15:@

unknown_16:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_23701o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_namesequential_input
�
�
,__inference_sequential_1_layer_call_fn_24518

inputs
unknown:	
	unknown_0:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_23312y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_23376

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
Ñ
�3
__inference__traced_save_25627
file_prefix@
&read_disablecopyonread_conv2d_6_kernel: 4
&read_1_disablecopyonread_conv2d_6_bias: B
(read_2_disablecopyonread_conv2d_7_kernel: @4
&read_3_disablecopyonread_conv2d_7_bias:@B
(read_4_disablecopyonread_conv2d_8_kernel:@@4
&read_5_disablecopyonread_conv2d_8_bias:@B
(read_6_disablecopyonread_conv2d_9_kernel:@@4
&read_7_disablecopyonread_conv2d_9_bias:@C
)read_8_disablecopyonread_conv2d_10_kernel:@@5
'read_9_disablecopyonread_conv2d_10_bias:@D
*read_10_disablecopyonread_conv2d_11_kernel:@@6
(read_11_disablecopyonread_conv2d_11_bias:@;
(read_12_disablecopyonread_dense_2_kernel:	�@4
&read_13_disablecopyonread_dense_2_bias:@:
(read_14_disablecopyonread_dense_3_kernel:@4
&read_15_disablecopyonread_dense_3_bias:-
#read_16_disablecopyonread_iteration:	 1
'read_17_disablecopyonread_learning_rate: J
0read_18_disablecopyonread_adam_m_conv2d_6_kernel: J
0read_19_disablecopyonread_adam_v_conv2d_6_kernel: <
.read_20_disablecopyonread_adam_m_conv2d_6_bias: <
.read_21_disablecopyonread_adam_v_conv2d_6_bias: J
0read_22_disablecopyonread_adam_m_conv2d_7_kernel: @J
0read_23_disablecopyonread_adam_v_conv2d_7_kernel: @<
.read_24_disablecopyonread_adam_m_conv2d_7_bias:@<
.read_25_disablecopyonread_adam_v_conv2d_7_bias:@J
0read_26_disablecopyonread_adam_m_conv2d_8_kernel:@@J
0read_27_disablecopyonread_adam_v_conv2d_8_kernel:@@<
.read_28_disablecopyonread_adam_m_conv2d_8_bias:@<
.read_29_disablecopyonread_adam_v_conv2d_8_bias:@J
0read_30_disablecopyonread_adam_m_conv2d_9_kernel:@@J
0read_31_disablecopyonread_adam_v_conv2d_9_kernel:@@<
.read_32_disablecopyonread_adam_m_conv2d_9_bias:@<
.read_33_disablecopyonread_adam_v_conv2d_9_bias:@K
1read_34_disablecopyonread_adam_m_conv2d_10_kernel:@@K
1read_35_disablecopyonread_adam_v_conv2d_10_kernel:@@=
/read_36_disablecopyonread_adam_m_conv2d_10_bias:@=
/read_37_disablecopyonread_adam_v_conv2d_10_bias:@K
1read_38_disablecopyonread_adam_m_conv2d_11_kernel:@@K
1read_39_disablecopyonread_adam_v_conv2d_11_kernel:@@=
/read_40_disablecopyonread_adam_m_conv2d_11_bias:@=
/read_41_disablecopyonread_adam_v_conv2d_11_bias:@B
/read_42_disablecopyonread_adam_m_dense_2_kernel:	�@B
/read_43_disablecopyonread_adam_v_dense_2_kernel:	�@;
-read_44_disablecopyonread_adam_m_dense_2_bias:@;
-read_45_disablecopyonread_adam_v_dense_2_bias:@A
/read_46_disablecopyonread_adam_m_dense_3_kernel:@A
/read_47_disablecopyonread_adam_v_dense_3_kernel:@;
-read_48_disablecopyonread_adam_m_dense_3_bias:;
-read_49_disablecopyonread_adam_v_dense_3_bias:+
!read_50_disablecopyonread_total_1: +
!read_51_disablecopyonread_count_1: )
read_52_disablecopyonread_total: )
read_53_disablecopyonread_count: <
.read_54_disablecopyonread_random_flip_statevar:	@
2read_55_disablecopyonread_random_rotation_statevar:	
savev2_const
identity_113��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_conv2d_6_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
: z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_conv2d_6_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_conv2d_6_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: |
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_conv2d_7_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
: @z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_conv2d_7_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_conv2d_7_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_4/DisableCopyOnReadDisableCopyOnRead(read_4_disablecopyonread_conv2d_8_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp(read_4_disablecopyonread_conv2d_8_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@z
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_conv2d_8_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_conv2d_8_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_conv2d_9_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_conv2d_9_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_conv2d_9_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_conv2d_9_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@}
Read_8/DisableCopyOnReadDisableCopyOnRead)read_8_disablecopyonread_conv2d_10_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp)read_8_disablecopyonread_conv2d_10_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0v
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@{
Read_9/DisableCopyOnReadDisableCopyOnRead'read_9_disablecopyonread_conv2d_10_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp'read_9_disablecopyonread_conv2d_10_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_10/DisableCopyOnReadDisableCopyOnRead*read_10_disablecopyonread_conv2d_11_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp*read_10_disablecopyonread_conv2d_11_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@}
Read_11/DisableCopyOnReadDisableCopyOnRead(read_11_disablecopyonread_conv2d_11_bias"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp(read_11_disablecopyonread_conv2d_11_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:@}
Read_12/DisableCopyOnReadDisableCopyOnRead(read_12_disablecopyonread_dense_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp(read_12_disablecopyonread_dense_2_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0p
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@f
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@{
Read_13/DisableCopyOnReadDisableCopyOnRead&read_13_disablecopyonread_dense_2_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp&read_13_disablecopyonread_dense_2_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
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
:@}
Read_14/DisableCopyOnReadDisableCopyOnRead(read_14_disablecopyonread_dense_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp(read_14_disablecopyonread_dense_3_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:@{
Read_15/DisableCopyOnReadDisableCopyOnRead&read_15_disablecopyonread_dense_3_bias"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp&read_15_disablecopyonread_dense_3_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_16/DisableCopyOnReadDisableCopyOnRead#read_16_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp#read_16_disablecopyonread_iteration^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_17/DisableCopyOnReadDisableCopyOnRead'read_17_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp'read_17_disablecopyonread_learning_rate^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_18/DisableCopyOnReadDisableCopyOnRead0read_18_disablecopyonread_adam_m_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp0read_18_disablecopyonread_adam_m_conv2d_6_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_19/DisableCopyOnReadDisableCopyOnRead0read_19_disablecopyonread_adam_v_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp0read_19_disablecopyonread_adam_v_conv2d_6_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_20/DisableCopyOnReadDisableCopyOnRead.read_20_disablecopyonread_adam_m_conv2d_6_bias"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp.read_20_disablecopyonread_adam_m_conv2d_6_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_21/DisableCopyOnReadDisableCopyOnRead.read_21_disablecopyonread_adam_v_conv2d_6_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp.read_21_disablecopyonread_adam_v_conv2d_6_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_22/DisableCopyOnReadDisableCopyOnRead0read_22_disablecopyonread_adam_m_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp0read_22_disablecopyonread_adam_m_conv2d_7_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_23/DisableCopyOnReadDisableCopyOnRead0read_23_disablecopyonread_adam_v_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp0read_23_disablecopyonread_adam_v_conv2d_7_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_24/DisableCopyOnReadDisableCopyOnRead.read_24_disablecopyonread_adam_m_conv2d_7_bias"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp.read_24_disablecopyonread_adam_m_conv2d_7_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_25/DisableCopyOnReadDisableCopyOnRead.read_25_disablecopyonread_adam_v_conv2d_7_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp.read_25_disablecopyonread_adam_v_conv2d_7_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_26/DisableCopyOnReadDisableCopyOnRead0read_26_disablecopyonread_adam_m_conv2d_8_kernel"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp0read_26_disablecopyonread_adam_m_conv2d_8_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_27/DisableCopyOnReadDisableCopyOnRead0read_27_disablecopyonread_adam_v_conv2d_8_kernel"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp0read_27_disablecopyonread_adam_v_conv2d_8_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_28/DisableCopyOnReadDisableCopyOnRead.read_28_disablecopyonread_adam_m_conv2d_8_bias"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp.read_28_disablecopyonread_adam_m_conv2d_8_bias^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_29/DisableCopyOnReadDisableCopyOnRead.read_29_disablecopyonread_adam_v_conv2d_8_bias"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp.read_29_disablecopyonread_adam_v_conv2d_8_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_30/DisableCopyOnReadDisableCopyOnRead0read_30_disablecopyonread_adam_m_conv2d_9_kernel"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp0read_30_disablecopyonread_adam_m_conv2d_9_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_31/DisableCopyOnReadDisableCopyOnRead0read_31_disablecopyonread_adam_v_conv2d_9_kernel"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp0read_31_disablecopyonread_adam_v_conv2d_9_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_32/DisableCopyOnReadDisableCopyOnRead.read_32_disablecopyonread_adam_m_conv2d_9_bias"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp.read_32_disablecopyonread_adam_m_conv2d_9_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_33/DisableCopyOnReadDisableCopyOnRead.read_33_disablecopyonread_adam_v_conv2d_9_bias"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp.read_33_disablecopyonread_adam_v_conv2d_9_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_34/DisableCopyOnReadDisableCopyOnRead1read_34_disablecopyonread_adam_m_conv2d_10_kernel"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp1read_34_disablecopyonread_adam_m_conv2d_10_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_35/DisableCopyOnReadDisableCopyOnRead1read_35_disablecopyonread_adam_v_conv2d_10_kernel"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp1read_35_disablecopyonread_adam_v_conv2d_10_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_36/DisableCopyOnReadDisableCopyOnRead/read_36_disablecopyonread_adam_m_conv2d_10_bias"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp/read_36_disablecopyonread_adam_m_conv2d_10_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_37/DisableCopyOnReadDisableCopyOnRead/read_37_disablecopyonread_adam_v_conv2d_10_bias"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp/read_37_disablecopyonread_adam_v_conv2d_10_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_38/DisableCopyOnReadDisableCopyOnRead1read_38_disablecopyonread_adam_m_conv2d_11_kernel"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp1read_38_disablecopyonread_adam_m_conv2d_11_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_39/DisableCopyOnReadDisableCopyOnRead1read_39_disablecopyonread_adam_v_conv2d_11_kernel"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp1read_39_disablecopyonread_adam_v_conv2d_11_kernel^Read_39/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_40/DisableCopyOnReadDisableCopyOnRead/read_40_disablecopyonread_adam_m_conv2d_11_bias"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp/read_40_disablecopyonread_adam_m_conv2d_11_bias^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_41/DisableCopyOnReadDisableCopyOnRead/read_41_disablecopyonread_adam_v_conv2d_11_bias"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp/read_41_disablecopyonread_adam_v_conv2d_11_bias^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_42/DisableCopyOnReadDisableCopyOnRead/read_42_disablecopyonread_adam_m_dense_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp/read_42_disablecopyonread_adam_m_dense_2_kernel^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0p
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@f
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@�
Read_43/DisableCopyOnReadDisableCopyOnRead/read_43_disablecopyonread_adam_v_dense_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp/read_43_disablecopyonread_adam_v_dense_2_kernel^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0p
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@f
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@�
Read_44/DisableCopyOnReadDisableCopyOnRead-read_44_disablecopyonread_adam_m_dense_2_bias"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp-read_44_disablecopyonread_adam_m_dense_2_bias^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_45/DisableCopyOnReadDisableCopyOnRead-read_45_disablecopyonread_adam_v_dense_2_bias"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp-read_45_disablecopyonread_adam_v_dense_2_bias^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_46/DisableCopyOnReadDisableCopyOnRead/read_46_disablecopyonread_adam_m_dense_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp/read_46_disablecopyonread_adam_m_dense_3_kernel^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_47/DisableCopyOnReadDisableCopyOnRead/read_47_disablecopyonread_adam_v_dense_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp/read_47_disablecopyonread_adam_v_dense_3_kernel^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_48/DisableCopyOnReadDisableCopyOnRead-read_48_disablecopyonread_adam_m_dense_3_bias"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp-read_48_disablecopyonread_adam_m_dense_3_bias^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_49/DisableCopyOnReadDisableCopyOnRead-read_49_disablecopyonread_adam_v_dense_3_bias"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp-read_49_disablecopyonread_adam_v_dense_3_bias^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_50/DisableCopyOnReadDisableCopyOnRead!read_50_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp!read_50_disablecopyonread_total_1^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_51/DisableCopyOnReadDisableCopyOnRead!read_51_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp!read_51_disablecopyonread_count_1^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_52/DisableCopyOnReadDisableCopyOnReadread_52_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOpread_52_disablecopyonread_total^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_53/DisableCopyOnReadDisableCopyOnReadread_53_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOpread_53_disablecopyonread_count^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_54/DisableCopyOnReadDisableCopyOnRead.read_54_disablecopyonread_random_flip_statevar"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp.read_54_disablecopyonread_random_flip_statevar^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0	l
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
:c
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0	*
_output_shapes
:�
Read_55/DisableCopyOnReadDisableCopyOnRead2read_55_disablecopyonread_random_rotation_statevar"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp2read_55_disablecopyonread_random_rotation_statevar^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0	l
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
:c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0	*
_output_shapes
:�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*�
value�B�9B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*�
value|Bz9B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *G
dtypes=
;29			�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_112Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_113IdentityIdentity_112:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "%
identity_113Identity_113:output:0*�
_input_shapesv
t: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_55/ReadVariableOpRead_55/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:9

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
f
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_24872

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_9_layer_call_fn_24897

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_23424�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
��
�
J__inference_random_rotation_layer_call_and_return_conditional_losses_25254

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:���������g
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
::��m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������S
transform/ShapeShapeinputs*
T0*
_output_shapes
::��g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:�����������h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
`
D__inference_rescaling_layer_call_and_return_conditional_losses_24997

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:�����������d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
b
F__inference_random_flip_layer_call_and_return_conditional_losses_25124

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
'__inference_dense_3_layer_call_fn_24962

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_23583o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
(__inference_conv2d_9_layer_call_fn_24851

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_23505w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
b
F__inference_random_flip_layer_call_and_return_conditional_losses_23291

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
B__inference_dense_2_layer_call_and_return_conditional_losses_23566

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
S
,__inference_sequential_1_layer_call_fn_23330
random_flip_input
identity�
PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_23327j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:d `
1
_output_shapes
:�����������
+
_user_specified_namerandom_flip_input
�
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_23285
random_flip_input
random_flip_23159:	#
random_rotation_23281:	
identity��#random_flip/StatefulPartitionedCall�'random_rotation/StatefulPartitionedCall�
#random_flip/StatefulPartitionedCallStatefulPartitionedCallrandom_flip_inputrandom_flip_23159*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_23158�
'random_rotation/StatefulPartitionedCallStatefulPartitionedCall,random_flip/StatefulPartitionedCall:output:0random_rotation_23281*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_23280�
IdentityIdentity0random_rotation/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp$^random_flip/StatefulPartitionedCall(^random_rotation/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 2J
#random_flip/StatefulPartitionedCall#random_flip/StatefulPartitionedCall2R
'random_rotation/StatefulPartitionedCall'random_rotation/StatefulPartitionedCall:d `
1
_output_shapes
:�����������
+
_user_specified_namerandom_flip_input
�	
a
E__inference_sequential_layer_call_and_return_conditional_losses_24509

inputs
identitye
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
resizing/resize/ResizeBilinearResizeBilinearinputsresizing/resize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(U
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:������������
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:�����������c
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_7_layer_call_fn_24837

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_23400�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
G
+__inference_random_flip_layer_call_fn_25009

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_23291j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
,__inference_sequential_3_layer_call_fn_24075

inputs
unknown:	
	unknown_0:	#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:	�@

unknown_14:@

unknown_15:@

unknown_16:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_23701o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_24902

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
a
E__inference_sequential_layer_call_and_return_conditional_losses_23007

inputs
identity�
resizing/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_22979�
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_22989t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
W
sequential_inputC
"serving_default_sequential_input:0�����������;
dense_30
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer_with_weights-6
layer-14
layer_with_weights-7
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
"layer-0
#layer-1
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias
 2_jit_compiled_convolution_op"
_tf_keras_layer
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses"
_tf_keras_layer
�
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

?kernel
@bias
 A_jit_compiled_convolution_op"
_tf_keras_layer
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses"
_tf_keras_layer
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

Nkernel
Obias
 P_jit_compiled_convolution_op"
_tf_keras_layer
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

]kernel
^bias
 __jit_compiled_convolution_op"
_tf_keras_layer
�
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses"
_tf_keras_layer
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

lkernel
mbias
 n_jit_compiled_convolution_op"
_tf_keras_layer
�
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses"
_tf_keras_layer
�
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses

{kernel
|bias
 }_jit_compiled_convolution_op"
_tf_keras_layer
�
~	variables
trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
00
11
?2
@3
N4
O5
]6
^7
l8
m9
{10
|11
�12
�13
�14
�15"
trackable_list_wrapper
�
00
11
?2
@3
N4
O5
]6
^7
l8
m9
{10
|11
�12
�13
�14
�15"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
,__inference_sequential_3_layer_call_fn_23740
,__inference_sequential_3_layer_call_fn_23829
,__inference_sequential_3_layer_call_fn_24075
,__inference_sequential_3_layer_call_fn_24112�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
G__inference_sequential_3_layer_call_and_return_conditional_losses_23590
G__inference_sequential_3_layer_call_and_return_conditional_losses_23642
G__inference_sequential_3_layer_call_and_return_conditional_losses_24406
G__inference_sequential_3_layer_call_and_return_conditional_losses_24479�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�B�
 __inference__wrapped_model_22969sequential_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla"
experimentalOptimizer
-
�serving_default"
signature_map
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
*__inference_sequential_layer_call_fn_23010
*__inference_sequential_layer_call_fn_23021
*__inference_sequential_layer_call_fn_24484
*__inference_sequential_layer_call_fn_24489�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
E__inference_sequential_layer_call_and_return_conditional_losses_22992
E__inference_sequential_layer_call_and_return_conditional_losses_22998
E__inference_sequential_layer_call_and_return_conditional_losses_24499
E__inference_sequential_layer_call_and_return_conditional_losses_24509�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
,__inference_sequential_1_layer_call_fn_23319
,__inference_sequential_1_layer_call_fn_23330
,__inference_sequential_1_layer_call_fn_24518
,__inference_sequential_1_layer_call_fn_24523�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
G__inference_sequential_1_layer_call_and_return_conditional_losses_23285
G__inference_sequential_1_layer_call_and_return_conditional_losses_23299
G__inference_sequential_1_layer_call_and_return_conditional_losses_24748
G__inference_sequential_1_layer_call_and_return_conditional_losses_24752�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_6_layer_call_fn_24761�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_conv2d_6_layer_call_and_return_conditional_losses_24772�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
):' 2conv2d_6/kernel
: 2conv2d_6/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_max_pooling2d_5_layer_call_fn_24777�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_24782�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_7_layer_call_fn_24791�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_conv2d_7_layer_call_and_return_conditional_losses_24802�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
):' @2conv2d_7/kernel
:@2conv2d_7/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_max_pooling2d_6_layer_call_fn_24807�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_24812�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_8_layer_call_fn_24821�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_conv2d_8_layer_call_and_return_conditional_losses_24832�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
):'@@2conv2d_8/kernel
:@2conv2d_8/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_max_pooling2d_7_layer_call_fn_24837�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_24842�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
]0
^1"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_9_layer_call_fn_24851�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_conv2d_9_layer_call_and_return_conditional_losses_24862�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
):'@@2conv2d_9/kernel
:@2conv2d_9/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_max_pooling2d_8_layer_call_fn_24867�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_24872�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
l0
m1"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_10_layer_call_fn_24881�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_10_layer_call_and_return_conditional_losses_24892�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(@@2conv2d_10/kernel
:@2conv2d_10/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_max_pooling2d_9_layer_call_fn_24897�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_24902�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
{0
|1"
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_11_layer_call_fn_24911�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_11_layer_call_and_return_conditional_losses_24922�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(@@2conv2d_11/kernel
:@2conv2d_11/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
~	variables
trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_flatten_1_layer_call_fn_24927�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_flatten_1_layer_call_and_return_conditional_losses_24933�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_2_layer_call_fn_24942�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_2_layer_call_and_return_conditional_losses_24953�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!:	�@2dense_2/kernel
:@2dense_2/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_3_layer_call_fn_24962�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_3_layer_call_and_return_conditional_losses_24973�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 :@2dense_3/kernel
:2dense_3/bias
 "
trackable_list_wrapper
�
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
15"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_sequential_3_layer_call_fn_23740sequential_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_sequential_3_layer_call_fn_23829sequential_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_sequential_3_layer_call_fn_24075inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_sequential_3_layer_call_fn_24112inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_3_layer_call_and_return_conditional_losses_23590sequential_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_3_layer_call_and_return_conditional_losses_23642sequential_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_3_layer_call_and_return_conditional_losses_24406inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_3_layer_call_and_return_conditional_losses_24479inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
#__inference_signature_wrapper_24034sequential_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_resizing_layer_call_fn_24978�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_resizing_layer_call_and_return_conditional_losses_24984�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_rescaling_layer_call_fn_24989�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_rescaling_layer_call_and_return_conditional_losses_24997�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_sequential_layer_call_fn_23010resizing_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_sequential_layer_call_fn_23021resizing_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_sequential_layer_call_fn_24484inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_sequential_layer_call_fn_24489inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_22992resizing_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_22998resizing_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_24499inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_24509inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_random_flip_layer_call_fn_25004
+__inference_random_flip_layer_call_fn_25009�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_random_flip_layer_call_and_return_conditional_losses_25120
F__inference_random_flip_layer_call_and_return_conditional_losses_25124�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
/
�
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
/__inference_random_rotation_layer_call_fn_25131
/__inference_random_rotation_layer_call_fn_25136�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
J__inference_random_rotation_layer_call_and_return_conditional_losses_25254
J__inference_random_rotation_layer_call_and_return_conditional_losses_25258�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
/
�
_generator"
_generic_user_object
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_sequential_1_layer_call_fn_23319random_flip_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_sequential_1_layer_call_fn_23330random_flip_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_sequential_1_layer_call_fn_24518inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_sequential_1_layer_call_fn_24523inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_1_layer_call_and_return_conditional_losses_23285random_flip_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_1_layer_call_and_return_conditional_losses_23299random_flip_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_1_layer_call_and_return_conditional_losses_24748inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_1_layer_call_and_return_conditional_losses_24752inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
(__inference_conv2d_6_layer_call_fn_24761inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_conv2d_6_layer_call_and_return_conditional_losses_24772inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
/__inference_max_pooling2d_5_layer_call_fn_24777inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_24782inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
(__inference_conv2d_7_layer_call_fn_24791inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_conv2d_7_layer_call_and_return_conditional_losses_24802inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
/__inference_max_pooling2d_6_layer_call_fn_24807inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_24812inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
(__inference_conv2d_8_layer_call_fn_24821inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_conv2d_8_layer_call_and_return_conditional_losses_24832inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
/__inference_max_pooling2d_7_layer_call_fn_24837inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_24842inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
(__inference_conv2d_9_layer_call_fn_24851inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_conv2d_9_layer_call_and_return_conditional_losses_24862inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
/__inference_max_pooling2d_8_layer_call_fn_24867inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_24872inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_conv2d_10_layer_call_fn_24881inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_10_layer_call_and_return_conditional_losses_24892inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
/__inference_max_pooling2d_9_layer_call_fn_24897inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_24902inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_conv2d_11_layer_call_fn_24911inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_11_layer_call_and_return_conditional_losses_24922inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_flatten_1_layer_call_fn_24927inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_flatten_1_layer_call_and_return_conditional_losses_24933inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
'__inference_dense_2_layer_call_fn_24942inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_2_layer_call_and_return_conditional_losses_24953inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
'__inference_dense_3_layer_call_fn_24962inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_3_layer_call_and_return_conditional_losses_24973inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
.:, 2Adam/m/conv2d_6/kernel
.:, 2Adam/v/conv2d_6/kernel
 : 2Adam/m/conv2d_6/bias
 : 2Adam/v/conv2d_6/bias
.:, @2Adam/m/conv2d_7/kernel
.:, @2Adam/v/conv2d_7/kernel
 :@2Adam/m/conv2d_7/bias
 :@2Adam/v/conv2d_7/bias
.:,@@2Adam/m/conv2d_8/kernel
.:,@@2Adam/v/conv2d_8/kernel
 :@2Adam/m/conv2d_8/bias
 :@2Adam/v/conv2d_8/bias
.:,@@2Adam/m/conv2d_9/kernel
.:,@@2Adam/v/conv2d_9/kernel
 :@2Adam/m/conv2d_9/bias
 :@2Adam/v/conv2d_9/bias
/:-@@2Adam/m/conv2d_10/kernel
/:-@@2Adam/v/conv2d_10/kernel
!:@2Adam/m/conv2d_10/bias
!:@2Adam/v/conv2d_10/bias
/:-@@2Adam/m/conv2d_11/kernel
/:-@@2Adam/v/conv2d_11/kernel
!:@2Adam/m/conv2d_11/bias
!:@2Adam/v/conv2d_11/bias
&:$	�@2Adam/m/dense_2/kernel
&:$	�@2Adam/v/dense_2/kernel
:@2Adam/m/dense_2/bias
:@2Adam/v/dense_2/bias
%:#@2Adam/m/dense_3/kernel
%:#@2Adam/v/dense_3/kernel
:2Adam/m/dense_3/bias
:2Adam/v/dense_3/bias
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
�B�
(__inference_resizing_layer_call_fn_24978inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_resizing_layer_call_and_return_conditional_losses_24984inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_rescaling_layer_call_fn_24989inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_rescaling_layer_call_and_return_conditional_losses_24997inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_random_flip_layer_call_fn_25004inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_random_flip_layer_call_fn_25009inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_random_flip_layer_call_and_return_conditional_losses_25120inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_random_flip_layer_call_and_return_conditional_losses_25124inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
/
�
_state_var"
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
�B�
/__inference_random_rotation_layer_call_fn_25131inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_random_rotation_layer_call_fn_25136inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_random_rotation_layer_call_and_return_conditional_losses_25254inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_random_rotation_layer_call_and_return_conditional_losses_25258inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
/
�
_state_var"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
 :	2random_flip/StateVar
$:"	2random_rotation/StateVar�
 __inference__wrapped_model_22969�01?@NO]^lm{|����C�@
9�6
4�1
sequential_input�����������
� "1�.
,
dense_3!�
dense_3����������
D__inference_conv2d_10_layer_call_and_return_conditional_losses_24892slm7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
)__inference_conv2d_10_layer_call_fn_24881hlm7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
D__inference_conv2d_11_layer_call_and_return_conditional_losses_24922s{|7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
)__inference_conv2d_11_layer_call_fn_24911h{|7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
C__inference_conv2d_6_layer_call_and_return_conditional_losses_24772w019�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0����������� 
� �
(__inference_conv2d_6_layer_call_fn_24761l019�6
/�,
*�'
inputs�����������
� "+�(
unknown����������� �
C__inference_conv2d_7_layer_call_and_return_conditional_losses_24802s?@7�4
-�*
(�%
inputs��������� 
� "4�1
*�'
tensor_0���������}}@
� �
(__inference_conv2d_7_layer_call_fn_24791h?@7�4
-�*
(�%
inputs��������� 
� ")�&
unknown���������}}@�
C__inference_conv2d_8_layer_call_and_return_conditional_losses_24832sNO7�4
-�*
(�%
inputs���������>>@
� "4�1
*�'
tensor_0���������<<@
� �
(__inference_conv2d_8_layer_call_fn_24821hNO7�4
-�*
(�%
inputs���������>>@
� ")�&
unknown���������<<@�
C__inference_conv2d_9_layer_call_and_return_conditional_losses_24862s]^7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
(__inference_conv2d_9_layer_call_fn_24851h]^7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
B__inference_dense_2_layer_call_and_return_conditional_losses_24953f��0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������@
� �
'__inference_dense_2_layer_call_fn_24942[��0�-
&�#
!�
inputs����������
� "!�
unknown���������@�
B__inference_dense_3_layer_call_and_return_conditional_losses_24973e��/�,
%�"
 �
inputs���������@
� ",�)
"�
tensor_0���������
� �
'__inference_dense_3_layer_call_fn_24962Z��/�,
%�"
 �
inputs���������@
� "!�
unknown����������
D__inference_flatten_1_layer_call_and_return_conditional_losses_24933h7�4
-�*
(�%
inputs���������@
� "-�*
#� 
tensor_0����������
� �
)__inference_flatten_1_layer_call_fn_24927]7�4
-�*
(�%
inputs���������@
� ""�
unknown�����������
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_24782�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
/__inference_max_pooling2d_5_layer_call_fn_24777�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_24812�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
/__inference_max_pooling2d_6_layer_call_fn_24807�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_24842�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
/__inference_max_pooling2d_7_layer_call_fn_24837�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_24872�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
/__inference_max_pooling2d_8_layer_call_fn_24867�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_24902�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
/__inference_max_pooling2d_9_layer_call_fn_24897�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
F__inference_random_flip_layer_call_and_return_conditional_losses_25120{�=�:
3�0
*�'
inputs�����������
p
� "6�3
,�)
tensor_0�����������
� �
F__inference_random_flip_layer_call_and_return_conditional_losses_25124w=�:
3�0
*�'
inputs�����������
p 
� "6�3
,�)
tensor_0�����������
� �
+__inference_random_flip_layer_call_fn_25004p�=�:
3�0
*�'
inputs�����������
p
� "+�(
unknown������������
+__inference_random_flip_layer_call_fn_25009l=�:
3�0
*�'
inputs�����������
p 
� "+�(
unknown������������
J__inference_random_rotation_layer_call_and_return_conditional_losses_25254{�=�:
3�0
*�'
inputs�����������
p
� "6�3
,�)
tensor_0�����������
� �
J__inference_random_rotation_layer_call_and_return_conditional_losses_25258w=�:
3�0
*�'
inputs�����������
p 
� "6�3
,�)
tensor_0�����������
� �
/__inference_random_rotation_layer_call_fn_25131p�=�:
3�0
*�'
inputs�����������
p
� "+�(
unknown������������
/__inference_random_rotation_layer_call_fn_25136l=�:
3�0
*�'
inputs�����������
p 
� "+�(
unknown������������
D__inference_rescaling_layer_call_and_return_conditional_losses_24997s9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
)__inference_rescaling_layer_call_fn_24989h9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
C__inference_resizing_layer_call_and_return_conditional_losses_24984s9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
(__inference_resizing_layer_call_fn_24978h9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
G__inference_sequential_1_layer_call_and_return_conditional_losses_23285���L�I
B�?
5�2
random_flip_input�����������
p

 
� "6�3
,�)
tensor_0�����������
� �
G__inference_sequential_1_layer_call_and_return_conditional_losses_23299�L�I
B�?
5�2
random_flip_input�����������
p 

 
� "6�3
,�)
tensor_0�����������
� �
G__inference_sequential_1_layer_call_and_return_conditional_losses_24748���A�>
7�4
*�'
inputs�����������
p

 
� "6�3
,�)
tensor_0�����������
� �
G__inference_sequential_1_layer_call_and_return_conditional_losses_24752{A�>
7�4
*�'
inputs�����������
p 

 
� "6�3
,�)
tensor_0�����������
� �
,__inference_sequential_1_layer_call_fn_23319���L�I
B�?
5�2
random_flip_input�����������
p

 
� "+�(
unknown������������
,__inference_sequential_1_layer_call_fn_23330{L�I
B�?
5�2
random_flip_input�����������
p 

 
� "+�(
unknown������������
,__inference_sequential_1_layer_call_fn_24518v��A�>
7�4
*�'
inputs�����������
p

 
� "+�(
unknown������������
,__inference_sequential_1_layer_call_fn_24523pA�>
7�4
*�'
inputs�����������
p 

 
� "+�(
unknown������������
G__inference_sequential_3_layer_call_and_return_conditional_losses_23590���01?@NO]^lm{|����K�H
A�>
4�1
sequential_input�����������
p

 
� ",�)
"�
tensor_0���������
� �
G__inference_sequential_3_layer_call_and_return_conditional_losses_23642�01?@NO]^lm{|����K�H
A�>
4�1
sequential_input�����������
p 

 
� ",�)
"�
tensor_0���������
� �
G__inference_sequential_3_layer_call_and_return_conditional_losses_24406���01?@NO]^lm{|����A�>
7�4
*�'
inputs�����������
p

 
� ",�)
"�
tensor_0���������
� �
G__inference_sequential_3_layer_call_and_return_conditional_losses_24479�01?@NO]^lm{|����A�>
7�4
*�'
inputs�����������
p 

 
� ",�)
"�
tensor_0���������
� �
,__inference_sequential_3_layer_call_fn_23740���01?@NO]^lm{|����K�H
A�>
4�1
sequential_input�����������
p

 
� "!�
unknown����������
,__inference_sequential_3_layer_call_fn_23829�01?@NO]^lm{|����K�H
A�>
4�1
sequential_input�����������
p 

 
� "!�
unknown����������
,__inference_sequential_3_layer_call_fn_24075���01?@NO]^lm{|����A�>
7�4
*�'
inputs�����������
p

 
� "!�
unknown����������
,__inference_sequential_3_layer_call_fn_24112|01?@NO]^lm{|����A�>
7�4
*�'
inputs�����������
p 

 
� "!�
unknown����������
E__inference_sequential_layer_call_and_return_conditional_losses_22992�I�F
?�<
2�/
resizing_input�����������
p

 
� "6�3
,�)
tensor_0�����������
� �
E__inference_sequential_layer_call_and_return_conditional_losses_22998�I�F
?�<
2�/
resizing_input�����������
p 

 
� "6�3
,�)
tensor_0�����������
� �
E__inference_sequential_layer_call_and_return_conditional_losses_24499{A�>
7�4
*�'
inputs�����������
p

 
� "6�3
,�)
tensor_0�����������
� �
E__inference_sequential_layer_call_and_return_conditional_losses_24509{A�>
7�4
*�'
inputs�����������
p 

 
� "6�3
,�)
tensor_0�����������
� �
*__inference_sequential_layer_call_fn_23010xI�F
?�<
2�/
resizing_input�����������
p

 
� "+�(
unknown������������
*__inference_sequential_layer_call_fn_23021xI�F
?�<
2�/
resizing_input�����������
p 

 
� "+�(
unknown������������
*__inference_sequential_layer_call_fn_24484pA�>
7�4
*�'
inputs�����������
p

 
� "+�(
unknown������������
*__inference_sequential_layer_call_fn_24489pA�>
7�4
*�'
inputs�����������
p 

 
� "+�(
unknown������������
#__inference_signature_wrapper_24034�01?@NO]^lm{|����W�T
� 
M�J
H
sequential_input4�1
sequential_input�����������"1�.
,
dense_3!�
dense_3���������