??
??
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	??
?
	ApplyAdam
var"T?	
m"T?	
v"T?
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T?" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
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
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
B
Equal
x"T
y"T
z
"
Ttype:
2	
?
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
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
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
.
Neg
x"T
y"T"
Ttype:

2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
1
Square
x"T
y"T"
Ttype:

2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?"serve*1.14.02v1.14.0-0-g87989f6959??
j
inputPlaceholder*
dtype0*(
_output_shapes
:?????????? *
shape:?????????? 
i
targetPlaceholder*
dtype0*'
_output_shapes
:?????????*
shape:?????????
e
random_uniform/shapeConst*
valueB"  ?  *
dtype0*
_output_shapes
:
W
random_uniform/minConst*
valueB
 *U??*
dtype0*
_output_shapes
: 
W
random_uniform/maxConst*
valueB
 *U?=*
dtype0*
_output_shapes
: 
?
random_uniform/RandomUniformRandomUniformrandom_uniform/shape*

seed *
T0*
dtype0* 
_output_shapes
:
? ?*
seed2 
b
random_uniform/subSubrandom_uniform/maxrandom_uniform/min*
_output_shapes
: *
T0
v
random_uniform/mulMulrandom_uniform/RandomUniformrandom_uniform/sub*
T0* 
_output_shapes
:
? ?
h
random_uniformAddrandom_uniform/mulrandom_uniform/min* 
_output_shapes
:
? ?*
T0
?
Variable
VariableV2*
shape:
? ?*
shared_name *
dtype0* 
_output_shapes
:
? ?*
	container 
?
Variable/AssignAssignVariablerandom_uniform*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(* 
_output_shapes
:
? ?
k
Variable/readIdentityVariable*
T0*
_class
loc:@Variable* 
_output_shapes
:
? ?
g
random_uniform_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"   ?  
Y
random_uniform_1/minConst*
valueB
 *???*
dtype0*
_output_shapes
: 
Y
random_uniform_1/maxConst*
valueB
 *??=*
dtype0*
_output_shapes
: 
?
random_uniform_1/RandomUniformRandomUniformrandom_uniform_1/shape*
T0*
dtype0*
_output_shapes
:	?*
seed2 *

seed 
h
random_uniform_1/subSubrandom_uniform_1/maxrandom_uniform_1/min*
T0*
_output_shapes
: 
{
random_uniform_1/mulMulrandom_uniform_1/RandomUniformrandom_uniform_1/sub*
T0*
_output_shapes
:	?
m
random_uniform_1Addrandom_uniform_1/mulrandom_uniform_1/min*
_output_shapes
:	?*
T0
?

Variable_1
VariableV2*
shared_name *
dtype0*
_output_shapes
:	?*
	container *
shape:	?
?
Variable_1/AssignAssign
Variable_1random_uniform_1*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0*
_class
loc:@Variable_1
p
Variable_1/readIdentity
Variable_1*
_output_shapes
:	?*
T0*
_class
loc:@Variable_1
g
random_uniform_2/shapeConst*
dtype0*
_output_shapes
:*
valueB"?     
Y
random_uniform_2/minConst*
valueB
 *???*
dtype0*
_output_shapes
: 
Y
random_uniform_2/maxConst*
valueB
 *??=*
dtype0*
_output_shapes
: 
?
random_uniform_2/RandomUniformRandomUniformrandom_uniform_2/shape*
T0*
dtype0*
_output_shapes
:	?*
seed2 *

seed 
h
random_uniform_2/subSubrandom_uniform_2/maxrandom_uniform_2/min*
_output_shapes
: *
T0
{
random_uniform_2/mulMulrandom_uniform_2/RandomUniformrandom_uniform_2/sub*
T0*
_output_shapes
:	?
m
random_uniform_2Addrandom_uniform_2/mulrandom_uniform_2/min*
T0*
_output_shapes
:	?
?

Variable_2
VariableV2*
dtype0*
_output_shapes
:	?*
	container *
shape:	?*
shared_name 
?
Variable_2/AssignAssign
Variable_2random_uniform_2*
_class
loc:@Variable_2*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0
p
Variable_2/readIdentity
Variable_2*
T0*
_class
loc:@Variable_2*
_output_shapes
:	?
g
random_uniform_3/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
Y
random_uniform_3/minConst*
valueB
 *׳ݿ*
dtype0*
_output_shapes
: 
Y
random_uniform_3/maxConst*
valueB
 *׳??*
dtype0*
_output_shapes
: 
?
random_uniform_3/RandomUniformRandomUniformrandom_uniform_3/shape*

seed *
T0*
dtype0*
_output_shapes

:*
seed2 
h
random_uniform_3/subSubrandom_uniform_3/maxrandom_uniform_3/min*
T0*
_output_shapes
: 
z
random_uniform_3/mulMulrandom_uniform_3/RandomUniformrandom_uniform_3/sub*
_output_shapes

:*
T0
l
random_uniform_3Addrandom_uniform_3/mulrandom_uniform_3/min*
_output_shapes

:*
T0
~

Variable_3
VariableV2*
dtype0*
_output_shapes

:*
	container *
shape
:*
shared_name 
?
Variable_3/AssignAssign
Variable_3random_uniform_3*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes

:
o
Variable_3/readIdentity
Variable_3*
_output_shapes

:*
T0*
_class
loc:@Variable_3

MatMulMatMulinputVariable/read*(
_output_shapes
:??????????*
transpose_a( *
transpose_b( *
T0
Z
hidden1AddMatMulVariable_1/read*
T0*(
_output_shapes
:??????????
?
MatMul_1MatMulhidden1Variable_2/read*'
_output_shapes
:?????????*
transpose_a( *
transpose_b( *
T0
Z
outputAddMatMul_1Variable_3/read*'
_output_shapes
:?????????*
T0
L
SubSubtargetoutput*
T0*'
_output_shapes
:?????????
G
SquareSquareSub*
T0*'
_output_shapes
:?????????
V
ConstConst*
valueB"       *
dtype0*
_output_shapes
:
Y
MeanMeanSquareConst*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
N
Sub_1Subtargetoutput*
T0*'
_output_shapes
:?????????
X
Const_1Const*
valueB"       *
dtype0*
_output_shapes
:
X
MaxMaxSub_1Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
J
mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *???>
7
mulMulmul/xMax*
_output_shapes
: *
T0
6
addAddMeanmul*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  ??
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*

index_type0*
_output_shapes
: *
T0
<
#gradients/add_grad/tuple/group_depsNoOp^gradients/Fill
?
+gradients/add_grad/tuple/control_dependencyIdentitygradients/Fill$^gradients/add_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
?
-gradients/add_grad/tuple/control_dependency_1Identitygradients/Fill$^gradients/add_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
r
!gradients/Mean_grad/Reshape/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
?
gradients/Mean_grad/ReshapeReshape+gradients/add_grad/tuple/control_dependency!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
_
gradients/Mean_grad/ShapeShapeSquare*
out_type0*
_output_shapes
:*
T0
?
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0*'
_output_shapes
:?????????
a
gradients/Mean_grad/Shape_1ShapeSquare*
_output_shapes
:*
T0*
out_type0
^
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
?
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
?
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
?
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
_output_shapes
: *
T0
~
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0*
Truncate( 
?
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*'
_output_shapes
:?????????
r
gradients/mul_grad/MulMul-gradients/add_grad/tuple/control_dependency_1Max*
_output_shapes
: *
T0
v
gradients/mul_grad/Mul_1Mul-gradients/add_grad/tuple/control_dependency_1mul/x*
T0*
_output_shapes
: 
_
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Mul^gradients/mul_grad/Mul_1
?
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Mul$^gradients/mul_grad/tuple/group_deps*
_output_shapes
: *
T0*)
_class
loc:@gradients/mul_grad/Mul
?
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Mul_1$^gradients/mul_grad/tuple/group_deps*
_output_shapes
: *
T0*+
_class!
loc:@gradients/mul_grad/Mul_1
~
gradients/Square_grad/ConstConst^gradients/Mean_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
t
gradients/Square_grad/MulMulSubgradients/Square_grad/Const*
T0*'
_output_shapes
:?????????
?
gradients/Square_grad/Mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/Mul*
T0*'
_output_shapes
:?????????
]
gradients/Max_grad/ShapeShapeSub_1*
T0*
out_type0*
_output_shapes
:
Y
gradients/Max_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
d
gradients/Max_grad/addAddConst_1gradients/Max_grad/Size*
T0*
_output_shapes
:
x
gradients/Max_grad/modFloorModgradients/Max_grad/addgradients/Max_grad/Size*
_output_shapes
:*
T0
d
gradients/Max_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
`
gradients/Max_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
`
gradients/Max_grad/range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
?
gradients/Max_grad/rangeRangegradients/Max_grad/range/startgradients/Max_grad/Sizegradients/Max_grad/range/delta*
_output_shapes
:*

Tidx0
_
gradients/Max_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: 
?
gradients/Max_grad/FillFillgradients/Max_grad/Shape_1gradients/Max_grad/Fill/value*
T0*

index_type0*
_output_shapes
:
?
 gradients/Max_grad/DynamicStitchDynamicStitchgradients/Max_grad/rangegradients/Max_grad/modgradients/Max_grad/Shapegradients/Max_grad/Fill*
_output_shapes
:*
T0*
N
?
gradients/Max_grad/ReshapeReshapeMax gradients/Max_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:??????????????????
?
gradients/Max_grad/Reshape_1Reshape-gradients/mul_grad/tuple/control_dependency_1 gradients/Max_grad/DynamicStitch*0
_output_shapes
:??????????????????*
T0*
Tshape0

gradients/Max_grad/EqualEqualgradients/Max_grad/ReshapeSub_1*
T0*0
_output_shapes
:??????????????????
?
gradients/Max_grad/CastCastgradients/Max_grad/Equal*0
_output_shapes
:??????????????????*

DstT0*

SrcT0
*
Truncate( 
}
gradients/Max_grad/SumSumgradients/Max_grad/CastConst_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
?
gradients/Max_grad/Reshape_2Reshapegradients/Max_grad/Sum gradients/Max_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:??????????????????
?
gradients/Max_grad/truedivRealDivgradients/Max_grad/Castgradients/Max_grad/Reshape_2*0
_output_shapes
:??????????????????*
T0
?
gradients/Max_grad/mulMulgradients/Max_grad/truedivgradients/Max_grad/Reshape_1*
T0*'
_output_shapes
:?????????
^
gradients/Sub_grad/ShapeShapetarget*
out_type0*
_output_shapes
:*
T0
`
gradients/Sub_grad/Shape_1Shapeoutput*
T0*
out_type0*
_output_shapes
:
?
(gradients/Sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Sub_grad/Shapegradients/Sub_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients/Sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/Sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
gradients/Sub_grad/ReshapeReshapegradients/Sub_grad/Sumgradients/Sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
?
gradients/Sub_grad/Sum_1Sumgradients/Square_grad/Mul_1*gradients/Sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Z
gradients/Sub_grad/NegNeggradients/Sub_grad/Sum_1*
T0*
_output_shapes
:
?
gradients/Sub_grad/Reshape_1Reshapegradients/Sub_grad/Neggradients/Sub_grad/Shape_1*'
_output_shapes
:?????????*
T0*
Tshape0
g
#gradients/Sub_grad/tuple/group_depsNoOp^gradients/Sub_grad/Reshape^gradients/Sub_grad/Reshape_1
?
+gradients/Sub_grad/tuple/control_dependencyIdentitygradients/Sub_grad/Reshape$^gradients/Sub_grad/tuple/group_deps*'
_output_shapes
:?????????*
T0*-
_class#
!loc:@gradients/Sub_grad/Reshape
?
-gradients/Sub_grad/tuple/control_dependency_1Identitygradients/Sub_grad/Reshape_1$^gradients/Sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Sub_grad/Reshape_1*'
_output_shapes
:?????????
`
gradients/Sub_1_grad/ShapeShapetarget*
out_type0*
_output_shapes
:*
T0
b
gradients/Sub_1_grad/Shape_1Shapeoutput*
out_type0*
_output_shapes
:*
T0
?
*gradients/Sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Sub_1_grad/Shapegradients/Sub_1_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
gradients/Sub_1_grad/SumSumgradients/Max_grad/mul*gradients/Sub_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
gradients/Sub_1_grad/ReshapeReshapegradients/Sub_1_grad/Sumgradients/Sub_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
?
gradients/Sub_1_grad/Sum_1Sumgradients/Max_grad/mul,gradients/Sub_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
^
gradients/Sub_1_grad/NegNeggradients/Sub_1_grad/Sum_1*
T0*
_output_shapes
:
?
gradients/Sub_1_grad/Reshape_1Reshapegradients/Sub_1_grad/Neggradients/Sub_1_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:?????????
m
%gradients/Sub_1_grad/tuple/group_depsNoOp^gradients/Sub_1_grad/Reshape^gradients/Sub_1_grad/Reshape_1
?
-gradients/Sub_1_grad/tuple/control_dependencyIdentitygradients/Sub_1_grad/Reshape&^gradients/Sub_1_grad/tuple/group_deps*'
_output_shapes
:?????????*
T0*/
_class%
#!loc:@gradients/Sub_1_grad/Reshape
?
/gradients/Sub_1_grad/tuple/control_dependency_1Identitygradients/Sub_1_grad/Reshape_1&^gradients/Sub_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Sub_1_grad/Reshape_1*'
_output_shapes
:?????????
?
gradients/AddNAddN-gradients/Sub_grad/tuple/control_dependency_1/gradients/Sub_1_grad/tuple/control_dependency_1*
T0*/
_class%
#!loc:@gradients/Sub_grad/Reshape_1*
N*'
_output_shapes
:?????????
c
gradients/output_grad/ShapeShapeMatMul_1*
T0*
out_type0*
_output_shapes
:
n
gradients/output_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
?
+gradients/output_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/output_grad/Shapegradients/output_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
gradients/output_grad/SumSumgradients/AddN+gradients/output_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
gradients/output_grad/ReshapeReshapegradients/output_grad/Sumgradients/output_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
?
gradients/output_grad/Sum_1Sumgradients/AddN-gradients/output_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
gradients/output_grad/Reshape_1Reshapegradients/output_grad/Sum_1gradients/output_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:
p
&gradients/output_grad/tuple/group_depsNoOp^gradients/output_grad/Reshape ^gradients/output_grad/Reshape_1
?
.gradients/output_grad/tuple/control_dependencyIdentitygradients/output_grad/Reshape'^gradients/output_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/output_grad/Reshape*'
_output_shapes
:?????????
?
0gradients/output_grad/tuple/control_dependency_1Identitygradients/output_grad/Reshape_1'^gradients/output_grad/tuple/group_deps*
_output_shapes

:*
T0*2
_class(
&$loc:@gradients/output_grad/Reshape_1
?
gradients/MatMul_1_grad/MatMulMatMul.gradients/output_grad/tuple/control_dependencyVariable_2/read*(
_output_shapes
:??????????*
transpose_a( *
transpose_b(*
T0
?
 gradients/MatMul_1_grad/MatMul_1MatMulhidden1.gradients/output_grad/tuple/control_dependency*
_output_shapes
:	?*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
?
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul*(
_output_shapes
:??????????
?
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1*
_output_shapes
:	?*
T0
b
gradients/hidden1_grad/ShapeShapeMatMul*
_output_shapes
:*
T0*
out_type0
o
gradients/hidden1_grad/Shape_1Const*
valueB"   ?  *
dtype0*
_output_shapes
:
?
,gradients/hidden1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/hidden1_grad/Shapegradients/hidden1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients/hidden1_grad/SumSum0gradients/MatMul_1_grad/tuple/control_dependency,gradients/hidden1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
gradients/hidden1_grad/ReshapeReshapegradients/hidden1_grad/Sumgradients/hidden1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:??????????
?
gradients/hidden1_grad/Sum_1Sum0gradients/MatMul_1_grad/tuple/control_dependency.gradients/hidden1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
 gradients/hidden1_grad/Reshape_1Reshapegradients/hidden1_grad/Sum_1gradients/hidden1_grad/Shape_1*
Tshape0*
_output_shapes
:	?*
T0
s
'gradients/hidden1_grad/tuple/group_depsNoOp^gradients/hidden1_grad/Reshape!^gradients/hidden1_grad/Reshape_1
?
/gradients/hidden1_grad/tuple/control_dependencyIdentitygradients/hidden1_grad/Reshape(^gradients/hidden1_grad/tuple/group_deps*1
_class'
%#loc:@gradients/hidden1_grad/Reshape*(
_output_shapes
:??????????*
T0
?
1gradients/hidden1_grad/tuple/control_dependency_1Identity gradients/hidden1_grad/Reshape_1(^gradients/hidden1_grad/tuple/group_deps*
_output_shapes
:	?*
T0*3
_class)
'%loc:@gradients/hidden1_grad/Reshape_1
?
gradients/MatMul_grad/MatMulMatMul/gradients/hidden1_grad/tuple/control_dependencyVariable/read*
transpose_b(*
T0*(
_output_shapes
:?????????? *
transpose_a( 
?
gradients/MatMul_grad/MatMul_1MatMulinput/gradients/hidden1_grad/tuple/control_dependency*
T0* 
_output_shapes
:
? ?*
transpose_a(*
transpose_b( 
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
?
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*(
_output_shapes
:?????????? 
?
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps* 
_output_shapes
:
? ?*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
{
beta1_power/initial_valueConst*
valueB
 *fff?*
_class
loc:@Variable*
dtype0*
_output_shapes
: 
?
beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@Variable*
	container *
shape: 
?
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
g
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@Variable*
_output_shapes
: 
{
beta2_power/initial_valueConst*
valueB
 *w??*
_class
loc:@Variable*
dtype0*
_output_shapes
: 
?
beta2_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@Variable
?
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
g
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@Variable*
_output_shapes
: 
?
4Variable/optimizer/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable*
valueB"  ?  *
dtype0*
_output_shapes
:
?
*Variable/optimizer/Initializer/zeros/ConstConst*
_class
loc:@Variable*
valueB
 *    *
dtype0*
_output_shapes
: 
?
$Variable/optimizer/Initializer/zerosFill4Variable/optimizer/Initializer/zeros/shape_as_tensor*Variable/optimizer/Initializer/zeros/Const*
T0*
_class
loc:@Variable*

index_type0* 
_output_shapes
:
? ?
?
Variable/optimizer
VariableV2*
	container *
shape:
? ?*
dtype0* 
_output_shapes
:
? ?*
shared_name *
_class
loc:@Variable
?
Variable/optimizer/AssignAssignVariable/optimizer$Variable/optimizer/Initializer/zeros* 
_output_shapes
:
? ?*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(

Variable/optimizer/readIdentityVariable/optimizer*
T0*
_class
loc:@Variable* 
_output_shapes
:
? ?
?
6Variable/optimizer_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable*
valueB"  ?  *
dtype0*
_output_shapes
:
?
,Variable/optimizer_1/Initializer/zeros/ConstConst*
_class
loc:@Variable*
valueB
 *    *
dtype0*
_output_shapes
: 
?
&Variable/optimizer_1/Initializer/zerosFill6Variable/optimizer_1/Initializer/zeros/shape_as_tensor,Variable/optimizer_1/Initializer/zeros/Const*
T0*
_class
loc:@Variable*

index_type0* 
_output_shapes
:
? ?
?
Variable/optimizer_1
VariableV2*
shared_name *
_class
loc:@Variable*
	container *
shape:
? ?*
dtype0* 
_output_shapes
:
? ?
?
Variable/optimizer_1/AssignAssignVariable/optimizer_1&Variable/optimizer_1/Initializer/zeros* 
_output_shapes
:
? ?*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
Variable/optimizer_1/readIdentityVariable/optimizer_1*
T0*
_class
loc:@Variable* 
_output_shapes
:
? ?
?
&Variable_1/optimizer/Initializer/zerosConst*
dtype0*
_output_shapes
:	?*
_class
loc:@Variable_1*
valueB	?*    
?
Variable_1/optimizer
VariableV2*
dtype0*
_output_shapes
:	?*
shared_name *
_class
loc:@Variable_1*
	container *
shape:	?
?
Variable_1/optimizer/AssignAssignVariable_1/optimizer&Variable_1/optimizer/Initializer/zeros*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:	?*
use_locking(
?
Variable_1/optimizer/readIdentityVariable_1/optimizer*
T0*
_class
loc:@Variable_1*
_output_shapes
:	?
?
(Variable_1/optimizer_1/Initializer/zerosConst*
_class
loc:@Variable_1*
valueB	?*    *
dtype0*
_output_shapes
:	?
?
Variable_1/optimizer_1
VariableV2*
shared_name *
_class
loc:@Variable_1*
	container *
shape:	?*
dtype0*
_output_shapes
:	?
?
Variable_1/optimizer_1/AssignAssignVariable_1/optimizer_1(Variable_1/optimizer_1/Initializer/zeros*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0
?
Variable_1/optimizer_1/readIdentityVariable_1/optimizer_1*
_output_shapes
:	?*
T0*
_class
loc:@Variable_1
?
&Variable_2/optimizer/Initializer/zerosConst*
_class
loc:@Variable_2*
valueB	?*    *
dtype0*
_output_shapes
:	?
?
Variable_2/optimizer
VariableV2*
shape:	?*
dtype0*
_output_shapes
:	?*
shared_name *
_class
loc:@Variable_2*
	container 
?
Variable_2/optimizer/AssignAssignVariable_2/optimizer&Variable_2/optimizer/Initializer/zeros*
_output_shapes
:	?*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
?
Variable_2/optimizer/readIdentityVariable_2/optimizer*
_output_shapes
:	?*
T0*
_class
loc:@Variable_2
?
(Variable_2/optimizer_1/Initializer/zerosConst*
_class
loc:@Variable_2*
valueB	?*    *
dtype0*
_output_shapes
:	?
?
Variable_2/optimizer_1
VariableV2*
shared_name *
_class
loc:@Variable_2*
	container *
shape:	?*
dtype0*
_output_shapes
:	?
?
Variable_2/optimizer_1/AssignAssignVariable_2/optimizer_1(Variable_2/optimizer_1/Initializer/zeros*
T0*
_class
loc:@Variable_2*
validate_shape(*
_output_shapes
:	?*
use_locking(
?
Variable_2/optimizer_1/readIdentityVariable_2/optimizer_1*
T0*
_class
loc:@Variable_2*
_output_shapes
:	?
?
&Variable_3/optimizer/Initializer/zerosConst*
_class
loc:@Variable_3*
valueB*    *
dtype0*
_output_shapes

:
?
Variable_3/optimizer
VariableV2*
_class
loc:@Variable_3*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 
?
Variable_3/optimizer/AssignAssignVariable_3/optimizer&Variable_3/optimizer/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes

:
?
Variable_3/optimizer/readIdentityVariable_3/optimizer*
_output_shapes

:*
T0*
_class
loc:@Variable_3
?
(Variable_3/optimizer_1/Initializer/zerosConst*
_output_shapes

:*
_class
loc:@Variable_3*
valueB*    *
dtype0
?
Variable_3/optimizer_1
VariableV2*
shared_name *
_class
loc:@Variable_3*
	container *
shape
:*
dtype0*
_output_shapes

:
?
Variable_3/optimizer_1/AssignAssignVariable_3/optimizer_1(Variable_3/optimizer_1/Initializer/zeros*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes

:*
use_locking(
?
Variable_3/optimizer_1/readIdentityVariable_3/optimizer_1*
T0*
_class
loc:@Variable_3*
_output_shapes

:
[
train_op/learning_rateConst*
valueB
 *o?:*
dtype0*
_output_shapes
: 
S
train_op/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
S
train_op/beta2Const*
valueB
 *w??*
dtype0*
_output_shapes
: 
U
train_op/epsilonConst*
dtype0*
_output_shapes
: *
valueB
 *w?+2
?
"train_op/update_Variable/ApplyAdam	ApplyAdamVariableVariable/optimizerVariable/optimizer_1beta1_power/readbeta2_power/readtrain_op/learning_ratetrain_op/beta1train_op/beta2train_op/epsilon0gradients/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable*
use_nesterov( * 
_output_shapes
:
? ?
?
$train_op/update_Variable_1/ApplyAdam	ApplyAdam
Variable_1Variable_1/optimizerVariable_1/optimizer_1beta1_power/readbeta2_power/readtrain_op/learning_ratetrain_op/beta1train_op/beta2train_op/epsilon1gradients/hidden1_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_1*
use_nesterov( *
_output_shapes
:	?
?
$train_op/update_Variable_2/ApplyAdam	ApplyAdam
Variable_2Variable_2/optimizerVariable_2/optimizer_1beta1_power/readbeta2_power/readtrain_op/learning_ratetrain_op/beta1train_op/beta2train_op/epsilon2gradients/MatMul_1_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_2*
use_nesterov( *
_output_shapes
:	?*
use_locking( 
?
$train_op/update_Variable_3/ApplyAdam	ApplyAdam
Variable_3Variable_3/optimizerVariable_3/optimizer_1beta1_power/readbeta2_power/readtrain_op/learning_ratetrain_op/beta1train_op/beta2train_op/epsilon0gradients/output_grad/tuple/control_dependency_1*
_class
loc:@Variable_3*
use_nesterov( *
_output_shapes

:*
use_locking( *
T0
?
train_op/mulMulbeta1_power/readtrain_op/beta1#^train_op/update_Variable/ApplyAdam%^train_op/update_Variable_1/ApplyAdam%^train_op/update_Variable_2/ApplyAdam%^train_op/update_Variable_3/ApplyAdam*
T0*
_class
loc:@Variable*
_output_shapes
: 
?
train_op/AssignAssignbeta1_powertrain_op/mul*
use_locking( *
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
?
train_op/mul_1Mulbeta2_power/readtrain_op/beta2#^train_op/update_Variable/ApplyAdam%^train_op/update_Variable_1/ApplyAdam%^train_op/update_Variable_2/ApplyAdam%^train_op/update_Variable_3/ApplyAdam*
T0*
_class
loc:@Variable*
_output_shapes
: 
?
train_op/Assign_1Assignbeta2_powertrain_op/mul_1*
use_locking( *
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
?
train_opNoOp^train_op/Assign^train_op/Assign_1#^train_op/update_Variable/ApplyAdam%^train_op/update_Variable_1/ApplyAdam%^train_op/update_Variable_2/ApplyAdam%^train_op/update_Variable_3/ApplyAdam
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
shape: *
dtype0
?
save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*?
value?B?BVariableBVariable/optimizerBVariable/optimizer_1B
Variable_1BVariable_1/optimizerBVariable_1/optimizer_1B
Variable_2BVariable_2/optimizerBVariable_2/optimizer_1B
Variable_3BVariable_3/optimizerBVariable_3/optimizer_1Bbeta1_powerBbeta2_power

save/SaveV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariableVariable/optimizerVariable/optimizer_1
Variable_1Variable_1/optimizerVariable_1/optimizer_1
Variable_2Variable_2/optimizerVariable_2/optimizer_1
Variable_3Variable_3/optimizerVariable_3/optimizer_1beta1_powerbeta2_power*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst*?
value?B?BVariableBVariable/optimizerBVariable/optimizer_1B
Variable_1BVariable_1/optimizerBVariable_1/optimizer_1B
Variable_2BVariable_2/optimizerBVariable_2/optimizer_1B
Variable_3BVariable_3/optimizerBVariable_3/optimizer_1Bbeta1_powerBbeta2_power*
dtype0*
_output_shapes
:
?
save/RestoreV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*L
_output_shapes:
8::::::::::::::*
dtypes
2
?
save/AssignAssignVariablesave/RestoreV2*
_class
loc:@Variable*
validate_shape(* 
_output_shapes
:
? ?*
use_locking(*
T0
?
save/Assign_1AssignVariable/optimizersave/RestoreV2:1*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(* 
_output_shapes
:
? ?
?
save/Assign_2AssignVariable/optimizer_1save/RestoreV2:2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(* 
_output_shapes
:
? ?
?
save/Assign_3Assign
Variable_1save/RestoreV2:3*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0*
_class
loc:@Variable_1
?
save/Assign_4AssignVariable_1/optimizersave/RestoreV2:4*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:	?
?
save/Assign_5AssignVariable_1/optimizer_1save/RestoreV2:5*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:	?
?
save/Assign_6Assign
Variable_2save/RestoreV2:6*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*
_output_shapes
:	?
?
save/Assign_7AssignVariable_2/optimizersave/RestoreV2:7*
_class
loc:@Variable_2*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0
?
save/Assign_8AssignVariable_2/optimizer_1save/RestoreV2:8*
T0*
_class
loc:@Variable_2*
validate_shape(*
_output_shapes
:	?*
use_locking(
?
save/Assign_9Assign
Variable_3save/RestoreV2:9*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes

:
?
save/Assign_10AssignVariable_3/optimizersave/RestoreV2:10*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes

:
?
save/Assign_11AssignVariable_3/optimizer_1save/RestoreV2:11*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes

:
?
save/Assign_12Assignbeta1_powersave/RestoreV2:12*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
save/Assign_13Assignbeta2_powersave/RestoreV2:13*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
?
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
?
initNoOp^Variable/Assign^Variable/optimizer/Assign^Variable/optimizer_1/Assign^Variable_1/Assign^Variable_1/optimizer/Assign^Variable_1/optimizer_1/Assign^Variable_2/Assign^Variable_2/optimizer/Assign^Variable_2/optimizer_1/Assign^Variable_3/Assign^Variable_3/optimizer/Assign^Variable_3/optimizer_1/Assign^beta1_power/Assign^beta2_power/Assign
[
save_1/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
_output_shapes
: *
shape: *
dtype0
?
save_1/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*?
value?B?BVariableBVariable/optimizerBVariable/optimizer_1B
Variable_1BVariable_1/optimizerBVariable_1/optimizer_1B
Variable_2BVariable_2/optimizerBVariable_2/optimizer_1B
Variable_3BVariable_3/optimizerBVariable_3/optimizer_1Bbeta1_powerBbeta2_power
?
save_1/SaveV2/shape_and_slicesConst*
_output_shapes
:*/
value&B$B B B B B B B B B B B B B B *
dtype0
?
save_1/SaveV2SaveV2save_1/Constsave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesVariableVariable/optimizerVariable/optimizer_1
Variable_1Variable_1/optimizerVariable_1/optimizer_1
Variable_2Variable_2/optimizerVariable_2/optimizer_1
Variable_3Variable_3/optimizerVariable_3/optimizer_1beta1_powerbeta2_power*
dtypes
2
?
save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2*
_output_shapes
: *
T0*
_class
loc:@save_1/Const
?
save_1/RestoreV2/tensor_namesConst*?
value?B?BVariableBVariable/optimizerBVariable/optimizer_1B
Variable_1BVariable_1/optimizerBVariable_1/optimizer_1B
Variable_2BVariable_2/optimizerBVariable_2/optimizer_1B
Variable_3BVariable_3/optimizerBVariable_3/optimizer_1Bbeta1_powerBbeta2_power*
dtype0*
_output_shapes
:
?
!save_1/RestoreV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*L
_output_shapes:
8::::::::::::::*
dtypes
2
?
save_1/AssignAssignVariablesave_1/RestoreV2* 
_output_shapes
:
? ?*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
save_1/Assign_1AssignVariable/optimizersave_1/RestoreV2:1*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(* 
_output_shapes
:
? ?
?
save_1/Assign_2AssignVariable/optimizer_1save_1/RestoreV2:2*
_class
loc:@Variable*
validate_shape(* 
_output_shapes
:
? ?*
use_locking(*
T0
?
save_1/Assign_3Assign
Variable_1save_1/RestoreV2:3*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0*
_class
loc:@Variable_1
?
save_1/Assign_4AssignVariable_1/optimizersave_1/RestoreV2:4*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0
?
save_1/Assign_5AssignVariable_1/optimizer_1save_1/RestoreV2:5*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:	?*
use_locking(
?
save_1/Assign_6Assign
Variable_2save_1/RestoreV2:6*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*
_output_shapes
:	?
?
save_1/Assign_7AssignVariable_2/optimizersave_1/RestoreV2:7*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*
_output_shapes
:	?
?
save_1/Assign_8AssignVariable_2/optimizer_1save_1/RestoreV2:8*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*
_output_shapes
:	?
?
save_1/Assign_9Assign
Variable_3save_1/RestoreV2:9*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes

:*
use_locking(
?
save_1/Assign_10AssignVariable_3/optimizersave_1/RestoreV2:10*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes

:
?
save_1/Assign_11AssignVariable_3/optimizer_1save_1/RestoreV2:11*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes

:
?
save_1/Assign_12Assignbeta1_powersave_1/RestoreV2:12*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
?
save_1/Assign_13Assignbeta2_powersave_1/RestoreV2:13*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
?
save_1/restore_allNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
[
save_2/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
r
save_2/filenamePlaceholderWithDefaultsave_2/filename/input*
_output_shapes
: *
shape: *
dtype0
i
save_2/ConstPlaceholderWithDefaultsave_2/filename*
_output_shapes
: *
shape: *
dtype0
?
save_2/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_1136210c12284022a3bd115a5ce4f345/part*
dtype0
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_2/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_2/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
?
save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards*
_output_shapes
: 
?
save_2/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*?
value?B?BVariableBVariable/optimizerBVariable/optimizer_1B
Variable_1BVariable_1/optimizerBVariable_1/optimizer_1B
Variable_2BVariable_2/optimizerBVariable_2/optimizer_1B
Variable_3BVariable_3/optimizerBVariable_3/optimizer_1Bbeta1_powerBbeta2_power
?
save_2/SaveV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesVariableVariable/optimizerVariable/optimizer_1
Variable_1Variable_1/optimizerVariable_1/optimizer_1
Variable_2Variable_2/optimizerVariable_2/optimizer_1
Variable_3Variable_3/optimizerVariable_3/optimizer_1beta1_powerbeta2_power*
dtypes
2
?
save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2*
T0*)
_class
loc:@save_2/ShardedFilename*
_output_shapes
: 
?
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency*
T0*

axis *
N*
_output_shapes
:
?
save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const*
delete_old_dirs(
?
save_2/IdentityIdentitysave_2/Const^save_2/MergeV2Checkpoints^save_2/control_dependency*
T0*
_output_shapes
: 
?
save_2/RestoreV2/tensor_namesConst*?
value?B?BVariableBVariable/optimizerBVariable/optimizer_1B
Variable_1BVariable_1/optimizerBVariable_1/optimizer_1B
Variable_2BVariable_2/optimizerBVariable_2/optimizer_1B
Variable_3BVariable_3/optimizerBVariable_3/optimizer_1Bbeta1_powerBbeta2_power*
dtype0*
_output_shapes
:
?
!save_2/RestoreV2/shape_and_slicesConst*
_output_shapes
:*/
value&B$B B B B B B B B B B B B B B *
dtype0
?
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*L
_output_shapes:
8::::::::::::::*
dtypes
2
?
save_2/AssignAssignVariablesave_2/RestoreV2*
_class
loc:@Variable*
validate_shape(* 
_output_shapes
:
? ?*
use_locking(*
T0
?
save_2/Assign_1AssignVariable/optimizersave_2/RestoreV2:1*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(* 
_output_shapes
:
? ?
?
save_2/Assign_2AssignVariable/optimizer_1save_2/RestoreV2:2*
validate_shape(* 
_output_shapes
:
? ?*
use_locking(*
T0*
_class
loc:@Variable
?
save_2/Assign_3Assign
Variable_1save_2/RestoreV2:3*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:	?
?
save_2/Assign_4AssignVariable_1/optimizersave_2/RestoreV2:4*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0
?
save_2/Assign_5AssignVariable_1/optimizer_1save_2/RestoreV2:5*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0*
_class
loc:@Variable_1
?
save_2/Assign_6Assign
Variable_2save_2/RestoreV2:6*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0*
_class
loc:@Variable_2
?
save_2/Assign_7AssignVariable_2/optimizersave_2/RestoreV2:7*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*
_output_shapes
:	?
?
save_2/Assign_8AssignVariable_2/optimizer_1save_2/RestoreV2:8*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*
_output_shapes
:	?
?
save_2/Assign_9Assign
Variable_3save_2/RestoreV2:9*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes

:
?
save_2/Assign_10AssignVariable_3/optimizersave_2/RestoreV2:10*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes

:*
use_locking(
?
save_2/Assign_11AssignVariable_3/optimizer_1save_2/RestoreV2:11*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes

:
?
save_2/Assign_12Assignbeta1_powersave_2/RestoreV2:12*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
?
save_2/Assign_13Assignbeta2_powersave_2/RestoreV2:13*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
?
save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13^save_2/Assign_2^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9
1
save_2/restore_allNoOp^save_2/restore_shard "&B
save_2/Const:0save_2/Identity:0save_2/restore_all (5 @F8"
train_op


train_op"?
	variables??
B

Variable:0Variable/AssignVariable/read:02random_uniform:08
J
Variable_1:0Variable_1/AssignVariable_1/read:02random_uniform_1:08
J
Variable_2:0Variable_2/AssignVariable_2/read:02random_uniform_2:08
J
Variable_3:0Variable_3/AssignVariable_3/read:02random_uniform_3:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
t
Variable/optimizer:0Variable/optimizer/AssignVariable/optimizer/read:02&Variable/optimizer/Initializer/zeros:0
|
Variable/optimizer_1:0Variable/optimizer_1/AssignVariable/optimizer_1/read:02(Variable/optimizer_1/Initializer/zeros:0
|
Variable_1/optimizer:0Variable_1/optimizer/AssignVariable_1/optimizer/read:02(Variable_1/optimizer/Initializer/zeros:0
?
Variable_1/optimizer_1:0Variable_1/optimizer_1/AssignVariable_1/optimizer_1/read:02*Variable_1/optimizer_1/Initializer/zeros:0
|
Variable_2/optimizer:0Variable_2/optimizer/AssignVariable_2/optimizer/read:02(Variable_2/optimizer/Initializer/zeros:0
?
Variable_2/optimizer_1:0Variable_2/optimizer_1/AssignVariable_2/optimizer_1/read:02*Variable_2/optimizer_1/Initializer/zeros:0
|
Variable_3/optimizer:0Variable_3/optimizer/AssignVariable_3/optimizer/read:02(Variable_3/optimizer/Initializer/zeros:0
?
Variable_3/optimizer_1:0Variable_3/optimizer_1/AssignVariable_3/optimizer_1/read:02*Variable_3/optimizer_1/Initializer/zeros:0"?
trainable_variables??
B

Variable:0Variable/AssignVariable/read:02random_uniform:08
J
Variable_1:0Variable_1/AssignVariable_1/read:02random_uniform_1:08
J
Variable_2:0Variable_2/AssignVariable_2/read:02random_uniform_2:08
J
Variable_3:0Variable_3/AssignVariable_3/read:02random_uniform_3:08*?
serving_defaultq
(
input
input:0?????????? )
output
output:0?????????tensorflow/serving/predict