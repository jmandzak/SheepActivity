пЮ	
Їі
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58ѓА
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

RMSprop/velocity/dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name RMSprop/velocity/dense_21/bias

2RMSprop/velocity/dense_21/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/dense_21/bias*
_output_shapes
:*
dtype0

 RMSprop/velocity/dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*1
shared_name" RMSprop/velocity/dense_21/kernel

4RMSprop/velocity/dense_21/kernel/Read/ReadVariableOpReadVariableOp RMSprop/velocity/dense_21/kernel*
_output_shapes

:@*
dtype0

RMSprop/velocity/dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name RMSprop/velocity/dense_20/bias

2RMSprop/velocity/dense_20/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/dense_20/bias*
_output_shapes
:@*
dtype0

 RMSprop/velocity/dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Р+@*1
shared_name" RMSprop/velocity/dense_20/kernel

4RMSprop/velocity/dense_20/kernel/Read/ReadVariableOpReadVariableOp RMSprop/velocity/dense_20/kernel*
_output_shapes
:	Р+@*
dtype0

RMSprop/velocity/conv2d_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!RMSprop/velocity/conv2d_32/bias

3RMSprop/velocity/conv2d_32/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/conv2d_32/bias*
_output_shapes
:*
dtype0
І
!RMSprop/velocity/conv2d_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!RMSprop/velocity/conv2d_32/kernel

5RMSprop/velocity/conv2d_32/kernel/Read/ReadVariableOpReadVariableOp!RMSprop/velocity/conv2d_32/kernel*&
_output_shapes
: *
dtype0

RMSprop/velocity/conv2d_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!RMSprop/velocity/conv2d_31/bias

3RMSprop/velocity/conv2d_31/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/conv2d_31/bias*
_output_shapes
: *
dtype0
І
!RMSprop/velocity/conv2d_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *2
shared_name#!RMSprop/velocity/conv2d_31/kernel

5RMSprop/velocity/conv2d_31/kernel/Read/ReadVariableOpReadVariableOp!RMSprop/velocity/conv2d_31/kernel*&
_output_shapes
:@ *
dtype0

RMSprop/velocity/conv2d_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!RMSprop/velocity/conv2d_30/bias

3RMSprop/velocity/conv2d_30/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/conv2d_30/bias*
_output_shapes
:@*
dtype0
І
!RMSprop/velocity/conv2d_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!RMSprop/velocity/conv2d_30/kernel

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
shape:	Р+@* 
shared_namedense_20/kernel
t
#dense_20/kernel/Read/ReadVariableOpReadVariableOpdense_20/kernel*
_output_shapes
:	Р+@*
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

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

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

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

serving_default_conv2d_30_inputPlaceholder*0
_output_shapes
:џџџџџџџџџѓl*
dtype0*%
shape:џџџџџџџџџѓl
є
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_30_inputconv2d_30/kernelconv2d_30/biasconv2d_31/kernelconv2d_31/biasconv2d_32/kernelconv2d_32/biasdense_20/kerneldense_20/biasdense_21/kerneldense_21/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_458183

NoOpNoOp
ЎJ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*щI
valueпIBмI BеI
У
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
Ш
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*

	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses* 
Ш
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias
 *_jit_compiled_convolution_op*

+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses* 
Ш
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias
 9_jit_compiled_convolution_op*

:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses* 

@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses* 
І
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias*
І
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
А
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

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

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

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

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
trace_0* 
`Z
VARIABLE_VALUEconv2d_31/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_31/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

70
81*

70
81*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*

trace_0* 

trace_0* 
`Z
VARIABLE_VALUEconv2d_32/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_32/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

L0
M1*

L0
M1*
* 

non_trainable_variables
layers
metrics
  layer_regularization_losses
Ёlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*

Ђtrace_0* 

Ѓtrace_0* 
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

Єnon_trainable_variables
Ѕlayers
Іmetrics
 Їlayer_regularization_losses
Јlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses*

Љtrace_0* 

Њtrace_0* 
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
Ћ0
Ќ1*
* 
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
­1
Ў2
Џ3
А4
Б5
В6
Г7
Д8
Е9
Ж10*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
T
­0
Ў1
Џ2
А3
Б4
В5
Г6
Д7
Е8
Ж9*
* 
* 

Зtrace_0
Иtrace_1
Йtrace_2
Кtrace_3
Лtrace_4
Мtrace_5
Нtrace_6
Оtrace_7
Пtrace_8
Рtrace_9* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
С	variables
Т	keras_api

Уtotal

Фcount*
M
Х	variables
Ц	keras_api

Чtotal

Шcount
Щ
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
У0
Ф1*

С	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Ч0
Ш1*

Х	variables*
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
э

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
GPU 2J 8 *(
f#R!
__inference__traced_save_458613
р
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_458701к

h
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_458461

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
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

ў
E__inference_conv2d_30_layer_call_and_return_conditional_losses_458391

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџђk@*
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
:џџџџџџџџџђk@Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџђk@j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџђk@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџѓl: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџѓl
 
_user_specified_nameinputs
а
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
ТB


!__inference__wrapped_model_457761
conv2d_30_inputP
6sequential_10_conv2d_30_conv2d_readvariableop_resource:@E
7sequential_10_conv2d_30_biasadd_readvariableop_resource:@P
6sequential_10_conv2d_31_conv2d_readvariableop_resource:@ E
7sequential_10_conv2d_31_biasadd_readvariableop_resource: P
6sequential_10_conv2d_32_conv2d_readvariableop_resource: E
7sequential_10_conv2d_32_biasadd_readvariableop_resource:H
5sequential_10_dense_20_matmul_readvariableop_resource:	Р+@D
6sequential_10_dense_20_biasadd_readvariableop_resource:@G
5sequential_10_dense_21_matmul_readvariableop_resource:@D
6sequential_10_dense_21_biasadd_readvariableop_resource:
identityЂ.sequential_10/conv2d_30/BiasAdd/ReadVariableOpЂ-sequential_10/conv2d_30/Conv2D/ReadVariableOpЂ.sequential_10/conv2d_31/BiasAdd/ReadVariableOpЂ-sequential_10/conv2d_31/Conv2D/ReadVariableOpЂ.sequential_10/conv2d_32/BiasAdd/ReadVariableOpЂ-sequential_10/conv2d_32/Conv2D/ReadVariableOpЂ-sequential_10/dense_20/BiasAdd/ReadVariableOpЂ,sequential_10/dense_20/MatMul/ReadVariableOpЂ-sequential_10/dense_21/BiasAdd/ReadVariableOpЂ,sequential_10/dense_21/MatMul/ReadVariableOpЌ
-sequential_10/conv2d_30/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0д
sequential_10/conv2d_30/Conv2DConv2Dconv2d_30_input5sequential_10/conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџђk@*
paddingVALID*
strides
Ђ
.sequential_10/conv2d_30/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ц
sequential_10/conv2d_30/BiasAddBiasAdd'sequential_10/conv2d_30/Conv2D:output:06sequential_10/conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџђk@
sequential_10/conv2d_30/ReluRelu(sequential_10/conv2d_30/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџђk@Ъ
&sequential_10/max_pooling2d_30/MaxPoolMaxPool*sequential_10/conv2d_30/Relu:activations:0*/
_output_shapes
:џџџџџџџџџy5@*
ksize
*
paddingVALID*
strides
Ќ
-sequential_10/conv2d_31/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0ѓ
sequential_10/conv2d_31/Conv2DConv2D/sequential_10/max_pooling2d_30/MaxPool:output:05sequential_10/conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџx4 *
paddingVALID*
strides
Ђ
.sequential_10/conv2d_31/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_31_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Х
sequential_10/conv2d_31/BiasAddBiasAdd'sequential_10/conv2d_31/Conv2D:output:06sequential_10/conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџx4 
sequential_10/conv2d_31/ReluRelu(sequential_10/conv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџx4 Ъ
&sequential_10/max_pooling2d_31/MaxPoolMaxPool*sequential_10/conv2d_31/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ< *
ksize
*
paddingVALID*
strides
Ќ
-sequential_10/conv2d_32/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ѓ
sequential_10/conv2d_32/Conv2DConv2D/sequential_10/max_pooling2d_31/MaxPool:output:05sequential_10/conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ;*
paddingVALID*
strides
Ђ
.sequential_10/conv2d_32/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Х
sequential_10/conv2d_32/BiasAddBiasAdd'sequential_10/conv2d_32/Conv2D:output:06sequential_10/conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ;
sequential_10/conv2d_32/ReluRelu(sequential_10/conv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ;Ъ
&sequential_10/max_pooling2d_32/MaxPoolMaxPool*sequential_10/conv2d_32/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
o
sequential_10/flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџР  И
 sequential_10/flatten_10/ReshapeReshape/sequential_10/max_pooling2d_32/MaxPool:output:0'sequential_10/flatten_10/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџР+Ѓ
,sequential_10/dense_20/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_20_matmul_readvariableop_resource*
_output_shapes
:	Р+@*
dtype0К
sequential_10/dense_20/MatMulMatMul)sequential_10/flatten_10/Reshape:output:04sequential_10/dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ 
-sequential_10/dense_20/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Л
sequential_10/dense_20/BiasAddBiasAdd'sequential_10/dense_20/MatMul:product:05sequential_10/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@~
sequential_10/dense_20/ReluRelu'sequential_10/dense_20/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ђ
,sequential_10/dense_21/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_21_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0К
sequential_10/dense_21/MatMulMatMul)sequential_10/dense_20/Relu:activations:04sequential_10/dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
-sequential_10/dense_21/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
sequential_10/dense_21/BiasAddBiasAdd'sequential_10/dense_21/MatMul:product:05sequential_10/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
sequential_10/dense_21/SigmoidSigmoid'sequential_10/dense_21/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџq
IdentityIdentity"sequential_10/dense_21/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЇ
NoOpNoOp/^sequential_10/conv2d_30/BiasAdd/ReadVariableOp.^sequential_10/conv2d_30/Conv2D/ReadVariableOp/^sequential_10/conv2d_31/BiasAdd/ReadVariableOp.^sequential_10/conv2d_31/Conv2D/ReadVariableOp/^sequential_10/conv2d_32/BiasAdd/ReadVariableOp.^sequential_10/conv2d_32/Conv2D/ReadVariableOp.^sequential_10/dense_20/BiasAdd/ReadVariableOp-^sequential_10/dense_20/MatMul/ReadVariableOp.^sequential_10/dense_21/BiasAdd/ReadVariableOp-^sequential_10/dense_21/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:џџџџџџџџџѓl: : : : : : : : : : 2`
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
:џџџџџџџџџѓl
)
_user_specified_nameconv2d_30_input
а
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


і
D__inference_dense_20_layer_call_and_return_conditional_losses_458492

inputs1
matmul_readvariableop_resource:	Р+@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Р+@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџР+: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџР+
 
_user_specified_nameinputs
Ш
b
F__inference_flatten_10_layer_call_and_return_conditional_losses_458472

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџР  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџР+Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџР+"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Г
G
+__inference_flatten_10_layer_call_fn_458466

inputs
identityВ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџР+* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_457864a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџР+"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
К
M
1__inference_max_pooling2d_32_layer_call_fn_458456

inputs
identityк
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
GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_457794
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
Ќ
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
ъp
г
"__inference__traced_restore_458701
file_prefix;
!assignvariableop_conv2d_30_kernel:@/
!assignvariableop_1_conv2d_30_bias:@=
#assignvariableop_2_conv2d_31_kernel:@ /
!assignvariableop_3_conv2d_31_bias: =
#assignvariableop_4_conv2d_32_kernel: /
!assignvariableop_5_conv2d_32_bias:5
"assignvariableop_6_dense_20_kernel:	Р+@.
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
4assignvariableop_18_rmsprop_velocity_dense_20_kernel:	Р+@@
2assignvariableop_19_rmsprop_velocity_dense_20_bias:@F
4assignvariableop_20_rmsprop_velocity_dense_21_kernel:@@
2assignvariableop_21_rmsprop_velocity_dense_21_bias:%
assignvariableop_22_total_1: %
assignvariableop_23_count_1: #
assignvariableop_24_total: #
assignvariableop_25_count: 
identity_27ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9ё
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHІ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B І
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_30_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_30_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_31_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_31_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_32_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_32_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_20_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_20_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_21_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_21_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:Ж
AssignVariableOp_10AssignVariableOpassignvariableop_10_iterationIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_11AssignVariableOp!assignvariableop_11_learning_rateIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_12AssignVariableOp5assignvariableop_12_rmsprop_velocity_conv2d_30_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_13AssignVariableOp3assignvariableop_13_rmsprop_velocity_conv2d_30_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_14AssignVariableOp5assignvariableop_14_rmsprop_velocity_conv2d_31_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_15AssignVariableOp3assignvariableop_15_rmsprop_velocity_conv2d_31_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_16AssignVariableOp5assignvariableop_16_rmsprop_velocity_conv2d_32_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_17AssignVariableOp3assignvariableop_17_rmsprop_velocity_conv2d_32_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_18AssignVariableOp4assignvariableop_18_rmsprop_velocity_dense_20_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_19AssignVariableOp2assignvariableop_19_rmsprop_velocity_dense_20_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_20AssignVariableOp4assignvariableop_20_rmsprop_velocity_dense_21_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_21AssignVariableOp2assignvariableop_21_rmsprop_velocity_dense_21_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_22AssignVariableOpassignvariableop_22_total_1Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_23AssignVariableOpassignvariableop_23_count_1Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_24AssignVariableOpassignvariableop_24_totalIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_25AssignVariableOpassignvariableop_25_countIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 
Identity_26Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_27IdentityIdentity_26:output:0^NoOp_1*
T0*
_output_shapes
: ј
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
К
M
1__inference_max_pooling2d_30_layer_call_fn_458396

inputs
identityк
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
GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_457770
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

ў
E__inference_conv2d_31_layer_call_and_return_conditional_losses_458421

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџx4 *
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
:џџџџџџџџџx4 X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџx4 i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџx4 w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџy5@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџy5@
 
_user_specified_nameinputs

ў
E__inference_conv2d_32_layer_call_and_return_conditional_losses_457851

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ;*
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
:џџџџџџџџџ;X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ;i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ;w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ< : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ< 
 
_user_specified_nameinputs
Л5

I__inference_sequential_10_layer_call_and_return_conditional_losses_458321

inputsB
(conv2d_30_conv2d_readvariableop_resource:@7
)conv2d_30_biasadd_readvariableop_resource:@B
(conv2d_31_conv2d_readvariableop_resource:@ 7
)conv2d_31_biasadd_readvariableop_resource: B
(conv2d_32_conv2d_readvariableop_resource: 7
)conv2d_32_biasadd_readvariableop_resource::
'dense_20_matmul_readvariableop_resource:	Р+@6
(dense_20_biasadd_readvariableop_resource:@9
'dense_21_matmul_readvariableop_resource:@6
(dense_21_biasadd_readvariableop_resource:
identityЂ conv2d_30/BiasAdd/ReadVariableOpЂconv2d_30/Conv2D/ReadVariableOpЂ conv2d_31/BiasAdd/ReadVariableOpЂconv2d_31/Conv2D/ReadVariableOpЂ conv2d_32/BiasAdd/ReadVariableOpЂconv2d_32/Conv2D/ReadVariableOpЂdense_20/BiasAdd/ReadVariableOpЂdense_20/MatMul/ReadVariableOpЂdense_21/BiasAdd/ReadVariableOpЂdense_21/MatMul/ReadVariableOp
conv2d_30/Conv2D/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Џ
conv2d_30/Conv2DConv2Dinputs'conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџђk@*
paddingVALID*
strides

 conv2d_30/BiasAdd/ReadVariableOpReadVariableOp)conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_30/BiasAddBiasAddconv2d_30/Conv2D:output:0(conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџђk@m
conv2d_30/ReluReluconv2d_30/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџђk@Ў
max_pooling2d_30/MaxPoolMaxPoolconv2d_30/Relu:activations:0*/
_output_shapes
:џџџџџџџџџy5@*
ksize
*
paddingVALID*
strides

conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Щ
conv2d_31/Conv2DConv2D!max_pooling2d_30/MaxPool:output:0'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџx4 *
paddingVALID*
strides

 conv2d_31/BiasAdd/ReadVariableOpReadVariableOp)conv2d_31_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_31/BiasAddBiasAddconv2d_31/Conv2D:output:0(conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџx4 l
conv2d_31/ReluReluconv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџx4 Ў
max_pooling2d_31/MaxPoolMaxPoolconv2d_31/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ< *
ksize
*
paddingVALID*
strides

conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
conv2d_32/Conv2DConv2D!max_pooling2d_31/MaxPool:output:0'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ;*
paddingVALID*
strides

 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ;l
conv2d_32/ReluReluconv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ;Ў
max_pooling2d_32/MaxPoolMaxPoolconv2d_32/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
a
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџР  
flatten_10/ReshapeReshape!max_pooling2d_32/MaxPool:output:0flatten_10/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџР+
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes
:	Р+@*
dtype0
dense_20/MatMulMatMulflatten_10/Reshape:output:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@b
dense_20/ReluReludense_20/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_21/MatMulMatMuldense_20/Relu:activations:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
dense_21/SigmoidSigmoiddense_21/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
IdentityIdentitydense_21/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp!^conv2d_30/BiasAdd/ReadVariableOp ^conv2d_30/Conv2D/ReadVariableOp!^conv2d_31/BiasAdd/ReadVariableOp ^conv2d_31/Conv2D/ReadVariableOp!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:џџџџџџџџџѓl: : : : : : : : : : 2D
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
:џџџџџџџџџѓl
 
_user_specified_nameinputs
И
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


і
D__inference_dense_20_layer_call_and_return_conditional_losses_457877

inputs1
matmul_readvariableop_resource:	Р+@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Р+@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџР+: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџР+
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_457782

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
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
Л
P
#__inference__update_step_xla_458356
gradient
variable:	Р+@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	Р+@: *
	_noinline(:I E

_output_shapes
:	Р+@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable


ѕ
D__inference_dense_21_layer_call_and_return_conditional_losses_457894

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Х

)__inference_dense_20_layer_call_fn_458481

inputs
unknown:	Р+@
	unknown_0:@
identityЂStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_457877o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџР+: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџР+
 
_user_specified_nameinputs

ў
E__inference_conv2d_30_layer_call_and_return_conditional_losses_457815

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџђk@*
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
:џџџџџџџџџђk@Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџђk@j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџђk@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџѓl: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџѓl
 
_user_specified_nameinputs
Ќ
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
ь

*__inference_conv2d_32_layer_call_fn_458440

inputs!
unknown: 
	unknown_0:
identityЂStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ;*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_32_layer_call_and_return_conditional_losses_457851w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ;`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ< : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ< 
 
_user_specified_nameinputs
Ш
b
F__inference_flatten_10_layer_call_and_return_conditional_losses_457864

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџР  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџР+Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџР+"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Л5

I__inference_sequential_10_layer_call_and_return_conditional_losses_458277

inputsB
(conv2d_30_conv2d_readvariableop_resource:@7
)conv2d_30_biasadd_readvariableop_resource:@B
(conv2d_31_conv2d_readvariableop_resource:@ 7
)conv2d_31_biasadd_readvariableop_resource: B
(conv2d_32_conv2d_readvariableop_resource: 7
)conv2d_32_biasadd_readvariableop_resource::
'dense_20_matmul_readvariableop_resource:	Р+@6
(dense_20_biasadd_readvariableop_resource:@9
'dense_21_matmul_readvariableop_resource:@6
(dense_21_biasadd_readvariableop_resource:
identityЂ conv2d_30/BiasAdd/ReadVariableOpЂconv2d_30/Conv2D/ReadVariableOpЂ conv2d_31/BiasAdd/ReadVariableOpЂconv2d_31/Conv2D/ReadVariableOpЂ conv2d_32/BiasAdd/ReadVariableOpЂconv2d_32/Conv2D/ReadVariableOpЂdense_20/BiasAdd/ReadVariableOpЂdense_20/MatMul/ReadVariableOpЂdense_21/BiasAdd/ReadVariableOpЂdense_21/MatMul/ReadVariableOp
conv2d_30/Conv2D/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Џ
conv2d_30/Conv2DConv2Dinputs'conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџђk@*
paddingVALID*
strides

 conv2d_30/BiasAdd/ReadVariableOpReadVariableOp)conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_30/BiasAddBiasAddconv2d_30/Conv2D:output:0(conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџђk@m
conv2d_30/ReluReluconv2d_30/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџђk@Ў
max_pooling2d_30/MaxPoolMaxPoolconv2d_30/Relu:activations:0*/
_output_shapes
:џџџџџџџџџy5@*
ksize
*
paddingVALID*
strides

conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Щ
conv2d_31/Conv2DConv2D!max_pooling2d_30/MaxPool:output:0'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџx4 *
paddingVALID*
strides

 conv2d_31/BiasAdd/ReadVariableOpReadVariableOp)conv2d_31_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_31/BiasAddBiasAddconv2d_31/Conv2D:output:0(conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџx4 l
conv2d_31/ReluReluconv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџx4 Ў
max_pooling2d_31/MaxPoolMaxPoolconv2d_31/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ< *
ksize
*
paddingVALID*
strides

conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
conv2d_32/Conv2DConv2D!max_pooling2d_31/MaxPool:output:0'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ;*
paddingVALID*
strides

 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ;l
conv2d_32/ReluReluconv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ;Ў
max_pooling2d_32/MaxPoolMaxPoolconv2d_32/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
a
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџР  
flatten_10/ReshapeReshape!max_pooling2d_32/MaxPool:output:0flatten_10/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџР+
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes
:	Р+@*
dtype0
dense_20/MatMulMatMulflatten_10/Reshape:output:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@b
dense_20/ReluReludense_20/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_21/MatMulMatMuldense_20/Relu:activations:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
dense_21/SigmoidSigmoiddense_21/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
IdentityIdentitydense_21/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp!^conv2d_30/BiasAdd/ReadVariableOp ^conv2d_30/Conv2D/ReadVariableOp!^conv2d_31/BiasAdd/ReadVariableOp ^conv2d_31/Conv2D/ReadVariableOp!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:џџџџџџџџџѓl: : : : : : : : : : 2D
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
:џџџџџџџџџѓl
 
_user_specified_nameinputs
№

*__inference_conv2d_30_layer_call_fn_458380

inputs!
unknown:@
	unknown_0:@
identityЂStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџђk@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_30_layer_call_and_return_conditional_losses_457815x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџђk@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџѓl: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџѓl
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_457794

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
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
Ќ
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

ў
E__inference_conv2d_32_layer_call_and_return_conditional_losses_458451

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ;*
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
:џџџџџџџџџ;X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ;i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ;w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ< : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ< 
 
_user_specified_nameinputs
Т

)__inference_dense_21_layer_call_fn_458501

inputs
unknown:@
	unknown_0:
identityЂStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_457894o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
А


$__inference_signature_wrapper_458183
conv2d_30_input!
unknown:@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	Р+@
	unknown_6:@
	unknown_7:@
	unknown_8:
identityЂStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallconv2d_30_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_457761o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:џџџџџџџџџѓl: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:џџџџџџџџџѓl
)
_user_specified_nameconv2d_30_input

h
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_458401

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
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
№:
Т
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

identity_1ЂMergeV2Checkpointsw
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
: ю
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЃ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B р
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_30_kernel_read_readvariableop)savev2_conv2d_30_bias_read_readvariableop+savev2_conv2d_31_kernel_read_readvariableop)savev2_conv2d_31_bias_read_readvariableop+savev2_conv2d_32_kernel_read_readvariableop)savev2_conv2d_32_bias_read_readvariableop*savev2_dense_20_kernel_read_readvariableop(savev2_dense_20_bias_read_readvariableop*savev2_dense_21_kernel_read_readvariableop(savev2_dense_21_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop<savev2_rmsprop_velocity_conv2d_30_kernel_read_readvariableop:savev2_rmsprop_velocity_conv2d_30_bias_read_readvariableop<savev2_rmsprop_velocity_conv2d_31_kernel_read_readvariableop:savev2_rmsprop_velocity_conv2d_31_bias_read_readvariableop<savev2_rmsprop_velocity_conv2d_32_kernel_read_readvariableop:savev2_rmsprop_velocity_conv2d_32_bias_read_readvariableop;savev2_rmsprop_velocity_dense_20_kernel_read_readvariableop9savev2_rmsprop_velocity_dense_20_bias_read_readvariableop;savev2_rmsprop_velocity_dense_21_kernel_read_readvariableop9savev2_rmsprop_velocity_dense_21_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *)
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
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

identity_1Identity_1:output:0*ї
_input_shapesх
т: :@:@:@ : : ::	Р+@:@:@:: : :@:@:@ : : ::	Р+@:@:@:: : : : : 2(
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
:	Р+@: 
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
:	Р+@: 
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
К
M
1__inference_max_pooling2d_31_layer_call_fn_458426

inputs
identityк
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
GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_457782
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
Ч


.__inference_sequential_10_layer_call_fn_458233

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	Р+@
	unknown_6:@
	unknown_7:@
	unknown_8:
identityЂStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_458040o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:џџџџџџџџџѓl: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџѓl
 
_user_specified_nameinputs
(

I__inference_sequential_10_layer_call_and_return_conditional_losses_458121
conv2d_30_input*
conv2d_30_458091:@
conv2d_30_458093:@*
conv2d_31_458097:@ 
conv2d_31_458099: *
conv2d_32_458103: 
conv2d_32_458105:"
dense_20_458110:	Р+@
dense_20_458112:@!
dense_21_458115:@
dense_21_458117:
identityЂ!conv2d_30/StatefulPartitionedCallЂ!conv2d_31/StatefulPartitionedCallЂ!conv2d_32/StatefulPartitionedCallЂ dense_20/StatefulPartitionedCallЂ dense_21/StatefulPartitionedCall
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCallconv2d_30_inputconv2d_30_458091conv2d_30_458093*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџђk@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_30_layer_call_and_return_conditional_losses_457815є
 max_pooling2d_30/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџy5@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_457770
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_30/PartitionedCall:output:0conv2d_31_458097conv2d_31_458099*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџx4 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_31_layer_call_and_return_conditional_losses_457833є
 max_pooling2d_31/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ< * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_457782
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_31/PartitionedCall:output:0conv2d_32_458103conv2d_32_458105*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ;*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_32_layer_call_and_return_conditional_losses_457851є
 max_pooling2d_32/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_457794р
flatten_10/PartitionedCallPartitionedCall)max_pooling2d_32/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџР+* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_457864
 dense_20/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_20_458110dense_20_458112*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_457877
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_458115dense_21_458117*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_457894x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџј
NoOpNoOp"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:џџџџџџџџџѓl: : : : : : : : : : 2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:a ]
0
_output_shapes
:џџџџџџџџџѓl
)
_user_specified_nameconv2d_30_input


ѕ
D__inference_dense_21_layer_call_and_return_conditional_losses_458512

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ь

*__inference_conv2d_31_layer_call_fn_458410

inputs!
unknown:@ 
	unknown_0: 
identityЂStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџx4 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_31_layer_call_and_return_conditional_losses_457833w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџx4 `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџy5@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџy5@
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_458431

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
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
љ'

I__inference_sequential_10_layer_call_and_return_conditional_losses_457901

inputs*
conv2d_30_457816:@
conv2d_30_457818:@*
conv2d_31_457834:@ 
conv2d_31_457836: *
conv2d_32_457852: 
conv2d_32_457854:"
dense_20_457878:	Р+@
dense_20_457880:@!
dense_21_457895:@
dense_21_457897:
identityЂ!conv2d_30/StatefulPartitionedCallЂ!conv2d_31/StatefulPartitionedCallЂ!conv2d_32/StatefulPartitionedCallЂ dense_20/StatefulPartitionedCallЂ dense_21/StatefulPartitionedCall§
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_30_457816conv2d_30_457818*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџђk@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_30_layer_call_and_return_conditional_losses_457815є
 max_pooling2d_30/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџy5@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_457770
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_30/PartitionedCall:output:0conv2d_31_457834conv2d_31_457836*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџx4 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_31_layer_call_and_return_conditional_losses_457833є
 max_pooling2d_31/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ< * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_457782
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_31/PartitionedCall:output:0conv2d_32_457852conv2d_32_457854*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ;*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_32_layer_call_and_return_conditional_losses_457851є
 max_pooling2d_32/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_457794р
flatten_10/PartitionedCallPartitionedCall)max_pooling2d_32/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџР+* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_457864
 dense_20/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_20_457878dense_20_457880*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_457877
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_457895dense_21_457897*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_457894x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџј
NoOpNoOp"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:џџџџџџџџџѓl: : : : : : : : : : 2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџѓl
 
_user_specified_nameinputs
Ќ
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
а
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

h
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_457770

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
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
Ч


.__inference_sequential_10_layer_call_fn_458208

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	Р+@
	unknown_6:@
	unknown_7:@
	unknown_8:
identityЂStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_457901o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:џџџџџџџџџѓl: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџѓl
 
_user_specified_nameinputs
(

I__inference_sequential_10_layer_call_and_return_conditional_losses_458154
conv2d_30_input*
conv2d_30_458124:@
conv2d_30_458126:@*
conv2d_31_458130:@ 
conv2d_31_458132: *
conv2d_32_458136: 
conv2d_32_458138:"
dense_20_458143:	Р+@
dense_20_458145:@!
dense_21_458148:@
dense_21_458150:
identityЂ!conv2d_30/StatefulPartitionedCallЂ!conv2d_31/StatefulPartitionedCallЂ!conv2d_32/StatefulPartitionedCallЂ dense_20/StatefulPartitionedCallЂ dense_21/StatefulPartitionedCall
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCallconv2d_30_inputconv2d_30_458124conv2d_30_458126*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџђk@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_30_layer_call_and_return_conditional_losses_457815є
 max_pooling2d_30/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџy5@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_457770
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_30/PartitionedCall:output:0conv2d_31_458130conv2d_31_458132*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџx4 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_31_layer_call_and_return_conditional_losses_457833є
 max_pooling2d_31/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ< * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_457782
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_31/PartitionedCall:output:0conv2d_32_458136conv2d_32_458138*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ;*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_32_layer_call_and_return_conditional_losses_457851є
 max_pooling2d_32/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_457794р
flatten_10/PartitionedCallPartitionedCall)max_pooling2d_32/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџР+* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_457864
 dense_20/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_20_458143dense_20_458145*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_457877
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_458148dense_21_458150*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_457894x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџј
NoOpNoOp"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:џџџџџџџџџѓl: : : : : : : : : : 2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:a ]
0
_output_shapes
:џџџџџџџџџѓl
)
_user_specified_nameconv2d_30_input

ў
E__inference_conv2d_31_layer_call_and_return_conditional_losses_457833

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџx4 *
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
:џџџџџџџџџx4 X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџx4 i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџx4 w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџy5@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџy5@
 
_user_specified_nameinputs
т


.__inference_sequential_10_layer_call_fn_458088
conv2d_30_input!
unknown:@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	Р+@
	unknown_6:@
	unknown_7:@
	unknown_8:
identityЂStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallconv2d_30_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_458040o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:џџџџџџџџџѓl: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:џџџџџџџџџѓl
)
_user_specified_nameconv2d_30_input
љ'

I__inference_sequential_10_layer_call_and_return_conditional_losses_458040

inputs*
conv2d_30_458010:@
conv2d_30_458012:@*
conv2d_31_458016:@ 
conv2d_31_458018: *
conv2d_32_458022: 
conv2d_32_458024:"
dense_20_458029:	Р+@
dense_20_458031:@!
dense_21_458034:@
dense_21_458036:
identityЂ!conv2d_30/StatefulPartitionedCallЂ!conv2d_31/StatefulPartitionedCallЂ!conv2d_32/StatefulPartitionedCallЂ dense_20/StatefulPartitionedCallЂ dense_21/StatefulPartitionedCall§
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_30_458010conv2d_30_458012*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџђk@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_30_layer_call_and_return_conditional_losses_457815є
 max_pooling2d_30/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџy5@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_457770
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_30/PartitionedCall:output:0conv2d_31_458016conv2d_31_458018*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџx4 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_31_layer_call_and_return_conditional_losses_457833є
 max_pooling2d_31/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ< * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_457782
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_31/PartitionedCall:output:0conv2d_32_458022conv2d_32_458024*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ;*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_32_layer_call_and_return_conditional_losses_457851є
 max_pooling2d_32/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_457794р
flatten_10/PartitionedCallPartitionedCall)max_pooling2d_32/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџР+* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_457864
 dense_20/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_20_458029dense_20_458031*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_457877
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_458034dense_21_458036*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_457894x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџј
NoOpNoOp"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:џџџџџџџџџѓl: : : : : : : : : : 2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџѓl
 
_user_specified_nameinputs
т


.__inference_sequential_10_layer_call_fn_457924
conv2d_30_input!
unknown:@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	Р+@
	unknown_6:@
	unknown_7:@
	unknown_8:
identityЂStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallconv2d_30_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_457901o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:џџџџџџџџџѓl: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:џџџџџџџџџѓl
)
_user_specified_nameconv2d_30_input
Ќ
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
variable"
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ф
serving_defaultА
T
conv2d_30_inputA
!serving_default_conv2d_30_input:0џџџџџџџџџѓl<
dense_210
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:Ф
н
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
н
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
Ѕ
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_layer
н
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
Ѕ
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
н
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
Ѕ
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
Л
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias"
_tf_keras_layer
Л
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
Ъ
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
э
[trace_0
\trace_1
]trace_2
^trace_32
.__inference_sequential_10_layer_call_fn_457924
.__inference_sequential_10_layer_call_fn_458208
.__inference_sequential_10_layer_call_fn_458233
.__inference_sequential_10_layer_call_fn_458088П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z[trace_0z\trace_1z]trace_2z^trace_3
й
_trace_0
`trace_1
atrace_2
btrace_32ю
I__inference_sequential_10_layer_call_and_return_conditional_losses_458277
I__inference_sequential_10_layer_call_and_return_conditional_losses_458321
I__inference_sequential_10_layer_call_and_return_conditional_losses_458121
I__inference_sequential_10_layer_call_and_return_conditional_losses_458154П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z_trace_0z`trace_1zatrace_2zbtrace_3
дBб
!__inference__wrapped_model_457761conv2d_30_input"
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
Д
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
­
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
ю
qtrace_02б
*__inference_conv2d_30_layer_call_fn_458380Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zqtrace_0

rtrace_02ь
E__inference_conv2d_30_layer_call_and_return_conditional_losses_458391Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zrtrace_0
*:(@2conv2d_30/kernel
:@2conv2d_30/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
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
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
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
ѕ
xtrace_02и
1__inference_max_pooling2d_30_layer_call_fn_458396Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zxtrace_0

ytrace_02ѓ
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_458401Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
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
­
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
ю
trace_02б
*__inference_conv2d_31_layer_call_fn_458410Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 ztrace_0

trace_02ь
E__inference_conv2d_31_layer_call_and_return_conditional_losses_458421Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 ztrace_0
*:(@ 2conv2d_31/kernel
: 2conv2d_31/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
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
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
ї
trace_02и
1__inference_max_pooling2d_31_layer_call_fn_458426Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 ztrace_0

trace_02ѓ
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_458431Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 ztrace_0
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
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
№
trace_02б
*__inference_conv2d_32_layer_call_fn_458440Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 ztrace_0

trace_02ь
E__inference_conv2d_32_layer_call_and_return_conditional_losses_458451Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 ztrace_0
*:( 2conv2d_32/kernel
:2conv2d_32/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
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
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
ї
trace_02и
1__inference_max_pooling2d_32_layer_call_fn_458456Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 ztrace_0

trace_02ѓ
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_458461Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
ё
trace_02в
+__inference_flatten_10_layer_call_fn_458466Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 ztrace_0

trace_02э
F__inference_flatten_10_layer_call_and_return_conditional_losses_458472Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 ztrace_0
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
В
non_trainable_variables
layers
metrics
  layer_regularization_losses
Ёlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
я
Ђtrace_02а
)__inference_dense_20_layer_call_fn_458481Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zЂtrace_0

Ѓtrace_02ы
D__inference_dense_20_layer_call_and_return_conditional_losses_458492Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zЃtrace_0
": 	Р+@2dense_20/kernel
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
В
Єnon_trainable_variables
Ѕlayers
Іmetrics
 Їlayer_regularization_losses
Јlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
я
Љtrace_02а
)__inference_dense_21_layer_call_fn_458501Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zЉtrace_0

Њtrace_02ы
D__inference_dense_21_layer_call_and_return_conditional_losses_458512Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 zЊtrace_0
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
Ћ0
Ќ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
.__inference_sequential_10_layer_call_fn_457924conv2d_30_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
џBќ
.__inference_sequential_10_layer_call_fn_458208inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
џBќ
.__inference_sequential_10_layer_call_fn_458233inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
.__inference_sequential_10_layer_call_fn_458088conv2d_30_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
I__inference_sequential_10_layer_call_and_return_conditional_losses_458277inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
I__inference_sequential_10_layer_call_and_return_conditional_losses_458321inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЃB 
I__inference_sequential_10_layer_call_and_return_conditional_losses_458121conv2d_30_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЃB 
I__inference_sequential_10_layer_call_and_return_conditional_losses_458154conv2d_30_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
x
d0
­1
Ў2
Џ3
А4
Б5
В6
Г7
Д8
Е9
Ж10"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
p
­0
Ў1
Џ2
А3
Б4
В5
Г6
Д7
Е8
Ж9"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Щ
Зtrace_0
Иtrace_1
Йtrace_2
Кtrace_3
Лtrace_4
Мtrace_5
Нtrace_6
Оtrace_7
Пtrace_8
Рtrace_92Ў
#__inference__update_step_xla_458326
#__inference__update_step_xla_458331
#__inference__update_step_xla_458336
#__inference__update_step_xla_458341
#__inference__update_step_xla_458346
#__inference__update_step_xla_458351
#__inference__update_step_xla_458356
#__inference__update_step_xla_458361
#__inference__update_step_xla_458366
#__inference__update_step_xla_458371Й
ЎВЊ
FullArgSpec2
args*'
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0zЗtrace_0zИtrace_1zЙtrace_2zКtrace_3zЛtrace_4zМtrace_5zНtrace_6zОtrace_7zПtrace_8zРtrace_9
гBа
$__inference_signature_wrapper_458183conv2d_30_input"
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
оBл
*__inference_conv2d_30_layer_call_fn_458380inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
љBі
E__inference_conv2d_30_layer_call_and_return_conditional_losses_458391inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
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
хBт
1__inference_max_pooling2d_30_layer_call_fn_458396inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
B§
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_458401inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
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
оBл
*__inference_conv2d_31_layer_call_fn_458410inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
љBі
E__inference_conv2d_31_layer_call_and_return_conditional_losses_458421inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
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
хBт
1__inference_max_pooling2d_31_layer_call_fn_458426inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
B§
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_458431inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
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
оBл
*__inference_conv2d_32_layer_call_fn_458440inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
љBі
E__inference_conv2d_32_layer_call_and_return_conditional_losses_458451inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
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
хBт
1__inference_max_pooling2d_32_layer_call_fn_458456inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
B§
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_458461inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
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
пBм
+__inference_flatten_10_layer_call_fn_458466inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
њBї
F__inference_flatten_10_layer_call_and_return_conditional_losses_458472inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
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
нBк
)__inference_dense_20_layer_call_fn_458481inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
јBѕ
D__inference_dense_20_layer_call_and_return_conditional_losses_458492inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
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
нBк
)__inference_dense_21_layer_call_fn_458501inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
јBѕ
D__inference_dense_21_layer_call_and_return_conditional_losses_458512inputs"Ђ
В
FullArgSpec
args
jself
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
annotationsЊ *
 
R
С	variables
Т	keras_api

Уtotal

Фcount"
_tf_keras_metric
c
Х	variables
Ц	keras_api

Чtotal

Шcount
Щ
_fn_kwargs"
_tf_keras_metric
9:7@2!RMSprop/velocity/conv2d_30/kernel
+:)@2RMSprop/velocity/conv2d_30/bias
9:7@ 2!RMSprop/velocity/conv2d_31/kernel
+:) 2RMSprop/velocity/conv2d_31/bias
9:7 2!RMSprop/velocity/conv2d_32/kernel
+:)2RMSprop/velocity/conv2d_32/bias
1:/	Р+@2 RMSprop/velocity/dense_20/kernel
*:(@2RMSprop/velocity/dense_20/bias
0:.@2 RMSprop/velocity/dense_21/kernel
*:(2RMSprop/velocity/dense_21/bias
јBѕ
#__inference__update_step_xla_458326gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_458331gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_458336gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_458341gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_458346gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_458351gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_458356gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_458361gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_458366gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
#__inference__update_step_xla_458371gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0
У0
Ф1"
trackable_list_wrapper
.
С	variables"
_generic_user_object
:  (2total
:  (2count
0
Ч0
Ш1"
trackable_list_wrapper
.
Х	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperЅ
#__inference__update_step_xla_458326~xЂu
nЂk
!
gradient@
<9	%Ђ"
њ@

p
` VariableSpec 
`РЩШє?
Њ "
 
#__inference__update_step_xla_458331f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
` Ђє?
Њ "
 Ѕ
#__inference__update_step_xla_458336~xЂu
nЂk
!
gradient@ 
<9	%Ђ"
њ@ 

p
` VariableSpec 
`рМїє?
Њ "
 
#__inference__update_step_xla_458341f`Ђ]
VЂS

gradient 
0-	Ђ
њ 

p
` VariableSpec 
`рїє?
Њ "
 Ѕ
#__inference__update_step_xla_458346~xЂu
nЂk
!
gradient 
<9	%Ђ"
њ 

p
` VariableSpec 
`РнЪє?
Њ "
 
#__inference__update_step_xla_458351f`Ђ]
VЂS

gradient
0-	Ђ
њ

p
` VariableSpec 
`лЪє?
Њ "
 
#__inference__update_step_xla_458356pjЂg
`Ђ]

gradient	Р+@
52	Ђ
њ	Р+@

p
` VariableSpec 
` сЪє?
Њ "
 
#__inference__update_step_xla_458361f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
`рђЪє?
Њ "
 
#__inference__update_step_xla_458366nhЂe
^Ђ[

gradient@
41	Ђ
њ@

p
` VariableSpec 
` ѕжє?
Њ "
 
#__inference__update_step_xla_458371f`Ђ]
VЂS

gradient
0-	Ђ
њ

p
` VariableSpec 
`ружє?
Њ "
 Њ
!__inference__wrapped_model_457761
()78LMTUAЂ>
7Ђ4
2/
conv2d_30_inputџџџџџџџџџѓl
Њ "3Њ0
.
dense_21"
dense_21џџџџџџџџџО
E__inference_conv2d_30_layer_call_and_return_conditional_losses_458391u8Ђ5
.Ђ+
)&
inputsџџџџџџџџџѓl
Њ "5Ђ2
+(
tensor_0џџџџџџџџџђk@
 
*__inference_conv2d_30_layer_call_fn_458380j8Ђ5
.Ђ+
)&
inputsџџџџџџџџџѓl
Њ "*'
unknownџџџџџџџџџђk@М
E__inference_conv2d_31_layer_call_and_return_conditional_losses_458421s()7Ђ4
-Ђ*
(%
inputsџџџџџџџџџy5@
Њ "4Ђ1
*'
tensor_0џџџџџџџџџx4 
 
*__inference_conv2d_31_layer_call_fn_458410h()7Ђ4
-Ђ*
(%
inputsџџџџџџџџџy5@
Њ ")&
unknownџџџџџџџџџx4 М
E__inference_conv2d_32_layer_call_and_return_conditional_losses_458451s787Ђ4
-Ђ*
(%
inputsџџџџџџџџџ< 
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ;
 
*__inference_conv2d_32_layer_call_fn_458440h787Ђ4
-Ђ*
(%
inputsџџџџџџџџџ< 
Њ ")&
unknownџџџџџџџџџ;Ќ
D__inference_dense_20_layer_call_and_return_conditional_losses_458492dLM0Ђ-
&Ђ#
!
inputsџџџџџџџџџР+
Њ ",Ђ)
"
tensor_0џџџџџџџџџ@
 
)__inference_dense_20_layer_call_fn_458481YLM0Ђ-
&Ђ#
!
inputsџџџџџџџџџР+
Њ "!
unknownџџџџџџџџџ@Ћ
D__inference_dense_21_layer_call_and_return_conditional_losses_458512cTU/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
)__inference_dense_21_layer_call_fn_458501XTU/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "!
unknownџџџџџџџџџВ
F__inference_flatten_10_layer_call_and_return_conditional_losses_458472h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "-Ђ*
# 
tensor_0џџџџџџџџџР+
 
+__inference_flatten_10_layer_call_fn_458466]7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ ""
unknownџџџџџџџџџР+і
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_458401ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 а
1__inference_max_pooling2d_30_layer_call_fn_458396RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџі
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_458431ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 а
1__inference_max_pooling2d_31_layer_call_fn_458426RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџі
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_458461ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 а
1__inference_max_pooling2d_32_layer_call_fn_458456RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџг
I__inference_sequential_10_layer_call_and_return_conditional_losses_458121
()78LMTUIЂF
?Ђ<
2/
conv2d_30_inputџџџџџџџџџѓl
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 г
I__inference_sequential_10_layer_call_and_return_conditional_losses_458154
()78LMTUIЂF
?Ђ<
2/
conv2d_30_inputџџџџџџџџџѓl
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Щ
I__inference_sequential_10_layer_call_and_return_conditional_losses_458277|
()78LMTU@Ђ=
6Ђ3
)&
inputsџџџџџџџџџѓl
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Щ
I__inference_sequential_10_layer_call_and_return_conditional_losses_458321|
()78LMTU@Ђ=
6Ђ3
)&
inputsџџџџџџџџџѓl
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Ќ
.__inference_sequential_10_layer_call_fn_457924z
()78LMTUIЂF
?Ђ<
2/
conv2d_30_inputџџџџџџџџџѓl
p 

 
Њ "!
unknownџџџџџџџџџЌ
.__inference_sequential_10_layer_call_fn_458088z
()78LMTUIЂF
?Ђ<
2/
conv2d_30_inputџџџџџџџџџѓl
p

 
Њ "!
unknownџџџџџџџџџЃ
.__inference_sequential_10_layer_call_fn_458208q
()78LMTU@Ђ=
6Ђ3
)&
inputsџџџџџџџџџѓl
p 

 
Њ "!
unknownџџџџџџџџџЃ
.__inference_sequential_10_layer_call_fn_458233q
()78LMTU@Ђ=
6Ђ3
)&
inputsџџџџџџџџџѓl
p

 
Њ "!
unknownџџџџџџџџџР
$__inference_signature_wrapper_458183
()78LMTUTЂQ
Ђ 
JЊG
E
conv2d_30_input2/
conv2d_30_inputџџџџџџџџџѓl"3Њ0
.
dense_21"
dense_21џџџџџџџџџ