
?
inputPlaceholder*
dtype0*
shape:?????????	
@
targetPlaceholder*
dtype0*
shape:?????????
I
random_uniform/shapeConst*
valueB"	      *
dtype0
?
random_uniform/minConst*
valueB
 *   ?*
dtype0
?
random_uniform/maxConst*
valueB
 *   ?*
dtype0
r
random_uniform/RandomUniformRandomUniformrandom_uniform/shape*

seed *
T0*
dtype0*
seed2 
J
random_uniform/subSubrandom_uniform/maxrandom_uniform/min*
T0
T
random_uniform/mulMulrandom_uniform/RandomUniformrandom_uniform/sub*
T0
F
random_uniformAddrandom_uniform/mulrandom_uniform/min*
T0
\
Variable
VariableV2*
shared_name *
dtype0*
	container *
shape
:	
?
Variable/AssignAssignVariablerandom_uniform*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
I
Variable/readIdentityVariable*
T0*
_class
loc:@Variable
K
random_uniform_1/shapeConst*
valueB"      *
dtype0
A
random_uniform_1/minConst*
valueB
 *q??*
dtype0
A
random_uniform_1/maxConst*
valueB
 *q??*
dtype0
v
random_uniform_1/RandomUniformRandomUniformrandom_uniform_1/shape*

seed *
T0*
dtype0*
seed2 
P
random_uniform_1/subSubrandom_uniform_1/maxrandom_uniform_1/min*
T0
Z
random_uniform_1/mulMulrandom_uniform_1/RandomUniformrandom_uniform_1/sub*
T0
L
random_uniform_1Addrandom_uniform_1/mulrandom_uniform_1/min*
T0
^

Variable_1
VariableV2*
dtype0*
	container *
shape
:*
shared_name 
?
Variable_1/AssignAssign
Variable_1random_uniform_1*
T0*
_class
loc:@Variable_1*
validate_shape(*
use_locking(
O
Variable_1/readIdentity
Variable_1*
T0*
_class
loc:@Variable_1
K
random_uniform_2/shapeConst*
valueB"      *
dtype0
A
random_uniform_2/minConst*
valueB
 *q??*
dtype0
A
random_uniform_2/maxConst*
valueB
 *q??*
dtype0
v
random_uniform_2/RandomUniformRandomUniformrandom_uniform_2/shape*

seed *
T0*
dtype0*
seed2 
P
random_uniform_2/subSubrandom_uniform_2/maxrandom_uniform_2/min*
T0
Z
random_uniform_2/mulMulrandom_uniform_2/RandomUniformrandom_uniform_2/sub*
T0
L
random_uniform_2Addrandom_uniform_2/mulrandom_uniform_2/min*
T0
^

Variable_2
VariableV2*
shared_name *
dtype0*
	container *
shape
:
?
Variable_2/AssignAssign
Variable_2random_uniform_2*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
O
Variable_2/readIdentity
Variable_2*
T0*
_class
loc:@Variable_2
K
random_uniform_3/shapeConst*
valueB"      *
dtype0
A
random_uniform_3/minConst*
valueB
 *׳ݿ*
dtype0
A
random_uniform_3/maxConst*
valueB
 *׳??*
dtype0
v
random_uniform_3/RandomUniformRandomUniformrandom_uniform_3/shape*
T0*
dtype0*
seed2 *

seed 
P
random_uniform_3/subSubrandom_uniform_3/maxrandom_uniform_3/min*
T0
Z
random_uniform_3/mulMulrandom_uniform_3/RandomUniformrandom_uniform_3/sub*
T0
L
random_uniform_3Addrandom_uniform_3/mulrandom_uniform_3/min*
T0
^

Variable_3
VariableV2*
shared_name *
dtype0*
	container *
shape
:
?
Variable_3/AssignAssign
Variable_3random_uniform_3*
T0*
_class
loc:@Variable_3*
validate_shape(*
use_locking(
O
Variable_3/readIdentity
Variable_3*
T0*
_class
loc:@Variable_3
U
MatMulMatMulinputVariable/read*
transpose_a( *
transpose_b( *
T0
0
hidden1AddMatMulVariable_1/read*
T0
?
*batch_normalization/gamma/Initializer/onesConst*,
_class"
 loc:@batch_normalization/gamma*
valueB*  ??*
dtype0
?
batch_normalization/gamma
VariableV2*
shape:*
shared_name *,
_class"
 loc:@batch_normalization/gamma*
dtype0*
	container 
?
 batch_normalization/gamma/AssignAssignbatch_normalization/gamma*batch_normalization/gamma/Initializer/ones*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
use_locking(
|
batch_normalization/gamma/readIdentitybatch_normalization/gamma*
T0*,
_class"
 loc:@batch_normalization/gamma
?
*batch_normalization/beta/Initializer/zerosConst*+
_class!
loc:@batch_normalization/beta*
valueB*    *
dtype0
?
batch_normalization/beta
VariableV2*+
_class!
loc:@batch_normalization/beta*
dtype0*
	container *
shape:*
shared_name 
?
batch_normalization/beta/AssignAssignbatch_normalization/beta*batch_normalization/beta/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(
y
batch_normalization/beta/readIdentitybatch_normalization/beta*
T0*+
_class!
loc:@batch_normalization/beta
?
1batch_normalization/moving_mean/Initializer/zerosConst*
dtype0*2
_class(
&$loc:@batch_normalization/moving_mean*
valueB*    
?
batch_normalization/moving_mean
VariableV2*
shape:*
shared_name *2
_class(
&$loc:@batch_normalization/moving_mean*
dtype0*
	container 
?
&batch_normalization/moving_mean/AssignAssignbatch_normalization/moving_mean1batch_normalization/moving_mean/Initializer/zeros*
use_locking(*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
validate_shape(
?
$batch_normalization/moving_mean/readIdentitybatch_normalization/moving_mean*
T0*2
_class(
&$loc:@batch_normalization/moving_mean
?
4batch_normalization/moving_variance/Initializer/onesConst*6
_class,
*(loc:@batch_normalization/moving_variance*
valueB*  ??*
dtype0
?
#batch_normalization/moving_variance
VariableV2*6
_class,
*(loc:@batch_normalization/moving_variance*
dtype0*
	container *
shape:*
shared_name 
?
*batch_normalization/moving_variance/AssignAssign#batch_normalization/moving_variance4batch_normalization/moving_variance/Initializer/ones*6
_class,
*(loc:@batch_normalization/moving_variance*
validate_shape(*
use_locking(*
T0
?
(batch_normalization/moving_variance/readIdentity#batch_normalization/moving_variance*6
_class,
*(loc:@batch_normalization/moving_variance*
T0
P
#batch_normalization/batchnorm/add/yConst*
valueB
 *o?:*
dtype0
?
!batch_normalization/batchnorm/addAdd(batch_normalization/moving_variance/read#batch_normalization/batchnorm/add/y*
T0
X
#batch_normalization/batchnorm/RsqrtRsqrt!batch_normalization/batchnorm/add*
T0
v
!batch_normalization/batchnorm/mulMul#batch_normalization/batchnorm/Rsqrtbatch_normalization/gamma/read*
T0
_
#batch_normalization/batchnorm/mul_1Mulhidden1!batch_normalization/batchnorm/mul*
T0
|
#batch_normalization/batchnorm/mul_2Mul$batch_normalization/moving_mean/read!batch_normalization/batchnorm/mul*
T0
u
!batch_normalization/batchnorm/subSubbatch_normalization/beta/read#batch_normalization/batchnorm/mul_2*
T0
{
#batch_normalization/batchnorm/add_1Add#batch_normalization/batchnorm/mul_1!batch_normalization/batchnorm/sub*
T0
w
MatMul_1MatMul#batch_normalization/batchnorm/add_1Variable_2/read*
T0*
transpose_a( *
transpose_b( 
1
outputAddMatMul_1Variable_3/read*
T0
#
SubSubtargetoutput*
T0

SquareSquareSub*
T0
:
ConstConst*
valueB"       *
dtype0
A
MeanMeanSquareConst*

Tidx0*
	keep_dims( *
T0
8
gradients/ShapeConst*
valueB *
dtype0
@
gradients/grad_ys_0Const*
valueB
 *  ??*
dtype0
W
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0
V
!gradients/Mean_grad/Reshape/shapeConst*
valueB"      *
dtype0
p
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0
C
gradients/Mean_grad/ShapeShapeSquare*
T0*
out_type0
s
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0
E
gradients/Mean_grad/Shape_1ShapeSquare*
T0*
out_type0
D
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0
G
gradients/Mean_grad/ConstConst*
valueB: *
dtype0
~
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*

Tidx0*
	keep_dims( 
I
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0
?
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*

Tidx0*
	keep_dims( *
T0
G
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0
j
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0
h
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0
f
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*
Truncate( *

DstT0*

SrcT0
c
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0
f
gradients/Square_grad/ConstConst^gradients/Mean_grad/truediv*
valueB
 *   @*
dtype0
K
gradients/Square_grad/MulMulSubgradients/Square_grad/Const*
T0
c
gradients/Square_grad/Mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/Mul*
T0
B
gradients/Sub_grad/ShapeShapetarget*
out_type0*
T0
D
gradients/Sub_grad/Shape_1Shapeoutput*
T0*
out_type0
?
(gradients/Sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Sub_grad/Shapegradients/Sub_grad/Shape_1*
T0
?
gradients/Sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/Sub_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
n
gradients/Sub_grad/ReshapeReshapegradients/Sub_grad/Sumgradients/Sub_grad/Shape*
T0*
Tshape0
?
gradients/Sub_grad/Sum_1Sumgradients/Square_grad/Mul_1*gradients/Sub_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
@
gradients/Sub_grad/NegNeggradients/Sub_grad/Sum_1*
T0
r
gradients/Sub_grad/Reshape_1Reshapegradients/Sub_grad/Neggradients/Sub_grad/Shape_1*
T0*
Tshape0
g
#gradients/Sub_grad/tuple/group_depsNoOp^gradients/Sub_grad/Reshape^gradients/Sub_grad/Reshape_1
?
+gradients/Sub_grad/tuple/control_dependencyIdentitygradients/Sub_grad/Reshape$^gradients/Sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Sub_grad/Reshape
?
-gradients/Sub_grad/tuple/control_dependency_1Identitygradients/Sub_grad/Reshape_1$^gradients/Sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Sub_grad/Reshape_1
G
gradients/output_grad/ShapeShapeMatMul_1*
T0*
out_type0
R
gradients/output_grad/Shape_1Const*
valueB"      *
dtype0
?
+gradients/output_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/output_grad/Shapegradients/output_grad/Shape_1*
T0
?
gradients/output_grad/SumSum-gradients/Sub_grad/tuple/control_dependency_1+gradients/output_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
w
gradients/output_grad/ReshapeReshapegradients/output_grad/Sumgradients/output_grad/Shape*
T0*
Tshape0
?
gradients/output_grad/Sum_1Sum-gradients/Sub_grad/tuple/control_dependency_1-gradients/output_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
}
gradients/output_grad/Reshape_1Reshapegradients/output_grad/Sum_1gradients/output_grad/Shape_1*
T0*
Tshape0
p
&gradients/output_grad/tuple/group_depsNoOp^gradients/output_grad/Reshape ^gradients/output_grad/Reshape_1
?
.gradients/output_grad/tuple/control_dependencyIdentitygradients/output_grad/Reshape'^gradients/output_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/output_grad/Reshape
?
0gradients/output_grad/tuple/control_dependency_1Identitygradients/output_grad/Reshape_1'^gradients/output_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/output_grad/Reshape_1
?
gradients/MatMul_1_grad/MatMulMatMul.gradients/output_grad/tuple/control_dependencyVariable_2/read*
T0*
transpose_a( *
transpose_b(
?
 gradients/MatMul_1_grad/MatMul_1MatMul#batch_normalization/batchnorm/add_1.gradients/output_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
?
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul
?
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1

8gradients/batch_normalization/batchnorm/add_1_grad/ShapeShape#batch_normalization/batchnorm/mul_1*
out_type0*
T0
h
:gradients/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
valueB:*
dtype0
?
Hgradients/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization/batchnorm/add_1_grad/Shape:gradients/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0
?
6gradients/batch_normalization/batchnorm/add_1_grad/SumSum0gradients/MatMul_1_grad/tuple/control_dependencyHgradients/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
?
:gradients/batch_normalization/batchnorm/add_1_grad/ReshapeReshape6gradients/batch_normalization/batchnorm/add_1_grad/Sum8gradients/batch_normalization/batchnorm/add_1_grad/Shape*
Tshape0*
T0
?
8gradients/batch_normalization/batchnorm/add_1_grad/Sum_1Sum0gradients/MatMul_1_grad/tuple/control_dependencyJgradients/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
?
<gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1Reshape8gradients/batch_normalization/batchnorm/add_1_grad/Sum_1:gradients/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0*
Tshape0
?
Cgradients/batch_normalization/batchnorm/add_1_grad/tuple/group_depsNoOp;^gradients/batch_normalization/batchnorm/add_1_grad/Reshape=^gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1
?
Kgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependencyIdentity:gradients/batch_normalization/batchnorm/add_1_grad/ReshapeD^gradients/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/batch_normalization/batchnorm/add_1_grad/Reshape
?
Mgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1Identity<gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1D^gradients/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1
c
8gradients/batch_normalization/batchnorm/mul_1_grad/ShapeShapehidden1*
T0*
out_type0
h
:gradients/batch_normalization/batchnorm/mul_1_grad/Shape_1Const*
dtype0*
valueB:
?
Hgradients/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization/batchnorm/mul_1_grad/Shape:gradients/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0
?
6gradients/batch_normalization/batchnorm/mul_1_grad/MulMulKgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency!batch_normalization/batchnorm/mul*
T0
?
6gradients/batch_normalization/batchnorm/mul_1_grad/SumSum6gradients/batch_normalization/batchnorm/mul_1_grad/MulHgradients/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
:gradients/batch_normalization/batchnorm/mul_1_grad/ReshapeReshape6gradients/batch_normalization/batchnorm/mul_1_grad/Sum8gradients/batch_normalization/batchnorm/mul_1_grad/Shape*
T0*
Tshape0
?
8gradients/batch_normalization/batchnorm/mul_1_grad/Mul_1Mulhidden1Kgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency*
T0
?
8gradients/batch_normalization/batchnorm/mul_1_grad/Sum_1Sum8gradients/batch_normalization/batchnorm/mul_1_grad/Mul_1Jgradients/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
?
<gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1Reshape8gradients/batch_normalization/batchnorm/mul_1_grad/Sum_1:gradients/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0
?
Cgradients/batch_normalization/batchnorm/mul_1_grad/tuple/group_depsNoOp;^gradients/batch_normalization/batchnorm/mul_1_grad/Reshape=^gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1
?
Kgradients/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyIdentity:gradients/batch_normalization/batchnorm/mul_1_grad/ReshapeD^gradients/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/batch_normalization/batchnorm/mul_1_grad/Reshape
?
Mgradients/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1Identity<gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1D^gradients/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1
?
4gradients/batch_normalization/batchnorm/sub_grad/NegNegMgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1*
T0
?
Agradients/batch_normalization/batchnorm/sub_grad/tuple/group_depsNoOpN^gradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_15^gradients/batch_normalization/batchnorm/sub_grad/Neg
?
Igradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyIdentityMgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1B^gradients/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1
?
Kgradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1Identity4gradients/batch_normalization/batchnorm/sub_grad/NegB^gradients/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/batch_normalization/batchnorm/sub_grad/Neg
F
gradients/hidden1_grad/ShapeShapeMatMul*
T0*
out_type0
S
gradients/hidden1_grad/Shape_1Const*
dtype0*
valueB"      
?
,gradients/hidden1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/hidden1_grad/Shapegradients/hidden1_grad/Shape_1*
T0
?
gradients/hidden1_grad/SumSumKgradients/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency,gradients/hidden1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients/hidden1_grad/ReshapeReshapegradients/hidden1_grad/Sumgradients/hidden1_grad/Shape*
Tshape0*
T0
?
gradients/hidden1_grad/Sum_1SumKgradients/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency.gradients/hidden1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
 gradients/hidden1_grad/Reshape_1Reshapegradients/hidden1_grad/Sum_1gradients/hidden1_grad/Shape_1*
T0*
Tshape0
s
'gradients/hidden1_grad/tuple/group_depsNoOp^gradients/hidden1_grad/Reshape!^gradients/hidden1_grad/Reshape_1
?
/gradients/hidden1_grad/tuple/control_dependencyIdentitygradients/hidden1_grad/Reshape(^gradients/hidden1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/hidden1_grad/Reshape
?
1gradients/hidden1_grad/tuple/control_dependency_1Identity gradients/hidden1_grad/Reshape_1(^gradients/hidden1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/hidden1_grad/Reshape_1
?
6gradients/batch_normalization/batchnorm/mul_2_grad/MulMulKgradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1!batch_normalization/batchnorm/mul*
T0
?
8gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1MulKgradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1$batch_normalization/moving_mean/read*
T0
?
Cgradients/batch_normalization/batchnorm/mul_2_grad/tuple/group_depsNoOp7^gradients/batch_normalization/batchnorm/mul_2_grad/Mul9^gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1
?
Kgradients/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyIdentity6gradients/batch_normalization/batchnorm/mul_2_grad/MulD^gradients/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/batch_normalization/batchnorm/mul_2_grad/Mul
?
Mgradients/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1Identity8gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1D^gradients/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1
?
gradients/MatMul_grad/MatMulMatMul/gradients/hidden1_grad/tuple/control_dependencyVariable/read*
transpose_a( *
transpose_b(*
T0
?
gradients/MatMul_grad/MatMul_1MatMulinput/gradients/hidden1_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
?
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul
?
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
?
gradients/AddNAddNMgradients/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1Mgradients/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1*
N*
T0*O
_classE
CAloc:@gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1
t
4gradients/batch_normalization/batchnorm/mul_grad/MulMulgradients/AddNbatch_normalization/gamma/read*
T0
{
6gradients/batch_normalization/batchnorm/mul_grad/Mul_1Mulgradients/AddN#batch_normalization/batchnorm/Rsqrt*
T0
?
Agradients/batch_normalization/batchnorm/mul_grad/tuple/group_depsNoOp5^gradients/batch_normalization/batchnorm/mul_grad/Mul7^gradients/batch_normalization/batchnorm/mul_grad/Mul_1
?
Igradients/batch_normalization/batchnorm/mul_grad/tuple/control_dependencyIdentity4gradients/batch_normalization/batchnorm/mul_grad/MulB^gradients/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/batch_normalization/batchnorm/mul_grad/Mul
?
Kgradients/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1Identity6gradients/batch_normalization/batchnorm/mul_grad/Mul_1B^gradients/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/batch_normalization/batchnorm/mul_grad/Mul_1
c
beta1_power/initial_valueConst*
_class
loc:@Variable*
valueB
 *fff?*
dtype0
t
beta1_power
VariableV2*
_class
loc:@Variable*
dtype0*
	container *
shape: *
shared_name 
?
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
O
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@Variable
c
beta2_power/initial_valueConst*
_class
loc:@Variable*
valueB
 *w??*
dtype0
t
beta2_power
VariableV2*
_class
loc:@Variable*
dtype0*
	container *
shape: *
shared_name 
?
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
O
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@Variable
v
$Variable/optimizer/Initializer/zerosConst*
valueB	*    *
_class
loc:@Variable*
dtype0
?
Variable/optimizer
VariableV2*
	container *
shape
:	*
shared_name *
_class
loc:@Variable*
dtype0
?
Variable/optimizer/AssignAssignVariable/optimizer$Variable/optimizer/Initializer/zeros*
T0*
_class
loc:@Variable*
validate_shape(*
use_locking(
]
Variable/optimizer/readIdentityVariable/optimizer*
_class
loc:@Variable*
T0
x
&Variable/optimizer_1/Initializer/zerosConst*
valueB	*    *
_class
loc:@Variable*
dtype0
?
Variable/optimizer_1
VariableV2*
shape
:	*
shared_name *
_class
loc:@Variable*
dtype0*
	container 
?
Variable/optimizer_1/AssignAssignVariable/optimizer_1&Variable/optimizer_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
a
Variable/optimizer_1/readIdentityVariable/optimizer_1*
T0*
_class
loc:@Variable
z
&Variable_1/optimizer/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_1*
dtype0
?
Variable_1/optimizer
VariableV2*
	container *
shape
:*
shared_name *
_class
loc:@Variable_1*
dtype0
?
Variable_1/optimizer/AssignAssignVariable_1/optimizer&Variable_1/optimizer/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_1
c
Variable_1/optimizer/readIdentityVariable_1/optimizer*
T0*
_class
loc:@Variable_1
|
(Variable_1/optimizer_1/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_1*
dtype0
?
Variable_1/optimizer_1
VariableV2*
shared_name *
_class
loc:@Variable_1*
dtype0*
	container *
shape
:
?
Variable_1/optimizer_1/AssignAssignVariable_1/optimizer_1(Variable_1/optimizer_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
g
Variable_1/optimizer_1/readIdentityVariable_1/optimizer_1*
T0*
_class
loc:@Variable_1
z
&Variable_2/optimizer/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_2*
dtype0
?
Variable_2/optimizer
VariableV2*
	container *
shape
:*
shared_name *
_class
loc:@Variable_2*
dtype0
?
Variable_2/optimizer/AssignAssignVariable_2/optimizer&Variable_2/optimizer/Initializer/zeros*
_class
loc:@Variable_2*
validate_shape(*
use_locking(*
T0
c
Variable_2/optimizer/readIdentityVariable_2/optimizer*
T0*
_class
loc:@Variable_2
|
(Variable_2/optimizer_1/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_2*
dtype0
?
Variable_2/optimizer_1
VariableV2*
_class
loc:@Variable_2*
dtype0*
	container *
shape
:*
shared_name 
?
Variable_2/optimizer_1/AssignAssignVariable_2/optimizer_1(Variable_2/optimizer_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
g
Variable_2/optimizer_1/readIdentityVariable_2/optimizer_1*
T0*
_class
loc:@Variable_2
z
&Variable_3/optimizer/Initializer/zerosConst*
dtype0*
valueB*    *
_class
loc:@Variable_3
?
Variable_3/optimizer
VariableV2*
shared_name *
_class
loc:@Variable_3*
dtype0*
	container *
shape
:
?
Variable_3/optimizer/AssignAssignVariable_3/optimizer&Variable_3/optimizer/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(
c
Variable_3/optimizer/readIdentityVariable_3/optimizer*
_class
loc:@Variable_3*
T0
|
(Variable_3/optimizer_1/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_3*
dtype0
?
Variable_3/optimizer_1
VariableV2*
shape
:*
shared_name *
_class
loc:@Variable_3*
dtype0*
	container 
?
Variable_3/optimizer_1/AssignAssignVariable_3/optimizer_1(Variable_3/optimizer_1/Initializer/zeros*
_class
loc:@Variable_3*
validate_shape(*
use_locking(*
T0
g
Variable_3/optimizer_1/readIdentityVariable_3/optimizer_1*
T0*
_class
loc:@Variable_3
?
5batch_normalization/gamma/optimizer/Initializer/zerosConst*
valueB*    *,
_class"
 loc:@batch_normalization/gamma*
dtype0
?
#batch_normalization/gamma/optimizer
VariableV2*
	container *
shape:*
shared_name *,
_class"
 loc:@batch_normalization/gamma*
dtype0
?
*batch_normalization/gamma/optimizer/AssignAssign#batch_normalization/gamma/optimizer5batch_normalization/gamma/optimizer/Initializer/zeros*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
use_locking(*
T0
?
(batch_normalization/gamma/optimizer/readIdentity#batch_normalization/gamma/optimizer*
T0*,
_class"
 loc:@batch_normalization/gamma
?
7batch_normalization/gamma/optimizer_1/Initializer/zerosConst*
valueB*    *,
_class"
 loc:@batch_normalization/gamma*
dtype0
?
%batch_normalization/gamma/optimizer_1
VariableV2*,
_class"
 loc:@batch_normalization/gamma*
dtype0*
	container *
shape:*
shared_name 
?
,batch_normalization/gamma/optimizer_1/AssignAssign%batch_normalization/gamma/optimizer_17batch_normalization/gamma/optimizer_1/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(
?
*batch_normalization/gamma/optimizer_1/readIdentity%batch_normalization/gamma/optimizer_1*
T0*,
_class"
 loc:@batch_normalization/gamma
?
4batch_normalization/beta/optimizer/Initializer/zerosConst*
valueB*    *+
_class!
loc:@batch_normalization/beta*
dtype0
?
"batch_normalization/beta/optimizer
VariableV2*+
_class!
loc:@batch_normalization/beta*
dtype0*
	container *
shape:*
shared_name 
?
)batch_normalization/beta/optimizer/AssignAssign"batch_normalization/beta/optimizer4batch_normalization/beta/optimizer/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(
?
'batch_normalization/beta/optimizer/readIdentity"batch_normalization/beta/optimizer*
T0*+
_class!
loc:@batch_normalization/beta
?
6batch_normalization/beta/optimizer_1/Initializer/zerosConst*
valueB*    *+
_class!
loc:@batch_normalization/beta*
dtype0
?
$batch_normalization/beta/optimizer_1
VariableV2*
	container *
shape:*
shared_name *+
_class!
loc:@batch_normalization/beta*
dtype0
?
+batch_normalization/beta/optimizer_1/AssignAssign$batch_normalization/beta/optimizer_16batch_normalization/beta/optimizer_1/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(
?
)batch_normalization/beta/optimizer_1/readIdentity$batch_normalization/beta/optimizer_1*
T0*+
_class!
loc:@batch_normalization/beta
C
train_op/learning_rateConst*
valueB
 *o?:*
dtype0
;
train_op/beta1Const*
valueB
 *fff?*
dtype0
;
train_op/beta2Const*
valueB
 *w??*
dtype0
=
train_op/epsilonConst*
valueB
 *w?+2*
dtype0
?
"train_op/update_Variable/ApplyAdam	ApplyAdamVariableVariable/optimizerVariable/optimizer_1beta1_power/readbeta2_power/readtrain_op/learning_ratetrain_op/beta1train_op/beta2train_op/epsilon0gradients/MatMul_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable*
use_nesterov( *
use_locking( 
?
$train_op/update_Variable_1/ApplyAdam	ApplyAdam
Variable_1Variable_1/optimizerVariable_1/optimizer_1beta1_power/readbeta2_power/readtrain_op/learning_ratetrain_op/beta1train_op/beta2train_op/epsilon1gradients/hidden1_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_1*
use_nesterov( *
use_locking( 
?
$train_op/update_Variable_2/ApplyAdam	ApplyAdam
Variable_2Variable_2/optimizerVariable_2/optimizer_1beta1_power/readbeta2_power/readtrain_op/learning_ratetrain_op/beta1train_op/beta2train_op/epsilon2gradients/MatMul_1_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_2*
use_nesterov( *
use_locking( 
?
$train_op/update_Variable_3/ApplyAdam	ApplyAdam
Variable_3Variable_3/optimizerVariable_3/optimizer_1beta1_power/readbeta2_power/readtrain_op/learning_ratetrain_op/beta1train_op/beta2train_op/epsilon0gradients/output_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_3*
use_nesterov( 
?
3train_op/update_batch_normalization/gamma/ApplyAdam	ApplyAdambatch_normalization/gamma#batch_normalization/gamma/optimizer%batch_normalization/gamma/optimizer_1beta1_power/readbeta2_power/readtrain_op/learning_ratetrain_op/beta1train_op/beta2train_op/epsilonKgradients/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1*
use_locking( *
T0*,
_class"
 loc:@batch_normalization/gamma*
use_nesterov( 
?
2train_op/update_batch_normalization/beta/ApplyAdam	ApplyAdambatch_normalization/beta"batch_normalization/beta/optimizer$batch_normalization/beta/optimizer_1beta1_power/readbeta2_power/readtrain_op/learning_ratetrain_op/beta1train_op/beta2train_op/epsilonIgradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependency*
use_locking( *
T0*+
_class!
loc:@batch_normalization/beta*
use_nesterov( 
?
train_op/mulMulbeta1_power/readtrain_op/beta1#^train_op/update_Variable/ApplyAdam%^train_op/update_Variable_1/ApplyAdam%^train_op/update_Variable_2/ApplyAdam%^train_op/update_Variable_3/ApplyAdam3^train_op/update_batch_normalization/beta/ApplyAdam4^train_op/update_batch_normalization/gamma/ApplyAdam*
T0*
_class
loc:@Variable
?
train_op/AssignAssignbeta1_powertrain_op/mul*
use_locking( *
T0*
_class
loc:@Variable*
validate_shape(
?
train_op/mul_1Mulbeta2_power/readtrain_op/beta2#^train_op/update_Variable/ApplyAdam%^train_op/update_Variable_1/ApplyAdam%^train_op/update_Variable_2/ApplyAdam%^train_op/update_Variable_3/ApplyAdam3^train_op/update_batch_normalization/beta/ApplyAdam4^train_op/update_batch_normalization/gamma/ApplyAdam*
T0*
_class
loc:@Variable
?
train_op/Assign_1Assignbeta2_powertrain_op/mul_1*
use_locking( *
T0*
_class
loc:@Variable*
validate_shape(
?
train_opNoOp^train_op/Assign^train_op/Assign_1#^train_op/update_Variable/ApplyAdam%^train_op/update_Variable_1/ApplyAdam%^train_op/update_Variable_2/ApplyAdam%^train_op/update_Variable_3/ApplyAdam3^train_op/update_batch_normalization/beta/ApplyAdam4^train_op/update_batch_normalization/gamma/ApplyAdam
A
save/filename/inputConst*
valueB Bmodel*
dtype0
V
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0
M

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
shape: 
?
save/SaveV2/tensor_namesConst*?
value?B?BVariableBVariable/optimizerBVariable/optimizer_1B
Variable_1BVariable_1/optimizerBVariable_1/optimizer_1B
Variable_2BVariable_2/optimizerBVariable_2/optimizer_1B
Variable_3BVariable_3/optimizerBVariable_3/optimizer_1Bbatch_normalization/betaB"batch_normalization/beta/optimizerB$batch_normalization/beta/optimizer_1Bbatch_normalization/gammaB#batch_normalization/gamma/optimizerB%batch_normalization/gamma/optimizer_1Bbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbeta1_powerBbeta2_power*
dtype0
s
save/SaveV2/shape_and_slicesConst*?
value6B4B B B B B B B B B B B B B B B B B B B B B B *
dtype0
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariableVariable/optimizerVariable/optimizer_1
Variable_1Variable_1/optimizerVariable_1/optimizer_1
Variable_2Variable_2/optimizerVariable_2/optimizer_1
Variable_3Variable_3/optimizerVariable_3/optimizer_1batch_normalization/beta"batch_normalization/beta/optimizer$batch_normalization/beta/optimizer_1batch_normalization/gamma#batch_normalization/gamma/optimizer%batch_normalization/gamma/optimizer_1batch_normalization/moving_mean#batch_normalization/moving_variancebeta1_powerbeta2_power*$
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*?
value?B?BVariableBVariable/optimizerBVariable/optimizer_1B
Variable_1BVariable_1/optimizerBVariable_1/optimizer_1B
Variable_2BVariable_2/optimizerBVariable_2/optimizer_1B
Variable_3BVariable_3/optimizerBVariable_3/optimizer_1Bbatch_normalization/betaB"batch_normalization/beta/optimizerB$batch_normalization/beta/optimizer_1Bbatch_normalization/gammaB#batch_normalization/gamma/optimizerB%batch_normalization/gamma/optimizer_1Bbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbeta1_powerBbeta2_power*
dtype0
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B *
dtype0
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*$
dtypes
2
~
save/AssignAssignVariablesave/RestoreV2*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable
?
save/Assign_1AssignVariable/optimizersave/RestoreV2:1*
T0*
_class
loc:@Variable*
validate_shape(*
use_locking(
?
save/Assign_2AssignVariable/optimizer_1save/RestoreV2:2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
save/Assign_3Assign
Variable_1save/RestoreV2:3*
_class
loc:@Variable_1*
validate_shape(*
use_locking(*
T0
?
save/Assign_4AssignVariable_1/optimizersave/RestoreV2:4*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
?
save/Assign_5AssignVariable_1/optimizer_1save/RestoreV2:5*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_1
?
save/Assign_6Assign
Variable_2save/RestoreV2:6*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
?
save/Assign_7AssignVariable_2/optimizersave/RestoreV2:7*
_class
loc:@Variable_2*
validate_shape(*
use_locking(*
T0
?
save/Assign_8AssignVariable_2/optimizer_1save/RestoreV2:8*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
?
save/Assign_9Assign
Variable_3save/RestoreV2:9*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_3
?
save/Assign_10AssignVariable_3/optimizersave/RestoreV2:10*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(
?
save/Assign_11AssignVariable_3/optimizer_1save/RestoreV2:11*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(
?
save/Assign_12Assignbatch_normalization/betasave/RestoreV2:12*
validate_shape(*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta
?
save/Assign_13Assign"batch_normalization/beta/optimizersave/RestoreV2:13*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(
?
save/Assign_14Assign$batch_normalization/beta/optimizer_1save/RestoreV2:14*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(
?
save/Assign_15Assignbatch_normalization/gammasave/RestoreV2:15*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
use_locking(
?
save/Assign_16Assign#batch_normalization/gamma/optimizersave/RestoreV2:16*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(
?
save/Assign_17Assign%batch_normalization/gamma/optimizer_1save/RestoreV2:17*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
use_locking(
?
save/Assign_18Assignbatch_normalization/moving_meansave/RestoreV2:18*
validate_shape(*
use_locking(*
T0*2
_class(
&$loc:@batch_normalization/moving_mean
?
save/Assign_19Assign#batch_normalization/moving_variancesave/RestoreV2:19*
validate_shape(*
use_locking(*
T0*6
_class,
*(loc:@batch_normalization/moving_variance
?
save/Assign_20Assignbeta1_powersave/RestoreV2:20*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
save/Assign_21Assignbeta2_powersave/RestoreV2:21*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
?
initNoOp^Variable/Assign^Variable/optimizer/Assign^Variable/optimizer_1/Assign^Variable_1/Assign^Variable_1/optimizer/Assign^Variable_1/optimizer_1/Assign^Variable_2/Assign^Variable_2/optimizer/Assign^Variable_2/optimizer_1/Assign^Variable_3/Assign^Variable_3/optimizer/Assign^Variable_3/optimizer_1/Assign ^batch_normalization/beta/Assign*^batch_normalization/beta/optimizer/Assign,^batch_normalization/beta/optimizer_1/Assign!^batch_normalization/gamma/Assign+^batch_normalization/gamma/optimizer/Assign-^batch_normalization/gamma/optimizer_1/Assign'^batch_normalization/moving_mean/Assign+^batch_normalization/moving_variance/Assign^beta1_power/Assign^beta2_power/Assign
R
save_1/filename/inputConst"/device:CPU:0*
valueB Bmodel*
dtype0
i
save_1/filenamePlaceholderWithDefaultsave_1/filename/input"/device:CPU:0*
dtype0*
shape: 
`
save_1/ConstPlaceholderWithDefaultsave_1/filename"/device:CPU:0*
dtype0*
shape: 
?
save_1/SaveV2/tensor_namesConst"/device:CPU:0*?
value?B?BVariableBVariable/optimizerBVariable/optimizer_1B
Variable_1BVariable_1/optimizerBVariable_1/optimizer_1B
Variable_2BVariable_2/optimizerBVariable_2/optimizer_1B
Variable_3BVariable_3/optimizerBVariable_3/optimizer_1Bbatch_normalization/betaB"batch_normalization/beta/optimizerB$batch_normalization/beta/optimizer_1Bbatch_normalization/gammaB#batch_normalization/gamma/optimizerB%batch_normalization/gamma/optimizer_1Bbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbeta1_powerBbeta2_power*
dtype0
?
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B *
dtype0
?
save_1/SaveV2SaveV2save_1/Constsave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesVariableVariable/optimizerVariable/optimizer_1
Variable_1Variable_1/optimizerVariable_1/optimizer_1
Variable_2Variable_2/optimizerVariable_2/optimizer_1
Variable_3Variable_3/optimizerVariable_3/optimizer_1batch_normalization/beta"batch_normalization/beta/optimizer$batch_normalization/beta/optimizer_1batch_normalization/gamma#batch_normalization/gamma/optimizer%batch_normalization/gamma/optimizer_1batch_normalization/moving_mean#batch_normalization/moving_variancebeta1_powerbeta2_power"/device:CPU:0*$
dtypes
2
|
save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2"/device:CPU:0*
T0*
_class
loc:@save_1/Const
?
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*?
value?B?BVariableBVariable/optimizerBVariable/optimizer_1B
Variable_1BVariable_1/optimizerBVariable_1/optimizer_1B
Variable_2BVariable_2/optimizerBVariable_2/optimizer_1B
Variable_3BVariable_3/optimizerBVariable_3/optimizer_1Bbatch_normalization/betaB"batch_normalization/beta/optimizerB$batch_normalization/beta/optimizer_1Bbatch_normalization/gammaB#batch_normalization/gamma/optimizerB%batch_normalization/gamma/optimizer_1Bbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbeta1_powerBbeta2_power
?
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B *
dtype0
?
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*$
dtypes
2
?
save_1/AssignAssignVariablesave_1/RestoreV2*
T0*
_class
loc:@Variable*
validate_shape(*
use_locking(
?
save_1/Assign_1AssignVariable/optimizersave_1/RestoreV2:1*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
save_1/Assign_2AssignVariable/optimizer_1save_1/RestoreV2:2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
save_1/Assign_3Assign
Variable_1save_1/RestoreV2:3*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_1
?
save_1/Assign_4AssignVariable_1/optimizersave_1/RestoreV2:4*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
?
save_1/Assign_5AssignVariable_1/optimizer_1save_1/RestoreV2:5*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_1
?
save_1/Assign_6Assign
Variable_2save_1/RestoreV2:6*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
?
save_1/Assign_7AssignVariable_2/optimizersave_1/RestoreV2:7*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
?
save_1/Assign_8AssignVariable_2/optimizer_1save_1/RestoreV2:8*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
?
save_1/Assign_9Assign
Variable_3save_1/RestoreV2:9*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_3
?
save_1/Assign_10AssignVariable_3/optimizersave_1/RestoreV2:10*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(
?
save_1/Assign_11AssignVariable_3/optimizer_1save_1/RestoreV2:11*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(
?
save_1/Assign_12Assignbatch_normalization/betasave_1/RestoreV2:12*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(
?
save_1/Assign_13Assign"batch_normalization/beta/optimizersave_1/RestoreV2:13*
validate_shape(*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta
?
save_1/Assign_14Assign$batch_normalization/beta/optimizer_1save_1/RestoreV2:14*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(
?
save_1/Assign_15Assignbatch_normalization/gammasave_1/RestoreV2:15*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
use_locking(
?
save_1/Assign_16Assign#batch_normalization/gamma/optimizersave_1/RestoreV2:16*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
use_locking(
?
save_1/Assign_17Assign%batch_normalization/gamma/optimizer_1save_1/RestoreV2:17*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
use_locking(
?
save_1/Assign_18Assignbatch_normalization/moving_meansave_1/RestoreV2:18*
use_locking(*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
validate_shape(
?
save_1/Assign_19Assign#batch_normalization/moving_variancesave_1/RestoreV2:19*
validate_shape(*
use_locking(*
T0*6
_class,
*(loc:@batch_normalization/moving_variance
?
save_1/Assign_20Assignbeta1_powersave_1/RestoreV2:20*
_class
loc:@Variable*
validate_shape(*
use_locking(*
T0
?
save_1/Assign_21Assignbeta2_powersave_1/RestoreV2:21*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
?
save_1/restore_allNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9"/device:CPU:0"&