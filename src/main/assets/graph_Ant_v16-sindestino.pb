
9
location_inputPlaceholder*
dtype0*
shape:
6
email_inputPlaceholder*
shape:*
dtype0
5

imei_inputPlaceholder*
dtype0*
shape:
7
device_inputPlaceholder*
dtype0*
shape:
=
serialnumber_inputPlaceholder*
dtype0*
shape:
;
macaddress_inputPlaceholder*
dtype0*
shape:
;
advertiser_inputPlaceholder*
dtype0*
shape:
1
targetPlaceholder*
dtype0*
shape:
D
Plocation/initial_valueConst*
valueB
 *  A*
dtype0
U
	Plocation
VariableV2*
shape: *
shared_name *
dtype0*
	container 
?
Plocation/AssignAssign	PlocationPlocation/initial_value*
use_locking(*
T0*
_class
loc:@Plocation*
validate_shape(
L
Plocation/readIdentity	Plocation*
T0*
_class
loc:@Plocation
A
Pemail/initial_valueConst*
valueB
 *   A*
dtype0
R
Pemail
VariableV2*
dtype0*
	container *
shape: *
shared_name 
?
Pemail/AssignAssignPemailPemail/initial_value*
use_locking(*
T0*
_class
loc:@Pemail*
validate_shape(
C
Pemail/readIdentityPemail*
T0*
_class
loc:@Pemail
@
Pimei/initial_valueConst*
valueB
 *  @@*
dtype0
Q
Pimei
VariableV2*
shape: *
shared_name *
dtype0*
	container 
~
Pimei/AssignAssignPimeiPimei/initial_value*
use_locking(*
T0*
_class

loc:@Pimei*
validate_shape(
@

Pimei/readIdentityPimei*
T0*
_class

loc:@Pimei
B
Pdevice/initial_valueConst*
valueB
 *   @*
dtype0
S
Pdevice
VariableV2*
dtype0*
	container *
shape: *
shared_name 
?
Pdevice/AssignAssignPdevicePdevice/initial_value*
use_locking(*
T0*
_class
loc:@Pdevice*
validate_shape(
F
Pdevice/readIdentityPdevice*
_class
loc:@Pdevice*
T0
H
Pserialnumber/initial_valueConst*
valueB
 *  @@*
dtype0
Y
Pserialnumber
VariableV2*
dtype0*
	container *
shape: *
shared_name 
?
Pserialnumber/AssignAssignPserialnumberPserialnumber/initial_value*
use_locking(*
T0* 
_class
loc:@Pserialnumber*
validate_shape(
X
Pserialnumber/readIdentityPserialnumber*
T0* 
_class
loc:@Pserialnumber
F
Pmacaddress/initial_valueConst*
valueB
 *  ??*
dtype0
W
Pmacaddress
VariableV2*
shape: *
shared_name *
dtype0*
	container 
?
Pmacaddress/AssignAssignPmacaddressPmacaddress/initial_value*
use_locking(*
T0*
_class
loc:@Pmacaddress*
validate_shape(
R
Pmacaddress/readIdentityPmacaddress*
T0*
_class
loc:@Pmacaddress
F
Padvertiser/initial_valueConst*
valueB
 *  ?@*
dtype0
W
Padvertiser
VariableV2*
shared_name *
dtype0*
	container *
shape: 
?
Padvertiser/AssignAssignPadvertiserPadvertiser/initial_value*
use_locking(*
T0*
_class
loc:@Padvertiser*
validate_shape(
R
Padvertiser/readIdentityPadvertiser*
T0*
_class
loc:@Padvertiser
3
MulMullocation_inputPlocation/read*
T0
2
Add/yConst*
valueB
 *    *
dtype0

AddAddMulAdd/y*
T0
/
Mul_1Mulemail_inputPemail/read*
T0
!
Add_1AddMul_1Add*
T0
-
Mul_2Mul
imei_input
Pimei/read*
T0
#
Add_2AddMul_2Add_1*
T0
1
Mul_3Muldevice_inputPdevice/read*
T0
#
Add_3AddMul_3Add_2*
T0
=
Mul_4Mulserialnumber_inputPserialnumber/read*
T0
#
Add_4AddMul_4Add_3*
T0
9
Mul_5Mulmacaddress_inputPmacaddress/read*
T0
#
Add_5AddMul_5Add_4*
T0
9
Mul_6Muladvertiser_inputPadvertiser/read*
T0
#
Add_6AddMul_6Add_5*
T0
"
outputIdentityAdd_6*
T0
#
subSuboutputtarget*
T0

SquareSquaresub*
T0

RankRankSquare*
T0
5
range/startConst*
value	B : *
dtype0
5
range/deltaConst*
value	B :*
dtype0
:
rangeRangerange/startRankrange/delta*

Tidx0
A
MeanMeanSquarerange*
T0*

Tidx0*
	keep_dims( 
8
gradients/ShapeConst*
valueB *
dtype0
@
gradients/grad_ys_0Const*
dtype0*
valueB
 *  ??
W
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0
C
gradients/Mean_grad/ShapeShapeSquare*
T0*
out_type0
?
gradients/Mean_grad/SizeSizegradients/Mean_grad/Shape*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape*
out_type0
x
gradients/Mean_grad/addAddV2rangegradients/Mean_grad/Size*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape
?
gradients/Mean_grad/modFloorModgradients/Mean_grad/addgradients/Mean_grad/Size*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape
?
gradients/Mean_grad/Shape_1Shapegradients/Mean_grad/mod*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape*
out_type0
w
gradients/Mean_grad/range/startConst*,
_class"
 loc:@gradients/Mean_grad/Shape*
value	B : *
dtype0
w
gradients/Mean_grad/range/deltaConst*,
_class"
 loc:@gradients/Mean_grad/Shape*
value	B :*
dtype0
?
gradients/Mean_grad/rangeRangegradients/Mean_grad/range/startgradients/Mean_grad/Sizegradients/Mean_grad/range/delta*

Tidx0*,
_class"
 loc:@gradients/Mean_grad/Shape
v
gradients/Mean_grad/Fill/valueConst*,
_class"
 loc:@gradients/Mean_grad/Shape*
value	B :*
dtype0
?
gradients/Mean_grad/FillFillgradients/Mean_grad/Shape_1gradients/Mean_grad/Fill/value*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape*

index_type0
?
!gradients/Mean_grad/DynamicStitchDynamicStitchgradients/Mean_grad/rangegradients/Mean_grad/modgradients/Mean_grad/Shapegradients/Mean_grad/Fill*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape*
N
u
gradients/Mean_grad/Maximum/yConst*,
_class"
 loc:@gradients/Mean_grad/Shape*
value	B :*
dtype0
?
gradients/Mean_grad/MaximumMaximum!gradients/Mean_grad/DynamicStitchgradients/Mean_grad/Maximum/y*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape
?
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Shapegradients/Mean_grad/Maximum*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape
p
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/DynamicStitch*
T0*
Tshape0
v
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/floordiv*
T0*

Tmultiples0
E
gradients/Mean_grad/Shape_2ShapeSquare*
T0*
out_type0
D
gradients/Mean_grad/Shape_3Const*
valueB *
dtype0
G
gradients/Mean_grad/ConstConst*
valueB: *
dtype0
~
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_2gradients/Mean_grad/Const*
T0*

Tidx0*
	keep_dims( 
I
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0
?
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_3gradients/Mean_grad/Const_1*
T0*

Tidx0*
	keep_dims( 
I
gradients/Mean_grad/Maximum_1/yConst*
value	B :*
dtype0
n
gradients/Mean_grad/Maximum_1Maximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum_1/y*
T0
l
gradients/Mean_grad/floordiv_1FloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum_1*
T0
h
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv_1*
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
gradients/Square_grad/MulMulsubgradients/Square_grad/Const*
T0
c
gradients/Square_grad/Mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/Mul*
T0
B
gradients/sub_grad/ShapeShapeoutput*
T0*
out_type0
D
gradients/sub_grad/Shape_1Shapetarget*
out_type0*
T0
?
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0
?
gradients/sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/sub_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
n
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0
C
gradients/sub_grad/NegNeggradients/Square_grad/Mul_1*
T0
?
gradients/sub_grad/Sum_1Sumgradients/sub_grad/Neg*gradients/sub_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
t
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Sum_1gradients/sub_grad/Shape_1*
T0*
Tshape0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
?
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape
?
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
C
gradients/Add_6_grad/ShapeShapeMul_6*
T0*
out_type0
E
gradients/Add_6_grad/Shape_1ShapeAdd_5*
T0*
out_type0
?
*gradients/Add_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_6_grad/Shapegradients/Add_6_grad/Shape_1*
T0
?
gradients/Add_6_grad/SumSum+gradients/sub_grad/tuple/control_dependency*gradients/Add_6_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/Add_6_grad/ReshapeReshapegradients/Add_6_grad/Sumgradients/Add_6_grad/Shape*
T0*
Tshape0
?
gradients/Add_6_grad/Sum_1Sum+gradients/sub_grad/tuple/control_dependency,gradients/Add_6_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Add_6_grad/Reshape_1Reshapegradients/Add_6_grad/Sum_1gradients/Add_6_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_6_grad/tuple/group_depsNoOp^gradients/Add_6_grad/Reshape^gradients/Add_6_grad/Reshape_1
?
-gradients/Add_6_grad/tuple/control_dependencyIdentitygradients/Add_6_grad/Reshape&^gradients/Add_6_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_6_grad/Reshape
?
/gradients/Add_6_grad/tuple/control_dependency_1Identitygradients/Add_6_grad/Reshape_1&^gradients/Add_6_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_6_grad/Reshape_1
N
gradients/Mul_6_grad/ShapeShapeadvertiser_input*
T0*
out_type0
P
gradients/Mul_6_grad/Shape_1ShapePadvertiser/read*
T0*
out_type0
?
*gradients/Mul_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_6_grad/Shapegradients/Mul_6_grad/Shape_1*
T0
i
gradients/Mul_6_grad/MulMul-gradients/Add_6_grad/tuple/control_dependencyPadvertiser/read*
T0
?
gradients/Mul_6_grad/SumSumgradients/Mul_6_grad/Mul*gradients/Mul_6_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Mul_6_grad/ReshapeReshapegradients/Mul_6_grad/Sumgradients/Mul_6_grad/Shape*
T0*
Tshape0
k
gradients/Mul_6_grad/Mul_1Muladvertiser_input-gradients/Add_6_grad/tuple/control_dependency*
T0
?
gradients/Mul_6_grad/Sum_1Sumgradients/Mul_6_grad/Mul_1,gradients/Mul_6_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Mul_6_grad/Reshape_1Reshapegradients/Mul_6_grad/Sum_1gradients/Mul_6_grad/Shape_1*
Tshape0*
T0
m
%gradients/Mul_6_grad/tuple/group_depsNoOp^gradients/Mul_6_grad/Reshape^gradients/Mul_6_grad/Reshape_1
?
-gradients/Mul_6_grad/tuple/control_dependencyIdentitygradients/Mul_6_grad/Reshape&^gradients/Mul_6_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_6_grad/Reshape
?
/gradients/Mul_6_grad/tuple/control_dependency_1Identitygradients/Mul_6_grad/Reshape_1&^gradients/Mul_6_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_6_grad/Reshape_1
C
gradients/Add_5_grad/ShapeShapeMul_5*
T0*
out_type0
E
gradients/Add_5_grad/Shape_1ShapeAdd_4*
out_type0*
T0
?
*gradients/Add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_5_grad/Shapegradients/Add_5_grad/Shape_1*
T0
?
gradients/Add_5_grad/SumSum/gradients/Add_6_grad/tuple/control_dependency_1*gradients/Add_5_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/Add_5_grad/ReshapeReshapegradients/Add_5_grad/Sumgradients/Add_5_grad/Shape*
T0*
Tshape0
?
gradients/Add_5_grad/Sum_1Sum/gradients/Add_6_grad/tuple/control_dependency_1,gradients/Add_5_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Add_5_grad/Reshape_1Reshapegradients/Add_5_grad/Sum_1gradients/Add_5_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_5_grad/tuple/group_depsNoOp^gradients/Add_5_grad/Reshape^gradients/Add_5_grad/Reshape_1
?
-gradients/Add_5_grad/tuple/control_dependencyIdentitygradients/Add_5_grad/Reshape&^gradients/Add_5_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_5_grad/Reshape
?
/gradients/Add_5_grad/tuple/control_dependency_1Identitygradients/Add_5_grad/Reshape_1&^gradients/Add_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_5_grad/Reshape_1
N
gradients/Mul_5_grad/ShapeShapemacaddress_input*
T0*
out_type0
P
gradients/Mul_5_grad/Shape_1ShapePmacaddress/read*
T0*
out_type0
?
*gradients/Mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_5_grad/Shapegradients/Mul_5_grad/Shape_1*
T0
i
gradients/Mul_5_grad/MulMul-gradients/Add_5_grad/tuple/control_dependencyPmacaddress/read*
T0
?
gradients/Mul_5_grad/SumSumgradients/Mul_5_grad/Mul*gradients/Mul_5_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Mul_5_grad/ReshapeReshapegradients/Mul_5_grad/Sumgradients/Mul_5_grad/Shape*
T0*
Tshape0
k
gradients/Mul_5_grad/Mul_1Mulmacaddress_input-gradients/Add_5_grad/tuple/control_dependency*
T0
?
gradients/Mul_5_grad/Sum_1Sumgradients/Mul_5_grad/Mul_1,gradients/Mul_5_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Mul_5_grad/Reshape_1Reshapegradients/Mul_5_grad/Sum_1gradients/Mul_5_grad/Shape_1*
T0*
Tshape0
m
%gradients/Mul_5_grad/tuple/group_depsNoOp^gradients/Mul_5_grad/Reshape^gradients/Mul_5_grad/Reshape_1
?
-gradients/Mul_5_grad/tuple/control_dependencyIdentitygradients/Mul_5_grad/Reshape&^gradients/Mul_5_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_5_grad/Reshape
?
/gradients/Mul_5_grad/tuple/control_dependency_1Identitygradients/Mul_5_grad/Reshape_1&^gradients/Mul_5_grad/tuple/group_deps*1
_class'
%#loc:@gradients/Mul_5_grad/Reshape_1*
T0
C
gradients/Add_4_grad/ShapeShapeMul_4*
out_type0*
T0
E
gradients/Add_4_grad/Shape_1ShapeAdd_3*
T0*
out_type0
?
*gradients/Add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_4_grad/Shapegradients/Add_4_grad/Shape_1*
T0
?
gradients/Add_4_grad/SumSum/gradients/Add_5_grad/tuple/control_dependency_1*gradients/Add_4_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_4_grad/ReshapeReshapegradients/Add_4_grad/Sumgradients/Add_4_grad/Shape*
T0*
Tshape0
?
gradients/Add_4_grad/Sum_1Sum/gradients/Add_5_grad/tuple/control_dependency_1,gradients/Add_4_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Add_4_grad/Reshape_1Reshapegradients/Add_4_grad/Sum_1gradients/Add_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_4_grad/tuple/group_depsNoOp^gradients/Add_4_grad/Reshape^gradients/Add_4_grad/Reshape_1
?
-gradients/Add_4_grad/tuple/control_dependencyIdentitygradients/Add_4_grad/Reshape&^gradients/Add_4_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Add_4_grad/Reshape*
T0
?
/gradients/Add_4_grad/tuple/control_dependency_1Identitygradients/Add_4_grad/Reshape_1&^gradients/Add_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_4_grad/Reshape_1
P
gradients/Mul_4_grad/ShapeShapeserialnumber_input*
T0*
out_type0
R
gradients/Mul_4_grad/Shape_1ShapePserialnumber/read*
T0*
out_type0
?
*gradients/Mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_4_grad/Shapegradients/Mul_4_grad/Shape_1*
T0
k
gradients/Mul_4_grad/MulMul-gradients/Add_4_grad/tuple/control_dependencyPserialnumber/read*
T0
?
gradients/Mul_4_grad/SumSumgradients/Mul_4_grad/Mul*gradients/Mul_4_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Mul_4_grad/ReshapeReshapegradients/Mul_4_grad/Sumgradients/Mul_4_grad/Shape*
T0*
Tshape0
m
gradients/Mul_4_grad/Mul_1Mulserialnumber_input-gradients/Add_4_grad/tuple/control_dependency*
T0
?
gradients/Mul_4_grad/Sum_1Sumgradients/Mul_4_grad/Mul_1,gradients/Mul_4_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Mul_4_grad/Reshape_1Reshapegradients/Mul_4_grad/Sum_1gradients/Mul_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/Mul_4_grad/tuple/group_depsNoOp^gradients/Mul_4_grad/Reshape^gradients/Mul_4_grad/Reshape_1
?
-gradients/Mul_4_grad/tuple/control_dependencyIdentitygradients/Mul_4_grad/Reshape&^gradients/Mul_4_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Mul_4_grad/Reshape*
T0
?
/gradients/Mul_4_grad/tuple/control_dependency_1Identitygradients/Mul_4_grad/Reshape_1&^gradients/Mul_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_4_grad/Reshape_1
C
gradients/Add_3_grad/ShapeShapeMul_3*
out_type0*
T0
E
gradients/Add_3_grad/Shape_1ShapeAdd_2*
T0*
out_type0
?
*gradients/Add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_3_grad/Shapegradients/Add_3_grad/Shape_1*
T0
?
gradients/Add_3_grad/SumSum/gradients/Add_4_grad/tuple/control_dependency_1*gradients/Add_3_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_3_grad/ReshapeReshapegradients/Add_3_grad/Sumgradients/Add_3_grad/Shape*
T0*
Tshape0
?
gradients/Add_3_grad/Sum_1Sum/gradients/Add_4_grad/tuple/control_dependency_1,gradients/Add_3_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Add_3_grad/Reshape_1Reshapegradients/Add_3_grad/Sum_1gradients/Add_3_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_3_grad/tuple/group_depsNoOp^gradients/Add_3_grad/Reshape^gradients/Add_3_grad/Reshape_1
?
-gradients/Add_3_grad/tuple/control_dependencyIdentitygradients/Add_3_grad/Reshape&^gradients/Add_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_3_grad/Reshape
?
/gradients/Add_3_grad/tuple/control_dependency_1Identitygradients/Add_3_grad/Reshape_1&^gradients/Add_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_3_grad/Reshape_1
J
gradients/Mul_3_grad/ShapeShapedevice_input*
T0*
out_type0
L
gradients/Mul_3_grad/Shape_1ShapePdevice/read*
T0*
out_type0
?
*gradients/Mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_3_grad/Shapegradients/Mul_3_grad/Shape_1*
T0
e
gradients/Mul_3_grad/MulMul-gradients/Add_3_grad/tuple/control_dependencyPdevice/read*
T0
?
gradients/Mul_3_grad/SumSumgradients/Mul_3_grad/Mul*gradients/Mul_3_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/Mul_3_grad/ReshapeReshapegradients/Mul_3_grad/Sumgradients/Mul_3_grad/Shape*
Tshape0*
T0
g
gradients/Mul_3_grad/Mul_1Muldevice_input-gradients/Add_3_grad/tuple/control_dependency*
T0
?
gradients/Mul_3_grad/Sum_1Sumgradients/Mul_3_grad/Mul_1,gradients/Mul_3_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Mul_3_grad/Reshape_1Reshapegradients/Mul_3_grad/Sum_1gradients/Mul_3_grad/Shape_1*
T0*
Tshape0
m
%gradients/Mul_3_grad/tuple/group_depsNoOp^gradients/Mul_3_grad/Reshape^gradients/Mul_3_grad/Reshape_1
?
-gradients/Mul_3_grad/tuple/control_dependencyIdentitygradients/Mul_3_grad/Reshape&^gradients/Mul_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_3_grad/Reshape
?
/gradients/Mul_3_grad/tuple/control_dependency_1Identitygradients/Mul_3_grad/Reshape_1&^gradients/Mul_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_3_grad/Reshape_1
C
gradients/Add_2_grad/ShapeShapeMul_2*
T0*
out_type0
E
gradients/Add_2_grad/Shape_1ShapeAdd_1*
T0*
out_type0
?
*gradients/Add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_2_grad/Shapegradients/Add_2_grad/Shape_1*
T0
?
gradients/Add_2_grad/SumSum/gradients/Add_3_grad/tuple/control_dependency_1*gradients/Add_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/Add_2_grad/ReshapeReshapegradients/Add_2_grad/Sumgradients/Add_2_grad/Shape*
T0*
Tshape0
?
gradients/Add_2_grad/Sum_1Sum/gradients/Add_3_grad/tuple/control_dependency_1,gradients/Add_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Add_2_grad/Reshape_1Reshapegradients/Add_2_grad/Sum_1gradients/Add_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_2_grad/tuple/group_depsNoOp^gradients/Add_2_grad/Reshape^gradients/Add_2_grad/Reshape_1
?
-gradients/Add_2_grad/tuple/control_dependencyIdentitygradients/Add_2_grad/Reshape&^gradients/Add_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_2_grad/Reshape
?
/gradients/Add_2_grad/tuple/control_dependency_1Identitygradients/Add_2_grad/Reshape_1&^gradients/Add_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_2_grad/Reshape_1
H
gradients/Mul_2_grad/ShapeShape
imei_input*
T0*
out_type0
J
gradients/Mul_2_grad/Shape_1Shape
Pimei/read*
out_type0*
T0
?
*gradients/Mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_2_grad/Shapegradients/Mul_2_grad/Shape_1*
T0
c
gradients/Mul_2_grad/MulMul-gradients/Add_2_grad/tuple/control_dependency
Pimei/read*
T0
?
gradients/Mul_2_grad/SumSumgradients/Mul_2_grad/Mul*gradients/Mul_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/Mul_2_grad/ReshapeReshapegradients/Mul_2_grad/Sumgradients/Mul_2_grad/Shape*
T0*
Tshape0
e
gradients/Mul_2_grad/Mul_1Mul
imei_input-gradients/Add_2_grad/tuple/control_dependency*
T0
?
gradients/Mul_2_grad/Sum_1Sumgradients/Mul_2_grad/Mul_1,gradients/Mul_2_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/Mul_2_grad/Reshape_1Reshapegradients/Mul_2_grad/Sum_1gradients/Mul_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/Mul_2_grad/tuple/group_depsNoOp^gradients/Mul_2_grad/Reshape^gradients/Mul_2_grad/Reshape_1
?
-gradients/Mul_2_grad/tuple/control_dependencyIdentitygradients/Mul_2_grad/Reshape&^gradients/Mul_2_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Mul_2_grad/Reshape*
T0
?
/gradients/Mul_2_grad/tuple/control_dependency_1Identitygradients/Mul_2_grad/Reshape_1&^gradients/Mul_2_grad/tuple/group_deps*1
_class'
%#loc:@gradients/Mul_2_grad/Reshape_1*
T0
C
gradients/Add_1_grad/ShapeShapeMul_1*
out_type0*
T0
C
gradients/Add_1_grad/Shape_1ShapeAdd*
T0*
out_type0
?
*gradients/Add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_1_grad/Shapegradients/Add_1_grad/Shape_1*
T0
?
gradients/Add_1_grad/SumSum/gradients/Add_2_grad/tuple/control_dependency_1*gradients/Add_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_1_grad/ReshapeReshapegradients/Add_1_grad/Sumgradients/Add_1_grad/Shape*
T0*
Tshape0
?
gradients/Add_1_grad/Sum_1Sum/gradients/Add_2_grad/tuple/control_dependency_1,gradients/Add_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Add_1_grad/Reshape_1Reshapegradients/Add_1_grad/Sum_1gradients/Add_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_1_grad/tuple/group_depsNoOp^gradients/Add_1_grad/Reshape^gradients/Add_1_grad/Reshape_1
?
-gradients/Add_1_grad/tuple/control_dependencyIdentitygradients/Add_1_grad/Reshape&^gradients/Add_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_1_grad/Reshape
?
/gradients/Add_1_grad/tuple/control_dependency_1Identitygradients/Add_1_grad/Reshape_1&^gradients/Add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_1_grad/Reshape_1
I
gradients/Mul_1_grad/ShapeShapeemail_input*
T0*
out_type0
K
gradients/Mul_1_grad/Shape_1ShapePemail/read*
T0*
out_type0
?
*gradients/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_1_grad/Shapegradients/Mul_1_grad/Shape_1*
T0
d
gradients/Mul_1_grad/MulMul-gradients/Add_1_grad/tuple/control_dependencyPemail/read*
T0
?
gradients/Mul_1_grad/SumSumgradients/Mul_1_grad/Mul*gradients/Mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Mul_1_grad/ReshapeReshapegradients/Mul_1_grad/Sumgradients/Mul_1_grad/Shape*
T0*
Tshape0
f
gradients/Mul_1_grad/Mul_1Mulemail_input-gradients/Add_1_grad/tuple/control_dependency*
T0
?
gradients/Mul_1_grad/Sum_1Sumgradients/Mul_1_grad/Mul_1,gradients/Mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Mul_1_grad/Reshape_1Reshapegradients/Mul_1_grad/Sum_1gradients/Mul_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/Mul_1_grad/tuple/group_depsNoOp^gradients/Mul_1_grad/Reshape^gradients/Mul_1_grad/Reshape_1
?
-gradients/Mul_1_grad/tuple/control_dependencyIdentitygradients/Mul_1_grad/Reshape&^gradients/Mul_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_1_grad/Reshape
?
/gradients/Mul_1_grad/tuple/control_dependency_1Identitygradients/Mul_1_grad/Reshape_1&^gradients/Mul_1_grad/tuple/group_deps*1
_class'
%#loc:@gradients/Mul_1_grad/Reshape_1*
T0
?
gradients/Add_grad/ShapeShapeMul*
T0*
out_type0
C
gradients/Add_grad/Shape_1ShapeAdd/y*
T0*
out_type0
?
(gradients/Add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_grad/Shapegradients/Add_grad/Shape_1*
T0
?
gradients/Add_grad/SumSum/gradients/Add_1_grad/tuple/control_dependency_1(gradients/Add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
n
gradients/Add_grad/ReshapeReshapegradients/Add_grad/Sumgradients/Add_grad/Shape*
T0*
Tshape0
?
gradients/Add_grad/Sum_1Sum/gradients/Add_1_grad/tuple/control_dependency_1*gradients/Add_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
t
gradients/Add_grad/Reshape_1Reshapegradients/Add_grad/Sum_1gradients/Add_grad/Shape_1*
T0*
Tshape0
g
#gradients/Add_grad/tuple/group_depsNoOp^gradients/Add_grad/Reshape^gradients/Add_grad/Reshape_1
?
+gradients/Add_grad/tuple/control_dependencyIdentitygradients/Add_grad/Reshape$^gradients/Add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Add_grad/Reshape
?
-gradients/Add_grad/tuple/control_dependency_1Identitygradients/Add_grad/Reshape_1$^gradients/Add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_grad/Reshape_1
J
gradients/Mul_grad/ShapeShapelocation_input*
out_type0*
T0
L
gradients/Mul_grad/Shape_1ShapePlocation/read*
T0*
out_type0
?
(gradients/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_grad/Shapegradients/Mul_grad/Shape_1*
T0
c
gradients/Mul_grad/MulMul+gradients/Add_grad/tuple/control_dependencyPlocation/read*
T0
?
gradients/Mul_grad/SumSumgradients/Mul_grad/Mul(gradients/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
n
gradients/Mul_grad/ReshapeReshapegradients/Mul_grad/Sumgradients/Mul_grad/Shape*
T0*
Tshape0
e
gradients/Mul_grad/Mul_1Mullocation_input+gradients/Add_grad/tuple/control_dependency*
T0
?
gradients/Mul_grad/Sum_1Sumgradients/Mul_grad/Mul_1*gradients/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
t
gradients/Mul_grad/Reshape_1Reshapegradients/Mul_grad/Sum_1gradients/Mul_grad/Shape_1*
T0*
Tshape0
g
#gradients/Mul_grad/tuple/group_depsNoOp^gradients/Mul_grad/Reshape^gradients/Mul_grad/Reshape_1
?
+gradients/Mul_grad/tuple/control_dependencyIdentitygradients/Mul_grad/Reshape$^gradients/Mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Mul_grad/Reshape
?
-gradients/Mul_grad/tuple/control_dependency_1Identitygradients/Mul_grad/Reshape_1$^gradients/Mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_grad/Reshape_1
@
train/learning_rateConst*
valueB
 *
?#<*
dtype0
?
+train/update_Plocation/ApplyGradientDescentApplyGradientDescent	Plocationtrain/learning_rate-gradients/Mul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Plocation
?
(train/update_Pemail/ApplyGradientDescentApplyGradientDescentPemailtrain/learning_rate/gradients/Mul_1_grad/tuple/control_dependency_1*
_class
loc:@Pemail*
use_locking( *
T0
?
'train/update_Pimei/ApplyGradientDescentApplyGradientDescentPimeitrain/learning_rate/gradients/Mul_2_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class

loc:@Pimei
?
)train/update_Pdevice/ApplyGradientDescentApplyGradientDescentPdevicetrain/learning_rate/gradients/Mul_3_grad/tuple/control_dependency_1*
_class
loc:@Pdevice*
use_locking( *
T0
?
/train/update_Pserialnumber/ApplyGradientDescentApplyGradientDescentPserialnumbertrain/learning_rate/gradients/Mul_4_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@Pserialnumber
?
-train/update_Pmacaddress/ApplyGradientDescentApplyGradientDescentPmacaddresstrain/learning_rate/gradients/Mul_5_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Pmacaddress
?
-train/update_Padvertiser/ApplyGradientDescentApplyGradientDescentPadvertisertrain/learning_rate/gradients/Mul_6_grad/tuple/control_dependency_1*
_class
loc:@Padvertiser*
use_locking( *
T0
?
trainNoOp.^train/update_Padvertiser/ApplyGradientDescent*^train/update_Pdevice/ApplyGradientDescent)^train/update_Pemail/ApplyGradientDescent(^train/update_Pimei/ApplyGradientDescent,^train/update_Plocation/ApplyGradientDescent.^train/update_Pmacaddress/ApplyGradientDescent0^train/update_Pserialnumber/ApplyGradientDescent
?
initNoOp^Padvertiser/Assign^Pdevice/Assign^Pemail/Assign^Pimei/Assign^Plocation/Assign^Pmacaddress/Assign^Pserialnumber/Assign
A
save/filename/inputConst*
valueB Bmodel*
dtype0
V
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
shape: 
M

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0
?
save/SaveV2/tensor_namesConst*_
valueVBTBPadvertiserBPdeviceBPemailBPimeiB	PlocationBPmacaddressBPserialnumber*
dtype0
U
save/SaveV2/shape_and_slicesConst*!
valueBB B B B B B B *
dtype0
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesPadvertiserPdevicePemailPimei	PlocationPmacaddressPserialnumber*
dtypes
	2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*_
valueVBTBPadvertiserBPdeviceBPemailBPimeiB	PlocationBPmacaddressBPserialnumber*
dtype0
g
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*!
valueBB B B B B B B *
dtype0
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
	2
?
save/AssignAssignPadvertisersave/RestoreV2*
use_locking(*
T0*
_class
loc:@Padvertiser*
validate_shape(
?
save/Assign_1AssignPdevicesave/RestoreV2:1*
T0*
_class
loc:@Pdevice*
validate_shape(*
use_locking(
~
save/Assign_2AssignPemailsave/RestoreV2:2*
T0*
_class
loc:@Pemail*
validate_shape(*
use_locking(
|
save/Assign_3AssignPimeisave/RestoreV2:3*
use_locking(*
T0*
_class

loc:@Pimei*
validate_shape(
?
save/Assign_4Assign	Plocationsave/RestoreV2:4*
use_locking(*
T0*
_class
loc:@Plocation*
validate_shape(
?
save/Assign_5AssignPmacaddresssave/RestoreV2:5*
validate_shape(*
use_locking(*
T0*
_class
loc:@Pmacaddress
?
save/Assign_6AssignPserialnumbersave/RestoreV2:6*
use_locking(*
T0* 
_class
loc:@Pserialnumber*
validate_shape(
?
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6"?