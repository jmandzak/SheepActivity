??	
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
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
?
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
?
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
?
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
0
Sigmoid
x"T
y"T"
Ttype:

2
?
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
executor_typestring ??
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58??
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
?
RMSprop/velocity/dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name RMSprop/velocity/dense_21/bias
?
2RMSprop/velocity/dense_21/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/dense_21/bias*
_output_shapes
:*
dtype0
?
 RMSprop/velocity/dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*1
shared_name" RMSprop/velocity/dense_21/kernel
?
4RMSprop/velocity/dense_21/kernel/Read/ReadVariableOpReadVariableOp RMSprop/velocity/dense_21/kernel*
_output_shapes

:@*
dtype0
?
RMSprop/velocity/dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name RMSprop/velocity/dense_20/bias
?
2RMSprop/velocity/dense_20/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/dense_20/bias*
_output_shapes
:@*
dtype0
?
 RMSprop/velocity/dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?+@*1
shared_name" RMSprop/velocity/dense_20/kernel
?
4RMSprop/velocity/dense_20/kernel/Read/ReadVariableOpReadVariableOp RMSprop/velocity/dense_20/kernel*
_output_shapes
:	?+@*
dtype0
?
RMSprop/velocity/conv2d_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!RMSprop/velocity/conv2d_32/bias
?
3RMSprop/velocity/conv2d_32/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/conv2d_32/bias*
_output_shapes
:*
dtype0
?
!RMSprop/velocity/conv2d_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!RMSprop/velocity/conv2d_32/kernel
?
5RMSprop/velocity/conv2d_32/kernel/Read/ReadVariableOpReadVariableOp!RMSprop/velocity/conv2d_32/kernel*&
_output_shapes
: *
dtype0
?
RMSprop/velocity/conv2d_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!RMSprop/velocity/conv2d_31/bias
?
3RMSprop/velocity/conv2d_31/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/conv2d_31/bias*
_output_shapes
: *
dtype0
?
!RMSprop/velocity/conv2d_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *2
shared_name#!RMSprop/velocity/conv2d_31/kernel
?
5RMSprop/velocity/conv2d_31/kernel/Read/ReadVariableOpReadVariableOp!RMSprop/velocity/conv2d_31/kernel*&
_output_shapes
:@ *
dtype0
?
RMSprop/velocity/conv2d_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!RMSprop/velocity/conv2d_30/bias
?
3RMSprop/velocity/conv2d_30/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/conv2d_30/bias*
_output_shapes
:@*
dtype0
?
!RMSprop/velocity/conv2d_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!RMSprop/velocity/conv2d_30/kernel
?
5RMSprop/velocity/conv2d_30/kernel/Read/ReadVariableOpReadVariableOp!RMSprop/velocity/conv2d_30/kernel*&
_output_shapes
:@*
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
dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_21/bias
k
!dense_21/bias/Read/ReadVariableOpReadVariableOpdense_21/bias*
_output_shapes
:*
dtype0
z
dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_21/kernel
s
#dense_21/kernel/Read/ReadVariableOpReadVariableOpdense_21/kernel*
_output_shapes

:@*
dtype0
r
dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_20/bias
k
!dense_20/bias/Read/ReadVariableOpReadVariableOpdense_20/bias*
_output_shapes
:@*
dtype0
{
dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?+@* 
shared_namedense_20/kernel
t
#dense_20/kernel/Read/ReadVariableOpReadVariableOpdense_20/kernel*
_output_shapes
:	?+@*
dtype0
t
conv2d_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_32/bias
m
"conv2d_32/bias/Read/ReadVariableOpReadVariableOpconv2d_32/bias*
_output_shapes
:*
dtype0
?
conv2d_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_32/kernel
}
$conv2d_32/kernel/Read/ReadVariableOpReadVariableOpconv2d_32/kernel*&
_output_shapes
: *
dtype0
t
conv2d_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_31/bias
m
"conv2d_31/bias/Read/ReadVariableOpReadVariableOpconv2d_31/bias*
_output_shapes
: *
dtype0
?
conv2d_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *!
shared_nameconv2d_31/kernel
}
$conv2d_31/kernel/Read/ReadVariableOpReadVariableOpconv2d_31/kernel*&
_output_shapes
:@ *
dtype0
t
conv2d_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_30/bias
m
"conv2d_30/bias/Read/ReadVariableOpReadVariableOpconv2d_30/bias*
_output_shapes
:@*
dtype0
?
conv2d_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_30/kernel
}
$conv2d_30/kernel/Read/ReadVariableOpReadVariableOpconv2d_30/kernel*&
_output_shapes
:@*
dtype0
?
serving_default_conv2d_30_inputPlaceholder*0
_output_shapes
:??????????l*
dtype0*%
shape:??????????l
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_30_inputconv2d_30/kernelconv2d_30/biasconv2d_31/kernelconv2d_31/biasconv2d_32/kernelconv2d_32/biasdense_20/kerneldense_20/biasdense_21/kerneldense_21/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_458183

NoOpNoOp
?J
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?I
value?IB?I B?I
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
?
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses* 
?
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias
 *_jit_compiled_convolution_op*
?
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses* 
?
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias
 9_jit_compiled_convolution_op*
?
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses* 
?
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses* 
?
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias*
?
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses

Tkernel
Ubias*
J
0
1
(2
)3
74
85
L6
M7
T8
U9*
J
0
1
(2
)3
74
85
L6
M7
T8
U9*
* 
?
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
[trace_0
\trace_1
]trace_2
^trace_3* 
6
_trace_0
`trace_1
atrace_2
btrace_3* 
* 
?
c
_variables
d_iterations
e_learning_rate
f_index_dict
g_velocities
h
_momentums
i_average_gradients
j_update_step_xla*

kserving_default* 

0
1*

0
1*
* 
?
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

qtrace_0* 

rtrace_0* 
`Z
VARIABLE_VALUEconv2d_30/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_30/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
?
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 

xtrace_0* 

ytrace_0* 

(0
)1*

(0
)1*
* 
?
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*

trace_0* 

?trace_0* 
`Z
VARIABLE_VALUEconv2d_31/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_31/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

70
81*

70
81*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
`Z
VARIABLE_VALUEconv2d_32/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_32/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

L0
M1*

L0
M1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
_Y
VARIABLE_VALUEdense_20/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_20/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

T0
U1*

T0
U1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
_Y
VARIABLE_VALUEdense_21/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_21/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
C
0
1
2
3
4
5
6
7
	8*

?0
?1*
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
\
d0
?1
?2
?3
?4
?5
?6
?7
?8
?9
?10*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
T
?0
?1
?2
?3
?4
?5
?6
?7
?8
?9*
* 
* 
?
?trace_0
?trace_1
?trace_2
?trace_3
?trace_4
?trace_5
?trace_6
?trace_7
?trace_8
?trace_9* 
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
?	variables
?	keras_api

?total

?count*
M
?	variables
?	keras_api

?total

?count
?
_fn_kwargs*
lf
VARIABLE_VALUE!RMSprop/velocity/conv2d_30/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUERMSprop/velocity/conv2d_30/bias1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!RMSprop/velocity/conv2d_31/kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUERMSprop/velocity/conv2d_31/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!RMSprop/velocity/conv2d_32/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUERMSprop/velocity/conv2d_32/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE RMSprop/velocity/dense_20/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUERMSprop/velocity/dense_20/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE RMSprop/velocity/dense_21/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUERMSprop/velocity/dense_21/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
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
?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_30/kernel/Read/ReadVariableOp"conv2d_30/bias/Read/ReadVariableOp$conv2d_31/kernel/Read/ReadVariableOp"conv2d_31/bias/Read/ReadVariableOp$conv2d_32/kernel/Read/ReadVariableOp"conv2d_32/bias/Read/ReadVariableOp#dense_20/kernel/Read/ReadVariableOp!dense_20/bias/Read/ReadVariableOp#dense_21/kernel/Read/ReadVariableOp!dense_21/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp5RMSprop/velocity/conv2d_30/kernel/Read/ReadVariableOp3RMSprop/velocity/conv2d_30/bias/Read/ReadVariableOp5RMSprop/velocity/conv2d_31/kernel/Read/ReadVariableOp3RMSprop/velocity/conv2d_31/bias/Read/ReadVariableOp5RMSprop/velocity/conv2d_32/kernel/Read/ReadVariableOp3RMSprop/velocity/conv2d_32/bias/Read/ReadVariableOp4RMSprop/velocity/dense_20/kernel/Read/ReadVariableOp2RMSprop/velocity/dense_20/bias/Read/ReadVariableOp4RMSprop/velocity/dense_21/kernel/Read/ReadVariableOp2RMSprop/velocity/dense_21/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*'
Tin 
2	*
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
GPU 2J 8? *(
f#R!
__inference__traced_save_458613
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_30/kernelconv2d_30/biasconv2d_31/kernelconv2d_31/biasconv2d_32/kernelconv2d_32/biasdense_20/kerneldense_20/biasdense_21/kerneldense_21/bias	iterationlearning_rate!RMSprop/velocity/conv2d_30/kernelRMSprop/velocity/conv2d_30/bias!RMSprop/velocity/conv2d_31/kernelRMSprop/velocity/conv2d_31/bias!RMSprop/velocity/conv2d_32/kernelRMSprop/velocity/conv2d_32/bias RMSprop/velocity/dense_20/kernelRMSprop/velocity/dense_20/bias RMSprop/velocity/dense_21/kernelRMSprop/velocity/dense_21/biastotal_1count_1totalcount*&
Tin
2*
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_458701ښ
?
h
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_458461

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_30_layer_call_and_return_conditional_losses_458391

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????k@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????k@Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????k@j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????k@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????l: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????l
 
_user_specified_nameinputs
?
W
#__inference__update_step_xla_458336
gradient"
variable:@ *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@ : *
	_noinline(:P L
&
_output_shapes
:@ 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
?B
?

!__inference__wrapped_model_457761
conv2d_30_inputP
6sequential_10_conv2d_30_conv2d_readvariableop_resource:@E
7sequential_10_conv2d_30_biasadd_readvariableop_resource:@P
6sequential_10_conv2d_31_conv2d_readvariableop_resource:@ E
7sequential_10_conv2d_31_biasadd_readvariableop_resource: P
6sequential_10_conv2d_32_conv2d_readvariableop_resource: E
7sequential_10_conv2d_32_biasadd_readvariableop_resource:H
5sequential_10_dense_20_matmul_readvariableop_resource:	?+@D
6sequential_10_dense_20_biasadd_readvariableop_resource:@G
5sequential_10_dense_21_matmul_readvariableop_resource:@D
6sequential_10_dense_21_biasadd_readvariableop_resource:
identity??.sequential_10/conv2d_30/BiasAdd/ReadVariableOp?-sequential_10/conv2d_30/Conv2D/ReadVariableOp?.sequential_10/conv2d_31/BiasAdd/ReadVariableOp?-sequential_10/conv2d_31/Conv2D/ReadVariableOp?.sequential_10/conv2d_32/BiasAdd/ReadVariableOp?-sequential_10/conv2d_32/Conv2D/ReadVariableOp?-sequential_10/dense_20/BiasAdd/ReadVariableOp?,sequential_10/dense_20/MatMul/ReadVariableOp?-sequential_10/dense_21/BiasAdd/ReadVariableOp?,sequential_10/dense_21/MatMul/ReadVariableOp?
-sequential_10/conv2d_30/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
sequential_10/conv2d_30/Conv2DConv2Dconv2d_30_input5sequential_10/conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????k@*
paddingVALID*
strides
?
.sequential_10/conv2d_30/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_10/conv2d_30/BiasAddBiasAdd'sequential_10/conv2d_30/Conv2D:output:06sequential_10/conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????k@?
sequential_10/conv2d_30/ReluRelu(sequential_10/conv2d_30/BiasAdd:output:0*
T0*0
_output_shapes
:??????????k@?
&sequential_10/max_pooling2d_30/MaxPoolMaxPool*sequential_10/conv2d_30/Relu:activations:0*/
_output_shapes
:?????????y5@*
ksize
*
paddingVALID*
strides
?
-sequential_10/conv2d_31/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
sequential_10/conv2d_31/Conv2DConv2D/sequential_10/max_pooling2d_30/MaxPool:output:05sequential_10/conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????x4 *
paddingVALID*
strides
?
.sequential_10/conv2d_31/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_31_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
sequential_10/conv2d_31/BiasAddBiasAdd'sequential_10/conv2d_31/Conv2D:output:06sequential_10/conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????x4 ?
sequential_10/conv2d_31/ReluRelu(sequential_10/conv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:?????????x4 ?
&sequential_10/max_pooling2d_31/MaxPoolMaxPool*sequential_10/conv2d_31/Relu:activations:0*/
_output_shapes
:?????????< *
ksize
*
paddingVALID*
strides
?
-sequential_10/conv2d_32/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
sequential_10/conv2d_32/Conv2DConv2D/sequential_10/max_pooling2d_31/MaxPool:output:05sequential_10/conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????;*
paddingVALID*
strides
?
.sequential_10/conv2d_32/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_10/conv2d_32/BiasAddBiasAdd'sequential_10/conv2d_32/Conv2D:output:06sequential_10/conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????;?
sequential_10/conv2d_32/ReluRelu(sequential_10/conv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:?????????;?
&sequential_10/max_pooling2d_32/MaxPoolMaxPool*sequential_10/conv2d_32/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
o
sequential_10/flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
 sequential_10/flatten_10/ReshapeReshape/sequential_10/max_pooling2d_32/MaxPool:output:0'sequential_10/flatten_10/Const:output:0*
T0*(
_output_shapes
:??????????+?
,sequential_10/dense_20/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_20_matmul_readvariableop_resource*
_output_shapes
:	?+@*
dtype0?
sequential_10/dense_20/MatMulMatMul)sequential_10/flatten_10/Reshape:output:04sequential_10/dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
-sequential_10/dense_20/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_10/dense_20/BiasAddBiasAdd'sequential_10/dense_20/MatMul:product:05sequential_10/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@~
sequential_10/dense_20/ReluRelu'sequential_10/dense_20/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
,sequential_10/dense_21/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_21_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
sequential_10/dense_21/MatMulMatMul)sequential_10/dense_20/Relu:activations:04sequential_10/dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_10/dense_21/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_10/dense_21/BiasAddBiasAdd'sequential_10/dense_21/MatMul:product:05sequential_10/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_10/dense_21/SigmoidSigmoid'sequential_10/dense_21/BiasAdd:output:0*
T0*'
_output_shapes
:?????????q
IdentityIdentity"sequential_10/dense_21/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp/^sequential_10/conv2d_30/BiasAdd/ReadVariableOp.^sequential_10/conv2d_30/Conv2D/ReadVariableOp/^sequential_10/conv2d_31/BiasAdd/ReadVariableOp.^sequential_10/conv2d_31/Conv2D/ReadVariableOp/^sequential_10/conv2d_32/BiasAdd/ReadVariableOp.^sequential_10/conv2d_32/Conv2D/ReadVariableOp.^sequential_10/dense_20/BiasAdd/ReadVariableOp-^sequential_10/dense_20/MatMul/ReadVariableOp.^sequential_10/dense_21/BiasAdd/ReadVariableOp-^sequential_10/dense_21/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????l: : : : : : : : : : 2`
.sequential_10/conv2d_30/BiasAdd/ReadVariableOp.sequential_10/conv2d_30/BiasAdd/ReadVariableOp2^
-sequential_10/conv2d_30/Conv2D/ReadVariableOp-sequential_10/conv2d_30/Conv2D/ReadVariableOp2`
.sequential_10/conv2d_31/BiasAdd/ReadVariableOp.sequential_10/conv2d_31/BiasAdd/ReadVariableOp2^
-sequential_10/conv2d_31/Conv2D/ReadVariableOp-sequential_10/conv2d_31/Conv2D/ReadVariableOp2`
.sequential_10/conv2d_32/BiasAdd/ReadVariableOp.sequential_10/conv2d_32/BiasAdd/ReadVariableOp2^
-sequential_10/conv2d_32/Conv2D/ReadVariableOp-sequential_10/conv2d_32/Conv2D/ReadVariableOp2^
-sequential_10/dense_20/BiasAdd/ReadVariableOp-sequential_10/dense_20/BiasAdd/ReadVariableOp2\
,sequential_10/dense_20/MatMul/ReadVariableOp,sequential_10/dense_20/MatMul/ReadVariableOp2^
-sequential_10/dense_21/BiasAdd/ReadVariableOp-sequential_10/dense_21/BiasAdd/ReadVariableOp2\
,sequential_10/dense_21/MatMul/ReadVariableOp,sequential_10/dense_21/MatMul/ReadVariableOp:a ]
0
_output_shapes
:??????????l
)
_user_specified_nameconv2d_30_input
?
W
#__inference__update_step_xla_458326
gradient"
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@: *
	_noinline(:P L
&
_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
?

?
D__inference_dense_20_layer_call_and_return_conditional_losses_458492

inputs1
matmul_readvariableop_resource:	?+@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?+@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????+: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????+
 
_user_specified_nameinputs
?
b
F__inference_flatten_10_layer_call_and_return_conditional_losses_458472

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????+Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????+"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_10_layer_call_fn_458466

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????+* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_457864a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????+"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_32_layer_call_fn_458456

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_457794?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
K
#__inference__update_step_xla_458331
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
?p
?
"__inference__traced_restore_458701
file_prefix;
!assignvariableop_conv2d_30_kernel:@/
!assignvariableop_1_conv2d_30_bias:@=
#assignvariableop_2_conv2d_31_kernel:@ /
!assignvariableop_3_conv2d_31_bias: =
#assignvariableop_4_conv2d_32_kernel: /
!assignvariableop_5_conv2d_32_bias:5
"assignvariableop_6_dense_20_kernel:	?+@.
 assignvariableop_7_dense_20_bias:@4
"assignvariableop_8_dense_21_kernel:@.
 assignvariableop_9_dense_21_bias:'
assignvariableop_10_iteration:	 +
!assignvariableop_11_learning_rate: O
5assignvariableop_12_rmsprop_velocity_conv2d_30_kernel:@A
3assignvariableop_13_rmsprop_velocity_conv2d_30_bias:@O
5assignvariableop_14_rmsprop_velocity_conv2d_31_kernel:@ A
3assignvariableop_15_rmsprop_velocity_conv2d_31_bias: O
5assignvariableop_16_rmsprop_velocity_conv2d_32_kernel: A
3assignvariableop_17_rmsprop_velocity_conv2d_32_bias:G
4assignvariableop_18_rmsprop_velocity_dense_20_kernel:	?+@@
2assignvariableop_19_rmsprop_velocity_dense_20_bias:@F
4assignvariableop_20_rmsprop_velocity_dense_21_kernel:@@
2assignvariableop_21_rmsprop_velocity_dense_21_bias:%
assignvariableop_22_total_1: %
assignvariableop_23_count_1: #
assignvariableop_24_total: #
assignvariableop_25_count: 
identity_27??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_30_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_30_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_31_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_31_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_32_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_32_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_20_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_20_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_21_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_21_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_iterationIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_learning_rateIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp5assignvariableop_12_rmsprop_velocity_conv2d_30_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp3assignvariableop_13_rmsprop_velocity_conv2d_30_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp5assignvariableop_14_rmsprop_velocity_conv2d_31_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp3assignvariableop_15_rmsprop_velocity_conv2d_31_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp5assignvariableop_16_rmsprop_velocity_conv2d_32_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp3assignvariableop_17_rmsprop_velocity_conv2d_32_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp4assignvariableop_18_rmsprop_velocity_dense_20_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp2assignvariableop_19_rmsprop_velocity_dense_20_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp4assignvariableop_20_rmsprop_velocity_dense_21_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp2assignvariableop_21_rmsprop_velocity_dense_21_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOpassignvariableop_22_total_1Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpassignvariableop_23_count_1Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpassignvariableop_24_totalIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOpassignvariableop_25_countIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ?
Identity_26Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_27IdentityIdentity_26:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_27Identity_27:output:0*I
_input_shapes8
6: : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_25AssignVariableOp_252(
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
?
M
1__inference_max_pooling2d_30_layer_call_fn_458396

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_457770?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_31_layer_call_and_return_conditional_losses_458421

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????x4 *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????x4 X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????x4 i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????x4 w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????y5@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????y5@
 
_user_specified_nameinputs
?
?
E__inference_conv2d_32_layer_call_and_return_conditional_losses_457851

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????;*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????;X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????;i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????;w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????< : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????< 
 
_user_specified_nameinputs
?5
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_458321

inputsB
(conv2d_30_conv2d_readvariableop_resource:@7
)conv2d_30_biasadd_readvariableop_resource:@B
(conv2d_31_conv2d_readvariableop_resource:@ 7
)conv2d_31_biasadd_readvariableop_resource: B
(conv2d_32_conv2d_readvariableop_resource: 7
)conv2d_32_biasadd_readvariableop_resource::
'dense_20_matmul_readvariableop_resource:	?+@6
(dense_20_biasadd_readvariableop_resource:@9
'dense_21_matmul_readvariableop_resource:@6
(dense_21_biasadd_readvariableop_resource:
identity?? conv2d_30/BiasAdd/ReadVariableOp?conv2d_30/Conv2D/ReadVariableOp? conv2d_31/BiasAdd/ReadVariableOp?conv2d_31/Conv2D/ReadVariableOp? conv2d_32/BiasAdd/ReadVariableOp?conv2d_32/Conv2D/ReadVariableOp?dense_20/BiasAdd/ReadVariableOp?dense_20/MatMul/ReadVariableOp?dense_21/BiasAdd/ReadVariableOp?dense_21/MatMul/ReadVariableOp?
conv2d_30/Conv2D/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
conv2d_30/Conv2DConv2Dinputs'conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????k@*
paddingVALID*
strides
?
 conv2d_30/BiasAdd/ReadVariableOpReadVariableOp)conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_30/BiasAddBiasAddconv2d_30/Conv2D:output:0(conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????k@m
conv2d_30/ReluReluconv2d_30/BiasAdd:output:0*
T0*0
_output_shapes
:??????????k@?
max_pooling2d_30/MaxPoolMaxPoolconv2d_30/Relu:activations:0*/
_output_shapes
:?????????y5@*
ksize
*
paddingVALID*
strides
?
conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
conv2d_31/Conv2DConv2D!max_pooling2d_30/MaxPool:output:0'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????x4 *
paddingVALID*
strides
?
 conv2d_31/BiasAdd/ReadVariableOpReadVariableOp)conv2d_31_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_31/BiasAddBiasAddconv2d_31/Conv2D:output:0(conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????x4 l
conv2d_31/ReluReluconv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:?????????x4 ?
max_pooling2d_31/MaxPoolMaxPoolconv2d_31/Relu:activations:0*/
_output_shapes
:?????????< *
ksize
*
paddingVALID*
strides
?
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_32/Conv2DConv2D!max_pooling2d_31/MaxPool:output:0'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????;*
paddingVALID*
strides
?
 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????;l
conv2d_32/ReluReluconv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:?????????;?
max_pooling2d_32/MaxPoolMaxPoolconv2d_32/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
a
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
flatten_10/ReshapeReshape!max_pooling2d_32/MaxPool:output:0flatten_10/Const:output:0*
T0*(
_output_shapes
:??????????+?
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes
:	?+@*
dtype0?
dense_20/MatMulMatMulflatten_10/Reshape:output:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@b
dense_20/ReluReludense_20/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_21/MatMulMatMuldense_20/Relu:activations:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_21/SigmoidSigmoiddense_21/BiasAdd:output:0*
T0*'
_output_shapes
:?????????c
IdentityIdentitydense_21/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv2d_30/BiasAdd/ReadVariableOp ^conv2d_30/Conv2D/ReadVariableOp!^conv2d_31/BiasAdd/ReadVariableOp ^conv2d_31/Conv2D/ReadVariableOp!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????l: : : : : : : : : : 2D
 conv2d_30/BiasAdd/ReadVariableOp conv2d_30/BiasAdd/ReadVariableOp2B
conv2d_30/Conv2D/ReadVariableOpconv2d_30/Conv2D/ReadVariableOp2D
 conv2d_31/BiasAdd/ReadVariableOp conv2d_31/BiasAdd/ReadVariableOp2B
conv2d_31/Conv2D/ReadVariableOpconv2d_31/Conv2D/ReadVariableOp2D
 conv2d_32/BiasAdd/ReadVariableOp conv2d_32/BiasAdd/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp:X T
0
_output_shapes
:??????????l
 
_user_specified_nameinputs
?
O
#__inference__update_step_xla_458366
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:@: *
	_noinline(:H D

_output_shapes

:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
?

?
D__inference_dense_20_layer_call_and_return_conditional_losses_457877

inputs1
matmul_readvariableop_resource:	?+@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?+@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????+: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????+
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_457782

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
P
#__inference__update_step_xla_458356
gradient
variable:	?+@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	?+@: *
	_noinline(:I E

_output_shapes
:	?+@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
?

?
D__inference_dense_21_layer_call_and_return_conditional_losses_457894

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
)__inference_dense_20_layer_call_fn_458481

inputs
unknown:	?+@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_457877o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????+: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????+
 
_user_specified_nameinputs
?
?
E__inference_conv2d_30_layer_call_and_return_conditional_losses_457815

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????k@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????k@Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????k@j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????k@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????l: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????l
 
_user_specified_nameinputs
?
K
#__inference__update_step_xla_458351
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
?
?
*__inference_conv2d_32_layer_call_fn_458440

inputs!
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????;*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_32_layer_call_and_return_conditional_losses_457851w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????;`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????< : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????< 
 
_user_specified_nameinputs
?
b
F__inference_flatten_10_layer_call_and_return_conditional_losses_457864

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????+Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????+"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?5
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_458277

inputsB
(conv2d_30_conv2d_readvariableop_resource:@7
)conv2d_30_biasadd_readvariableop_resource:@B
(conv2d_31_conv2d_readvariableop_resource:@ 7
)conv2d_31_biasadd_readvariableop_resource: B
(conv2d_32_conv2d_readvariableop_resource: 7
)conv2d_32_biasadd_readvariableop_resource::
'dense_20_matmul_readvariableop_resource:	?+@6
(dense_20_biasadd_readvariableop_resource:@9
'dense_21_matmul_readvariableop_resource:@6
(dense_21_biasadd_readvariableop_resource:
identity?? conv2d_30/BiasAdd/ReadVariableOp?conv2d_30/Conv2D/ReadVariableOp? conv2d_31/BiasAdd/ReadVariableOp?conv2d_31/Conv2D/ReadVariableOp? conv2d_32/BiasAdd/ReadVariableOp?conv2d_32/Conv2D/ReadVariableOp?dense_20/BiasAdd/ReadVariableOp?dense_20/MatMul/ReadVariableOp?dense_21/BiasAdd/ReadVariableOp?dense_21/MatMul/ReadVariableOp?
conv2d_30/Conv2D/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
conv2d_30/Conv2DConv2Dinputs'conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????k@*
paddingVALID*
strides
?
 conv2d_30/BiasAdd/ReadVariableOpReadVariableOp)conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_30/BiasAddBiasAddconv2d_30/Conv2D:output:0(conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????k@m
conv2d_30/ReluReluconv2d_30/BiasAdd:output:0*
T0*0
_output_shapes
:??????????k@?
max_pooling2d_30/MaxPoolMaxPoolconv2d_30/Relu:activations:0*/
_output_shapes
:?????????y5@*
ksize
*
paddingVALID*
strides
?
conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
conv2d_31/Conv2DConv2D!max_pooling2d_30/MaxPool:output:0'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????x4 *
paddingVALID*
strides
?
 conv2d_31/BiasAdd/ReadVariableOpReadVariableOp)conv2d_31_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_31/BiasAddBiasAddconv2d_31/Conv2D:output:0(conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????x4 l
conv2d_31/ReluReluconv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:?????????x4 ?
max_pooling2d_31/MaxPoolMaxPoolconv2d_31/Relu:activations:0*/
_output_shapes
:?????????< *
ksize
*
paddingVALID*
strides
?
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_32/Conv2DConv2D!max_pooling2d_31/MaxPool:output:0'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????;*
paddingVALID*
strides
?
 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????;l
conv2d_32/ReluReluconv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:?????????;?
max_pooling2d_32/MaxPoolMaxPoolconv2d_32/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
a
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
flatten_10/ReshapeReshape!max_pooling2d_32/MaxPool:output:0flatten_10/Const:output:0*
T0*(
_output_shapes
:??????????+?
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes
:	?+@*
dtype0?
dense_20/MatMulMatMulflatten_10/Reshape:output:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@b
dense_20/ReluReludense_20/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_21/MatMulMatMuldense_20/Relu:activations:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_21/SigmoidSigmoiddense_21/BiasAdd:output:0*
T0*'
_output_shapes
:?????????c
IdentityIdentitydense_21/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv2d_30/BiasAdd/ReadVariableOp ^conv2d_30/Conv2D/ReadVariableOp!^conv2d_31/BiasAdd/ReadVariableOp ^conv2d_31/Conv2D/ReadVariableOp!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????l: : : : : : : : : : 2D
 conv2d_30/BiasAdd/ReadVariableOp conv2d_30/BiasAdd/ReadVariableOp2B
conv2d_30/Conv2D/ReadVariableOpconv2d_30/Conv2D/ReadVariableOp2D
 conv2d_31/BiasAdd/ReadVariableOp conv2d_31/BiasAdd/ReadVariableOp2B
conv2d_31/Conv2D/ReadVariableOpconv2d_31/Conv2D/ReadVariableOp2D
 conv2d_32/BiasAdd/ReadVariableOp conv2d_32/BiasAdd/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp:X T
0
_output_shapes
:??????????l
 
_user_specified_nameinputs
?
?
*__inference_conv2d_30_layer_call_fn_458380

inputs!
unknown:@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????k@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_30_layer_call_and_return_conditional_losses_457815x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????k@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????l: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????l
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_457794

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
K
#__inference__update_step_xla_458371
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
?
?
E__inference_conv2d_32_layer_call_and_return_conditional_losses_458451

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????;*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????;X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????;i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????;w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????< : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????< 
 
_user_specified_nameinputs
?
?
)__inference_dense_21_layer_call_fn_458501

inputs
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_457894o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
$__inference_signature_wrapper_458183
conv2d_30_input!
unknown:@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	?+@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_30_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_457761o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????l: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:??????????l
)
_user_specified_nameconv2d_30_input
?
h
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_458401

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?:
?
__inference__traced_save_458613
file_prefix/
+savev2_conv2d_30_kernel_read_readvariableop-
)savev2_conv2d_30_bias_read_readvariableop/
+savev2_conv2d_31_kernel_read_readvariableop-
)savev2_conv2d_31_bias_read_readvariableop/
+savev2_conv2d_32_kernel_read_readvariableop-
)savev2_conv2d_32_bias_read_readvariableop.
*savev2_dense_20_kernel_read_readvariableop,
(savev2_dense_20_bias_read_readvariableop.
*savev2_dense_21_kernel_read_readvariableop,
(savev2_dense_21_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop@
<savev2_rmsprop_velocity_conv2d_30_kernel_read_readvariableop>
:savev2_rmsprop_velocity_conv2d_30_bias_read_readvariableop@
<savev2_rmsprop_velocity_conv2d_31_kernel_read_readvariableop>
:savev2_rmsprop_velocity_conv2d_31_bias_read_readvariableop@
<savev2_rmsprop_velocity_conv2d_32_kernel_read_readvariableop>
:savev2_rmsprop_velocity_conv2d_32_bias_read_readvariableop?
;savev2_rmsprop_velocity_dense_20_kernel_read_readvariableop=
9savev2_rmsprop_velocity_dense_20_bias_read_readvariableop?
;savev2_rmsprop_velocity_dense_21_kernel_read_readvariableop=
9savev2_rmsprop_velocity_dense_21_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_30_kernel_read_readvariableop)savev2_conv2d_30_bias_read_readvariableop+savev2_conv2d_31_kernel_read_readvariableop)savev2_conv2d_31_bias_read_readvariableop+savev2_conv2d_32_kernel_read_readvariableop)savev2_conv2d_32_bias_read_readvariableop*savev2_dense_20_kernel_read_readvariableop(savev2_dense_20_bias_read_readvariableop*savev2_dense_21_kernel_read_readvariableop(savev2_dense_21_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop<savev2_rmsprop_velocity_conv2d_30_kernel_read_readvariableop:savev2_rmsprop_velocity_conv2d_30_bias_read_readvariableop<savev2_rmsprop_velocity_conv2d_31_kernel_read_readvariableop:savev2_rmsprop_velocity_conv2d_31_bias_read_readvariableop<savev2_rmsprop_velocity_conv2d_32_kernel_read_readvariableop:savev2_rmsprop_velocity_conv2d_32_bias_read_readvariableop;savev2_rmsprop_velocity_dense_20_kernel_read_readvariableop9savev2_rmsprop_velocity_dense_20_bias_read_readvariableop;savev2_rmsprop_velocity_dense_21_kernel_read_readvariableop9savev2_rmsprop_velocity_dense_21_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *)
dtypes
2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :@:@:@ : : ::	?+@:@:@:: : :@:@:@ : : ::	?+@:@:@:: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@ : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::%!

_output_shapes
:	?+@: 

_output_shapes
:@:$	 

_output_shapes

:@: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@ : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::%!

_output_shapes
:	?+@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
M
1__inference_max_pooling2d_31_layer_call_fn_458426

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_457782?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_10_layer_call_fn_458233

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	?+@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_458040o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????l: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????l
 
_user_specified_nameinputs
?(
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_458121
conv2d_30_input*
conv2d_30_458091:@
conv2d_30_458093:@*
conv2d_31_458097:@ 
conv2d_31_458099: *
conv2d_32_458103: 
conv2d_32_458105:"
dense_20_458110:	?+@
dense_20_458112:@!
dense_21_458115:@
dense_21_458117:
identity??!conv2d_30/StatefulPartitionedCall?!conv2d_31/StatefulPartitionedCall?!conv2d_32/StatefulPartitionedCall? dense_20/StatefulPartitionedCall? dense_21/StatefulPartitionedCall?
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCallconv2d_30_inputconv2d_30_458091conv2d_30_458093*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????k@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_30_layer_call_and_return_conditional_losses_457815?
 max_pooling2d_30/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????y5@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_457770?
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_30/PartitionedCall:output:0conv2d_31_458097conv2d_31_458099*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????x4 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_31_layer_call_and_return_conditional_losses_457833?
 max_pooling2d_31/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????< * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_457782?
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_31/PartitionedCall:output:0conv2d_32_458103conv2d_32_458105*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????;*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_32_layer_call_and_return_conditional_losses_457851?
 max_pooling2d_32/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_457794?
flatten_10/PartitionedCallPartitionedCall)max_pooling2d_32/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????+* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_457864?
 dense_20/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_20_458110dense_20_458112*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_457877?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_458115dense_21_458117*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_457894x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????l: : : : : : : : : : 2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:a ]
0
_output_shapes
:??????????l
)
_user_specified_nameconv2d_30_input
?

?
D__inference_dense_21_layer_call_and_return_conditional_losses_458512

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
*__inference_conv2d_31_layer_call_fn_458410

inputs!
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????x4 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_31_layer_call_and_return_conditional_losses_457833w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????x4 `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????y5@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????y5@
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_458431

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?'
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_457901

inputs*
conv2d_30_457816:@
conv2d_30_457818:@*
conv2d_31_457834:@ 
conv2d_31_457836: *
conv2d_32_457852: 
conv2d_32_457854:"
dense_20_457878:	?+@
dense_20_457880:@!
dense_21_457895:@
dense_21_457897:
identity??!conv2d_30/StatefulPartitionedCall?!conv2d_31/StatefulPartitionedCall?!conv2d_32/StatefulPartitionedCall? dense_20/StatefulPartitionedCall? dense_21/StatefulPartitionedCall?
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_30_457816conv2d_30_457818*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????k@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_30_layer_call_and_return_conditional_losses_457815?
 max_pooling2d_30/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????y5@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_457770?
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_30/PartitionedCall:output:0conv2d_31_457834conv2d_31_457836*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????x4 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_31_layer_call_and_return_conditional_losses_457833?
 max_pooling2d_31/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????< * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_457782?
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_31/PartitionedCall:output:0conv2d_32_457852conv2d_32_457854*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????;*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_32_layer_call_and_return_conditional_losses_457851?
 max_pooling2d_32/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_457794?
flatten_10/PartitionedCallPartitionedCall)max_pooling2d_32/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????+* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_457864?
 dense_20/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_20_457878dense_20_457880*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_457877?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_457895dense_21_457897*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_457894x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????l: : : : : : : : : : 2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:X T
0
_output_shapes
:??????????l
 
_user_specified_nameinputs
?
K
#__inference__update_step_xla_458341
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
?
W
#__inference__update_step_xla_458346
gradient"
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: : *
	_noinline(:P L
&
_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
?
h
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_457770

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_10_layer_call_fn_458208

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	?+@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_457901o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????l: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????l
 
_user_specified_nameinputs
?(
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_458154
conv2d_30_input*
conv2d_30_458124:@
conv2d_30_458126:@*
conv2d_31_458130:@ 
conv2d_31_458132: *
conv2d_32_458136: 
conv2d_32_458138:"
dense_20_458143:	?+@
dense_20_458145:@!
dense_21_458148:@
dense_21_458150:
identity??!conv2d_30/StatefulPartitionedCall?!conv2d_31/StatefulPartitionedCall?!conv2d_32/StatefulPartitionedCall? dense_20/StatefulPartitionedCall? dense_21/StatefulPartitionedCall?
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCallconv2d_30_inputconv2d_30_458124conv2d_30_458126*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????k@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_30_layer_call_and_return_conditional_losses_457815?
 max_pooling2d_30/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????y5@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_457770?
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_30/PartitionedCall:output:0conv2d_31_458130conv2d_31_458132*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????x4 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_31_layer_call_and_return_conditional_losses_457833?
 max_pooling2d_31/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????< * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_457782?
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_31/PartitionedCall:output:0conv2d_32_458136conv2d_32_458138*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????;*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_32_layer_call_and_return_conditional_losses_457851?
 max_pooling2d_32/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_457794?
flatten_10/PartitionedCallPartitionedCall)max_pooling2d_32/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????+* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_457864?
 dense_20/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_20_458143dense_20_458145*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_457877?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_458148dense_21_458150*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_457894x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????l: : : : : : : : : : 2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:a ]
0
_output_shapes
:??????????l
)
_user_specified_nameconv2d_30_input
?
?
E__inference_conv2d_31_layer_call_and_return_conditional_losses_457833

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????x4 *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????x4 X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????x4 i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????x4 w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????y5@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????y5@
 
_user_specified_nameinputs
?

?
.__inference_sequential_10_layer_call_fn_458088
conv2d_30_input!
unknown:@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	?+@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_30_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_458040o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????l: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:??????????l
)
_user_specified_nameconv2d_30_input
?'
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_458040

inputs*
conv2d_30_458010:@
conv2d_30_458012:@*
conv2d_31_458016:@ 
conv2d_31_458018: *
conv2d_32_458022: 
conv2d_32_458024:"
dense_20_458029:	?+@
dense_20_458031:@!
dense_21_458034:@
dense_21_458036:
identity??!conv2d_30/StatefulPartitionedCall?!conv2d_31/StatefulPartitionedCall?!conv2d_32/StatefulPartitionedCall? dense_20/StatefulPartitionedCall? dense_21/StatefulPartitionedCall?
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_30_458010conv2d_30_458012*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????k@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_30_layer_call_and_return_conditional_losses_457815?
 max_pooling2d_30/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????y5@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_457770?
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_30/PartitionedCall:output:0conv2d_31_458016conv2d_31_458018*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????x4 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_31_layer_call_and_return_conditional_losses_457833?
 max_pooling2d_31/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????< * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_457782?
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_31/PartitionedCall:output:0conv2d_32_458022conv2d_32_458024*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????;*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_32_layer_call_and_return_conditional_losses_457851?
 max_pooling2d_32/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_457794?
flatten_10/PartitionedCallPartitionedCall)max_pooling2d_32/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????+* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_457864?
 dense_20/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_20_458029dense_20_458031*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_457877?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_458034dense_21_458036*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_457894x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????l: : : : : : : : : : 2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:X T
0
_output_shapes
:??????????l
 
_user_specified_nameinputs
?

?
.__inference_sequential_10_layer_call_fn_457924
conv2d_30_input!
unknown:@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	?+@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_30_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_457901o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????l: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:??????????l
)
_user_specified_nameconv2d_30_input
?
K
#__inference__update_step_xla_458361
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable"?
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
T
conv2d_30_inputA
!serving_default_conv2d_30_input:0??????????l<
dense_210
StatefulPartitionedCall:0?????????tensorflow/serving/predict:ć
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_layer
?
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias
 *_jit_compiled_convolution_op"
_tf_keras_layer
?
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
?
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias
 9_jit_compiled_convolution_op"
_tf_keras_layer
?
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
?
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias"
_tf_keras_layer
?
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses

Tkernel
Ubias"
_tf_keras_layer
f
0
1
(2
)3
74
85
L6
M7
T8
U9"
trackable_list_wrapper
f
0
1
(2
)3
74
85
L6
M7
T8
U9"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
[trace_0
\trace_1
]trace_2
^trace_32?
.__inference_sequential_10_layer_call_fn_457924
.__inference_sequential_10_layer_call_fn_458208
.__inference_sequential_10_layer_call_fn_458233
.__inference_sequential_10_layer_call_fn_458088?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z[trace_0z\trace_1z]trace_2z^trace_3
?
_trace_0
`trace_1
atrace_2
btrace_32?
I__inference_sequential_10_layer_call_and_return_conditional_losses_458277
I__inference_sequential_10_layer_call_and_return_conditional_losses_458321
I__inference_sequential_10_layer_call_and_return_conditional_losses_458121
I__inference_sequential_10_layer_call_and_return_conditional_losses_458154?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z_trace_0z`trace_1zatrace_2zbtrace_3
?B?
!__inference__wrapped_model_457761conv2d_30_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
c
_variables
d_iterations
e_learning_rate
f_index_dict
g_velocities
h
_momentums
i_average_gradients
j_update_step_xla"
experimentalOptimizer
,
kserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
qtrace_02?
*__inference_conv2d_30_layer_call_fn_458380?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zqtrace_0
?
rtrace_02?
E__inference_conv2d_30_layer_call_and_return_conditional_losses_458391?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zrtrace_0
*:(@2conv2d_30/kernel
:@2conv2d_30/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
?
xtrace_02?
1__inference_max_pooling2d_30_layer_call_fn_458396?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zxtrace_0
?
ytrace_02?
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_458401?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zytrace_0
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
?
trace_02?
*__inference_conv2d_31_layer_call_fn_458410?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ztrace_0
?
?trace_02?
E__inference_conv2d_31_layer_call_and_return_conditional_losses_458421?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
*:(@ 2conv2d_31/kernel
: 2conv2d_31/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
1__inference_max_pooling2d_31_layer_call_fn_458426?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_458431?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
*__inference_conv2d_32_layer_call_fn_458440?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
E__inference_conv2d_32_layer_call_and_return_conditional_losses_458451?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
*:( 2conv2d_32/kernel
:2conv2d_32/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
1__inference_max_pooling2d_32_layer_call_fn_458456?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_458461?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
+__inference_flatten_10_layer_call_fn_458466?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
F__inference_flatten_10_layer_call_and_return_conditional_losses_458472?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_dense_20_layer_call_fn_458481?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_dense_20_layer_call_and_return_conditional_losses_458492?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
": 	?+@2dense_20/kernel
:@2dense_20/bias
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_dense_21_layer_call_fn_458501?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_dense_21_layer_call_and_return_conditional_losses_458512?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
!:@2dense_21/kernel
:2dense_21/bias
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
.__inference_sequential_10_layer_call_fn_457924conv2d_30_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
.__inference_sequential_10_layer_call_fn_458208inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
.__inference_sequential_10_layer_call_fn_458233inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
.__inference_sequential_10_layer_call_fn_458088conv2d_30_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
I__inference_sequential_10_layer_call_and_return_conditional_losses_458277inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
I__inference_sequential_10_layer_call_and_return_conditional_losses_458321inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
I__inference_sequential_10_layer_call_and_return_conditional_losses_458121conv2d_30_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
I__inference_sequential_10_layer_call_and_return_conditional_losses_458154conv2d_30_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
x
d0
?1
?2
?3
?4
?5
?6
?7
?8
?9
?10"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
p
?0
?1
?2
?3
?4
?5
?6
?7
?8
?9"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?trace_0
?trace_1
?trace_2
?trace_3
?trace_4
?trace_5
?trace_6
?trace_7
?trace_8
?trace_92?
#__inference__update_step_xla_458326
#__inference__update_step_xla_458331
#__inference__update_step_xla_458336
#__inference__update_step_xla_458341
#__inference__update_step_xla_458346
#__inference__update_step_xla_458351
#__inference__update_step_xla_458356
#__inference__update_step_xla_458361
#__inference__update_step_xla_458366
#__inference__update_step_xla_458371?
???
FullArgSpec2
args*?'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0z?trace_0z?trace_1z?trace_2z?trace_3z?trace_4z?trace_5z?trace_6z?trace_7z?trace_8z?trace_9
?B?
$__inference_signature_wrapper_458183conv2d_30_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
*__inference_conv2d_30_layer_call_fn_458380inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
E__inference_conv2d_30_layer_call_and_return_conditional_losses_458391inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
1__inference_max_pooling2d_30_layer_call_fn_458396inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_458401inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
*__inference_conv2d_31_layer_call_fn_458410inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
E__inference_conv2d_31_layer_call_and_return_conditional_losses_458421inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
1__inference_max_pooling2d_31_layer_call_fn_458426inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_458431inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
*__inference_conv2d_32_layer_call_fn_458440inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
E__inference_conv2d_32_layer_call_and_return_conditional_losses_458451inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
1__inference_max_pooling2d_32_layer_call_fn_458456inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_458461inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
+__inference_flatten_10_layer_call_fn_458466inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
F__inference_flatten_10_layer_call_and_return_conditional_losses_458472inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
)__inference_dense_20_layer_call_fn_458481inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_dense_20_layer_call_and_return_conditional_losses_458492inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
)__inference_dense_21_layer_call_fn_458501inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_dense_21_layer_call_and_return_conditional_losses_458512inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
R
?	variables
?	keras_api

?total

?count"
_tf_keras_metric
c
?	variables
?	keras_api

?total

?count
?
_fn_kwargs"
_tf_keras_metric
9:7@2!RMSprop/velocity/conv2d_30/kernel
+:)@2RMSprop/velocity/conv2d_30/bias
9:7@ 2!RMSprop/velocity/conv2d_31/kernel
+:) 2RMSprop/velocity/conv2d_31/bias
9:7 2!RMSprop/velocity/conv2d_32/kernel
+:)2RMSprop/velocity/conv2d_32/bias
1:/	?+@2 RMSprop/velocity/dense_20/kernel
*:(@2RMSprop/velocity/dense_20/bias
0:.@2 RMSprop/velocity/dense_21/kernel
*:(2RMSprop/velocity/dense_21/bias
?B?
#__inference__update_step_xla_458326gradientvariable"?
???
FullArgSpec2
args*?'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference__update_step_xla_458331gradientvariable"?
???
FullArgSpec2
args*?'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference__update_step_xla_458336gradientvariable"?
???
FullArgSpec2
args*?'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference__update_step_xla_458341gradientvariable"?
???
FullArgSpec2
args*?'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference__update_step_xla_458346gradientvariable"?
???
FullArgSpec2
args*?'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference__update_step_xla_458351gradientvariable"?
???
FullArgSpec2
args*?'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference__update_step_xla_458356gradientvariable"?
???
FullArgSpec2
args*?'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference__update_step_xla_458361gradientvariable"?
???
FullArgSpec2
args*?'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference__update_step_xla_458366gradientvariable"?
???
FullArgSpec2
args*?'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference__update_step_xla_458371gradientvariable"?
???
FullArgSpec2
args*?'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper?
#__inference__update_step_xla_458326~x?u
n?k
!?
gradient@
<?9	%?"
?@
?
p
` VariableSpec 
`??ȓ???
? "
 ?
#__inference__update_step_xla_458331f`?]
V?S
?
gradient@
0?-	?
?@
?
p
` VariableSpec 
`???????
? "
 ?
#__inference__update_step_xla_458336~x?u
n?k
!?
gradient@ 
<?9	%?"
?@ 
?
p
` VariableSpec 
`???????
? "
 ?
#__inference__update_step_xla_458341f`?]
V?S
?
gradient 
0?-	?
? 
?
p
` VariableSpec 
`???????
? "
 ?
#__inference__update_step_xla_458346~x?u
n?k
!?
gradient 
<?9	%?"
? 
?
p
` VariableSpec 
`??ʑ???
? "
 ?
#__inference__update_step_xla_458351f`?]
V?S
?
gradient
0?-	?
?
?
p
` VariableSpec 
`??ʑ???
? "
 ?
#__inference__update_step_xla_458356pj?g
`?]
?
gradient	?+@
5?2	?
?	?+@
?
p
` VariableSpec 
`??ʑ???
? "
 ?
#__inference__update_step_xla_458361f`?]
V?S
?
gradient@
0?-	?
?@
?
p
` VariableSpec 
`??ʑ???
? "
 ?
#__inference__update_step_xla_458366nh?e
^?[
?
gradient@
4?1	?
?@
?
p
` VariableSpec 
`??֗???
? "
 ?
#__inference__update_step_xla_458371f`?]
V?S
?
gradient
0?-	?
?
?
p
` VariableSpec 
`??֗???
? "
 ?
!__inference__wrapped_model_457761?
()78LMTUA?>
7?4
2?/
conv2d_30_input??????????l
? "3?0
.
dense_21"?
dense_21??????????
E__inference_conv2d_30_layer_call_and_return_conditional_losses_458391u8?5
.?+
)?&
inputs??????????l
? "5?2
+?(
tensor_0??????????k@
? ?
*__inference_conv2d_30_layer_call_fn_458380j8?5
.?+
)?&
inputs??????????l
? "*?'
unknown??????????k@?
E__inference_conv2d_31_layer_call_and_return_conditional_losses_458421s()7?4
-?*
(?%
inputs?????????y5@
? "4?1
*?'
tensor_0?????????x4 
? ?
*__inference_conv2d_31_layer_call_fn_458410h()7?4
-?*
(?%
inputs?????????y5@
? ")?&
unknown?????????x4 ?
E__inference_conv2d_32_layer_call_and_return_conditional_losses_458451s787?4
-?*
(?%
inputs?????????< 
? "4?1
*?'
tensor_0?????????;
? ?
*__inference_conv2d_32_layer_call_fn_458440h787?4
-?*
(?%
inputs?????????< 
? ")?&
unknown?????????;?
D__inference_dense_20_layer_call_and_return_conditional_losses_458492dLM0?-
&?#
!?
inputs??????????+
? ",?)
"?
tensor_0?????????@
? ?
)__inference_dense_20_layer_call_fn_458481YLM0?-
&?#
!?
inputs??????????+
? "!?
unknown?????????@?
D__inference_dense_21_layer_call_and_return_conditional_losses_458512cTU/?,
%?"
 ?
inputs?????????@
? ",?)
"?
tensor_0?????????
? ?
)__inference_dense_21_layer_call_fn_458501XTU/?,
%?"
 ?
inputs?????????@
? "!?
unknown??????????
F__inference_flatten_10_layer_call_and_return_conditional_losses_458472h7?4
-?*
(?%
inputs?????????
? "-?*
#? 
tensor_0??????????+
? ?
+__inference_flatten_10_layer_call_fn_458466]7?4
-?*
(?%
inputs?????????
? ""?
unknown??????????+?
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_458401?R?O
H?E
C?@
inputs4????????????????????????????????????
? "O?L
E?B
tensor_04????????????????????????????????????
? ?
1__inference_max_pooling2d_30_layer_call_fn_458396?R?O
H?E
C?@
inputs4????????????????????????????????????
? "D?A
unknown4?????????????????????????????????????
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_458431?R?O
H?E
C?@
inputs4????????????????????????????????????
? "O?L
E?B
tensor_04????????????????????????????????????
? ?
1__inference_max_pooling2d_31_layer_call_fn_458426?R?O
H?E
C?@
inputs4????????????????????????????????????
? "D?A
unknown4?????????????????????????????????????
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_458461?R?O
H?E
C?@
inputs4????????????????????????????????????
? "O?L
E?B
tensor_04????????????????????????????????????
? ?
1__inference_max_pooling2d_32_layer_call_fn_458456?R?O
H?E
C?@
inputs4????????????????????????????????????
? "D?A
unknown4?????????????????????????????????????
I__inference_sequential_10_layer_call_and_return_conditional_losses_458121?
()78LMTUI?F
??<
2?/
conv2d_30_input??????????l
p 

 
? ",?)
"?
tensor_0?????????
? ?
I__inference_sequential_10_layer_call_and_return_conditional_losses_458154?
()78LMTUI?F
??<
2?/
conv2d_30_input??????????l
p

 
? ",?)
"?
tensor_0?????????
? ?
I__inference_sequential_10_layer_call_and_return_conditional_losses_458277|
()78LMTU@?=
6?3
)?&
inputs??????????l
p 

 
? ",?)
"?
tensor_0?????????
? ?
I__inference_sequential_10_layer_call_and_return_conditional_losses_458321|
()78LMTU@?=
6?3
)?&
inputs??????????l
p

 
? ",?)
"?
tensor_0?????????
? ?
.__inference_sequential_10_layer_call_fn_457924z
()78LMTUI?F
??<
2?/
conv2d_30_input??????????l
p 

 
? "!?
unknown??????????
.__inference_sequential_10_layer_call_fn_458088z
()78LMTUI?F
??<
2?/
conv2d_30_input??????????l
p

 
? "!?
unknown??????????
.__inference_sequential_10_layer_call_fn_458208q
()78LMTU@?=
6?3
)?&
inputs??????????l
p 

 
? "!?
unknown??????????
.__inference_sequential_10_layer_call_fn_458233q
()78LMTU@?=
6?3
)?&
inputs??????????l
p

 
? "!?
unknown??????????
$__inference_signature_wrapper_458183?
()78LMTUT?Q
? 
J?G
E
conv2d_30_input2?/
conv2d_30_input??????????l"3?0
.
dense_21"?
dense_21?????????