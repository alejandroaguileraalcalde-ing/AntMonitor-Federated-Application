
9
location_inputPlaceholder*
shape:*
dtype0
6
email_inputPlaceholder*
dtype0*
shape:
5

imei_inputPlaceholder*
dtype0*
shape:
7
device_inputPlaceholder*
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
dtype0*
	container *
shape: *
shared_name 
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
VariableV2*
shared_name *
dtype0*
	container *
shape: 
~
Pimei/AssignAssignPimeiPimei/initial_value*
use_locking(*
T0*
_class

loc:@Pimei*
validate_shape(
@

Pimei/readIdentityPimei*
_class

loc:@Pimei*
T0
B
Pdevice/initial_valueConst*
valueB
 *   @*
dtype0
S
Pdevice
VariableV2*
shared_name *
dtype0*
	container *
shape: 
?
Pdevice/AssignAssignPdevicePdevice/initial_value*
use_locking(*
T0*
_class
loc:@Pdevice*
validate_shape(
F
Pdevice/readIdentityPdevice*
T0*
_class
loc:@Pdevice
1
umbralPlaceholder*
dtype0*
shape:
/
MulMuldevice_inputPdevice/read*
T0
-
Mul_1Mul
imei_input
Pimei/read*
T0
/
Mul_2Mulemail_inputPemail/read*
T0
5
Mul_3Mullocation_inputPlocation/read*
T0
2
Add/yConst*
valueB
 *    *
dtype0
!
AddAddMul_3Add/y*
T0
!
Add_1AddMul_2Add*
T0
#
Add_2AddMul_1Add_1*
T0
!
Add_3AddMulAdd_2*
T0
*
truedivRealDivAdd_3umbral*
T0
1
Mul_4Muldevice_inputPdevice/read*
T0
-
Mul_5Mul
imei_input
Pimei/read*
T0
/
Mul_6Mulemail_inputPemail/read*
T0
5
Mul_7Mullocation_inputPlocation/read*
T0
4
Add_4/yConst*
dtype0*
valueB
 *    
%
Add_4AddMul_7Add_4/y*
T0
#
Add_5AddMul_6Add_4*
T0
#
Add_6AddMul_5Add_5*
T0
#
Add_7AddMul_4Add_6*
T0
,
	truediv_1RealDivAdd_7umbral*
T0
2
mod/yConst*
valueB
 *  ??*
dtype0
*
modFloorMod	truediv_1mod/y*
T0
4
Mul_8/yConst*
valueB
 *  ??*
dtype0
#
Mul_8MulmodMul_8/y*
T0
%
Add_8AddtruedivMul_8*
T0
1
Mul_9Muldevice_inputPdevice/read*
T0
.
Mul_10Mul
imei_input
Pimei/read*
T0
0
Mul_11Mulemail_inputPemail/read*
T0
6
Mul_12Mullocation_inputPlocation/read*
T0
4
Add_9/yConst*
valueB
 *    *
dtype0
&
Add_9AddMul_12Add_9/y*
T0
%
Add_10AddMul_11Add_9*
T0
&
Add_11AddMul_10Add_10*
T0
%
Add_12AddMul_9Add_11*
T0
-
	truediv_2RealDivAdd_12umbral*
T0
2
Mul_13Muldevice_inputPdevice/read*
T0
.
Mul_14Mul
imei_input
Pimei/read*
T0
0
Mul_15Mulemail_inputPemail/read*
T0
6
Mul_16Mullocation_inputPlocation/read*
T0
5
Add_13/yConst*
valueB
 *    *
dtype0
(
Add_13AddMul_16Add_13/y*
T0
&
Add_14AddMul_15Add_13*
T0
&
Add_15AddMul_14Add_14*
T0
&
Add_16AddMul_13Add_15*
T0
-
	truediv_3RealDivAdd_16umbral*
T0
4
mod_1/yConst*
valueB
 *  ??*
dtype0
.
mod_1FloorMod	truediv_3mod_1/y*
T0
5
Mul_17/yConst*
valueB
 *  ??*
dtype0
'
Mul_17Mulmod_1Mul_17/y*
T0
)
Add_17Add	truediv_2Mul_17*
T0
.

div_no_nanDivNoNanAdd_8Add_17*
T0
'
outputIdentity
div_no_nan*
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
MeanMeanSquarerange*

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
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/floordiv*

Tmultiples0*
T0
E
gradients/Mean_grad/Shape_2ShapeSquare*
T0*
out_type0
D
gradients/Mean_grad/Shape_3Const*
dtype0*
valueB 
G
gradients/Mean_grad/ConstConst*
valueB: *
dtype0
~
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_2gradients/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0
?
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_3gradients/Mean_grad/Const_1*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_grad/Maximum_1/yConst*
dtype0*
value	B :
n
gradients/Mean_grad/Maximum_1Maximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum_1/y*
T0
l
gradients/Mean_grad/floordiv_1FloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum_1*
T0
h
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv_1*

SrcT0*
Truncate( *

DstT0
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
gradients/sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
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
H
gradients/div_no_nan_grad/ShapeShapeAdd_8*
T0*
out_type0
K
!gradients/div_no_nan_grad/Shape_1ShapeAdd_17*
T0*
out_type0
?
/gradients/div_no_nan_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/div_no_nan_grad/Shape!gradients/div_no_nan_grad/Shape_1*
T0
n
$gradients/div_no_nan_grad/div_no_nanDivNoNan+gradients/sub_grad/tuple/control_dependencyAdd_17*
T0
?
gradients/div_no_nan_grad/SumSum$gradients/div_no_nan_grad/div_no_nan/gradients/div_no_nan_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
!gradients/div_no_nan_grad/ReshapeReshapegradients/div_no_nan_grad/Sumgradients/div_no_nan_grad/Shape*
T0*
Tshape0
4
gradients/div_no_nan_grad/NegNegAdd_8*
T0
b
&gradients/div_no_nan_grad/div_no_nan_1DivNoNangradients/div_no_nan_grad/NegAdd_17*
T0
k
&gradients/div_no_nan_grad/div_no_nan_2DivNoNan&gradients/div_no_nan_grad/div_no_nan_1Add_17*
T0
?
gradients/div_no_nan_grad/mulMul+gradients/sub_grad/tuple/control_dependency&gradients/div_no_nan_grad/div_no_nan_2*
T0
?
gradients/div_no_nan_grad/Sum_1Sumgradients/div_no_nan_grad/mul1gradients/div_no_nan_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
#gradients/div_no_nan_grad/Reshape_1Reshapegradients/div_no_nan_grad/Sum_1!gradients/div_no_nan_grad/Shape_1*
T0*
Tshape0
|
*gradients/div_no_nan_grad/tuple/group_depsNoOp"^gradients/div_no_nan_grad/Reshape$^gradients/div_no_nan_grad/Reshape_1
?
2gradients/div_no_nan_grad/tuple/control_dependencyIdentity!gradients/div_no_nan_grad/Reshape+^gradients/div_no_nan_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/div_no_nan_grad/Reshape
?
4gradients/div_no_nan_grad/tuple/control_dependency_1Identity#gradients/div_no_nan_grad/Reshape_1+^gradients/div_no_nan_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/div_no_nan_grad/Reshape_1
E
gradients/Add_8_grad/ShapeShapetruediv*
T0*
out_type0
E
gradients/Add_8_grad/Shape_1ShapeMul_8*
out_type0*
T0
?
*gradients/Add_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_8_grad/Shapegradients/Add_8_grad/Shape_1*
T0
?
gradients/Add_8_grad/SumSum2gradients/div_no_nan_grad/tuple/control_dependency*gradients/Add_8_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_8_grad/ReshapeReshapegradients/Add_8_grad/Sumgradients/Add_8_grad/Shape*
T0*
Tshape0
?
gradients/Add_8_grad/Sum_1Sum2gradients/div_no_nan_grad/tuple/control_dependency,gradients/Add_8_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Add_8_grad/Reshape_1Reshapegradients/Add_8_grad/Sum_1gradients/Add_8_grad/Shape_1*
Tshape0*
T0
m
%gradients/Add_8_grad/tuple/group_depsNoOp^gradients/Add_8_grad/Reshape^gradients/Add_8_grad/Reshape_1
?
-gradients/Add_8_grad/tuple/control_dependencyIdentitygradients/Add_8_grad/Reshape&^gradients/Add_8_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_8_grad/Reshape
?
/gradients/Add_8_grad/tuple/control_dependency_1Identitygradients/Add_8_grad/Reshape_1&^gradients/Add_8_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_8_grad/Reshape_1
H
gradients/Add_17_grad/ShapeShape	truediv_2*
T0*
out_type0
G
gradients/Add_17_grad/Shape_1ShapeMul_17*
out_type0*
T0
?
+gradients/Add_17_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_17_grad/Shapegradients/Add_17_grad/Shape_1*
T0
?
gradients/Add_17_grad/SumSum4gradients/div_no_nan_grad/tuple/control_dependency_1+gradients/Add_17_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/Add_17_grad/ReshapeReshapegradients/Add_17_grad/Sumgradients/Add_17_grad/Shape*
T0*
Tshape0
?
gradients/Add_17_grad/Sum_1Sum4gradients/div_no_nan_grad/tuple/control_dependency_1-gradients/Add_17_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
}
gradients/Add_17_grad/Reshape_1Reshapegradients/Add_17_grad/Sum_1gradients/Add_17_grad/Shape_1*
T0*
Tshape0
p
&gradients/Add_17_grad/tuple/group_depsNoOp^gradients/Add_17_grad/Reshape ^gradients/Add_17_grad/Reshape_1
?
.gradients/Add_17_grad/tuple/control_dependencyIdentitygradients/Add_17_grad/Reshape'^gradients/Add_17_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Add_17_grad/Reshape
?
0gradients/Add_17_grad/tuple/control_dependency_1Identitygradients/Add_17_grad/Reshape_1'^gradients/Add_17_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Add_17_grad/Reshape_1
E
gradients/truediv_grad/ShapeShapeAdd_3*
out_type0*
T0
H
gradients/truediv_grad/Shape_1Shapeumbral*
T0*
out_type0
?
,gradients/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_grad/Shapegradients/truediv_grad/Shape_1*
T0
i
gradients/truediv_grad/RealDivRealDiv-gradients/Add_8_grad/tuple/control_dependencyumbral*
T0
?
gradients/truediv_grad/SumSumgradients/truediv_grad/RealDiv,gradients/truediv_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients/truediv_grad/ReshapeReshapegradients/truediv_grad/Sumgradients/truediv_grad/Shape*
T0*
Tshape0
1
gradients/truediv_grad/NegNegAdd_3*
T0
X
 gradients/truediv_grad/RealDiv_1RealDivgradients/truediv_grad/Negumbral*
T0
^
 gradients/truediv_grad/RealDiv_2RealDiv gradients/truediv_grad/RealDiv_1umbral*
T0
{
gradients/truediv_grad/mulMul-gradients/Add_8_grad/tuple/control_dependency gradients/truediv_grad/RealDiv_2*
T0
?
gradients/truediv_grad/Sum_1Sumgradients/truediv_grad/mul.gradients/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
?
 gradients/truediv_grad/Reshape_1Reshapegradients/truediv_grad/Sum_1gradients/truediv_grad/Shape_1*
T0*
Tshape0
s
'gradients/truediv_grad/tuple/group_depsNoOp^gradients/truediv_grad/Reshape!^gradients/truediv_grad/Reshape_1
?
/gradients/truediv_grad/tuple/control_dependencyIdentitygradients/truediv_grad/Reshape(^gradients/truediv_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/truediv_grad/Reshape
?
1gradients/truediv_grad/tuple/control_dependency_1Identity gradients/truediv_grad/Reshape_1(^gradients/truediv_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_grad/Reshape_1
A
gradients/Mul_8_grad/ShapeShapemod*
T0*
out_type0
G
gradients/Mul_8_grad/Shape_1ShapeMul_8/y*
out_type0*
T0
?
*gradients/Mul_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_8_grad/Shapegradients/Mul_8_grad/Shape_1*
T0
b
gradients/Mul_8_grad/MulMul/gradients/Add_8_grad/tuple/control_dependency_1Mul_8/y*
T0
?
gradients/Mul_8_grad/SumSumgradients/Mul_8_grad/Mul*gradients/Mul_8_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/Mul_8_grad/ReshapeReshapegradients/Mul_8_grad/Sumgradients/Mul_8_grad/Shape*
T0*
Tshape0
`
gradients/Mul_8_grad/Mul_1Mulmod/gradients/Add_8_grad/tuple/control_dependency_1*
T0
?
gradients/Mul_8_grad/Sum_1Sumgradients/Mul_8_grad/Mul_1,gradients/Mul_8_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/Mul_8_grad/Reshape_1Reshapegradients/Mul_8_grad/Sum_1gradients/Mul_8_grad/Shape_1*
T0*
Tshape0
m
%gradients/Mul_8_grad/tuple/group_depsNoOp^gradients/Mul_8_grad/Reshape^gradients/Mul_8_grad/Reshape_1
?
-gradients/Mul_8_grad/tuple/control_dependencyIdentitygradients/Mul_8_grad/Reshape&^gradients/Mul_8_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_8_grad/Reshape
?
/gradients/Mul_8_grad/tuple/control_dependency_1Identitygradients/Mul_8_grad/Reshape_1&^gradients/Mul_8_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_8_grad/Reshape_1
H
gradients/truediv_2_grad/ShapeShapeAdd_12*
T0*
out_type0
J
 gradients/truediv_2_grad/Shape_1Shapeumbral*
T0*
out_type0
?
.gradients/truediv_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_2_grad/Shape gradients/truediv_2_grad/Shape_1*
T0
l
 gradients/truediv_2_grad/RealDivRealDiv.gradients/Add_17_grad/tuple/control_dependencyumbral*
T0
?
gradients/truediv_2_grad/SumSum gradients/truediv_2_grad/RealDiv.gradients/truediv_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
?
 gradients/truediv_2_grad/ReshapeReshapegradients/truediv_2_grad/Sumgradients/truediv_2_grad/Shape*
T0*
Tshape0
4
gradients/truediv_2_grad/NegNegAdd_12*
T0
\
"gradients/truediv_2_grad/RealDiv_1RealDivgradients/truediv_2_grad/Negumbral*
T0
b
"gradients/truediv_2_grad/RealDiv_2RealDiv"gradients/truediv_2_grad/RealDiv_1umbral*
T0
?
gradients/truediv_2_grad/mulMul.gradients/Add_17_grad/tuple/control_dependency"gradients/truediv_2_grad/RealDiv_2*
T0
?
gradients/truediv_2_grad/Sum_1Sumgradients/truediv_2_grad/mul0gradients/truediv_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
?
"gradients/truediv_2_grad/Reshape_1Reshapegradients/truediv_2_grad/Sum_1 gradients/truediv_2_grad/Shape_1*
T0*
Tshape0
y
)gradients/truediv_2_grad/tuple/group_depsNoOp!^gradients/truediv_2_grad/Reshape#^gradients/truediv_2_grad/Reshape_1
?
1gradients/truediv_2_grad/tuple/control_dependencyIdentity gradients/truediv_2_grad/Reshape*^gradients/truediv_2_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_2_grad/Reshape
?
3gradients/truediv_2_grad/tuple/control_dependency_1Identity"gradients/truediv_2_grad/Reshape_1*^gradients/truediv_2_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/truediv_2_grad/Reshape_1
D
gradients/Mul_17_grad/ShapeShapemod_1*
T0*
out_type0
I
gradients/Mul_17_grad/Shape_1ShapeMul_17/y*
out_type0*
T0
?
+gradients/Mul_17_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_17_grad/Shapegradients/Mul_17_grad/Shape_1*
T0
e
gradients/Mul_17_grad/MulMul0gradients/Add_17_grad/tuple/control_dependency_1Mul_17/y*
T0
?
gradients/Mul_17_grad/SumSumgradients/Mul_17_grad/Mul+gradients/Mul_17_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
w
gradients/Mul_17_grad/ReshapeReshapegradients/Mul_17_grad/Sumgradients/Mul_17_grad/Shape*
T0*
Tshape0
d
gradients/Mul_17_grad/Mul_1Mulmod_10gradients/Add_17_grad/tuple/control_dependency_1*
T0
?
gradients/Mul_17_grad/Sum_1Sumgradients/Mul_17_grad/Mul_1-gradients/Mul_17_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
}
gradients/Mul_17_grad/Reshape_1Reshapegradients/Mul_17_grad/Sum_1gradients/Mul_17_grad/Shape_1*
T0*
Tshape0
p
&gradients/Mul_17_grad/tuple/group_depsNoOp^gradients/Mul_17_grad/Reshape ^gradients/Mul_17_grad/Reshape_1
?
.gradients/Mul_17_grad/tuple/control_dependencyIdentitygradients/Mul_17_grad/Reshape'^gradients/Mul_17_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Mul_17_grad/Reshape
?
0gradients/Mul_17_grad/tuple/control_dependency_1Identitygradients/Mul_17_grad/Reshape_1'^gradients/Mul_17_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Mul_17_grad/Reshape_1
A
gradients/Add_3_grad/ShapeShapeMul*
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
gradients/Add_3_grad/SumSum/gradients/truediv_grad/tuple/control_dependency*gradients/Add_3_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_3_grad/ReshapeReshapegradients/Add_3_grad/Sumgradients/Add_3_grad/Shape*
Tshape0*
T0
?
gradients/Add_3_grad/Sum_1Sum/gradients/truediv_grad/tuple/control_dependency,gradients/Add_3_grad/BroadcastGradientArgs:1*

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
E
gradients/mod_grad/ShapeShape	truediv_1*
T0*
out_type0
C
gradients/mod_grad/Shape_1Const*
valueB *
dtype0
?
(gradients/mod_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mod_grad/Shapegradients/mod_grad/Shape_1*
T0
B
gradients/mod_grad/FloorDivFloorDiv	truediv_1mod/y*
T0
?
gradients/mod_grad/SumSum-gradients/Mul_8_grad/tuple/control_dependency(gradients/mod_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
n
gradients/mod_grad/ReshapeReshapegradients/mod_grad/Sumgradients/mod_grad/Shape*
T0*
Tshape0
C
gradients/mod_grad/NegNeggradients/mod_grad/FloorDiv*
T0
m
gradients/mod_grad/mulMul-gradients/Mul_8_grad/tuple/control_dependencygradients/mod_grad/Neg*
T0
?
gradients/mod_grad/Sum_1Sumgradients/mod_grad/mul*gradients/mod_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
t
gradients/mod_grad/Reshape_1Reshapegradients/mod_grad/Sum_1gradients/mod_grad/Shape_1*
T0*
Tshape0
g
#gradients/mod_grad/tuple/group_depsNoOp^gradients/mod_grad/Reshape^gradients/mod_grad/Reshape_1
?
+gradients/mod_grad/tuple/control_dependencyIdentitygradients/mod_grad/Reshape$^gradients/mod_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mod_grad/Reshape
?
-gradients/mod_grad/tuple/control_dependency_1Identitygradients/mod_grad/Reshape_1$^gradients/mod_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mod_grad/Reshape_1
D
gradients/Add_12_grad/ShapeShapeMul_9*
T0*
out_type0
G
gradients/Add_12_grad/Shape_1ShapeAdd_11*
T0*
out_type0
?
+gradients/Add_12_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_12_grad/Shapegradients/Add_12_grad/Shape_1*
T0
?
gradients/Add_12_grad/SumSum1gradients/truediv_2_grad/tuple/control_dependency+gradients/Add_12_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/Add_12_grad/ReshapeReshapegradients/Add_12_grad/Sumgradients/Add_12_grad/Shape*
T0*
Tshape0
?
gradients/Add_12_grad/Sum_1Sum1gradients/truediv_2_grad/tuple/control_dependency-gradients/Add_12_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
}
gradients/Add_12_grad/Reshape_1Reshapegradients/Add_12_grad/Sum_1gradients/Add_12_grad/Shape_1*
T0*
Tshape0
p
&gradients/Add_12_grad/tuple/group_depsNoOp^gradients/Add_12_grad/Reshape ^gradients/Add_12_grad/Reshape_1
?
.gradients/Add_12_grad/tuple/control_dependencyIdentitygradients/Add_12_grad/Reshape'^gradients/Add_12_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Add_12_grad/Reshape
?
0gradients/Add_12_grad/tuple/control_dependency_1Identitygradients/Add_12_grad/Reshape_1'^gradients/Add_12_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Add_12_grad/Reshape_1
G
gradients/mod_1_grad/ShapeShape	truediv_3*
T0*
out_type0
E
gradients/mod_1_grad/Shape_1Const*
valueB *
dtype0
?
*gradients/mod_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mod_1_grad/Shapegradients/mod_1_grad/Shape_1*
T0
F
gradients/mod_1_grad/FloorDivFloorDiv	truediv_3mod_1/y*
T0
?
gradients/mod_1_grad/SumSum.gradients/Mul_17_grad/tuple/control_dependency*gradients/mod_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/mod_1_grad/ReshapeReshapegradients/mod_1_grad/Sumgradients/mod_1_grad/Shape*
T0*
Tshape0
G
gradients/mod_1_grad/NegNeggradients/mod_1_grad/FloorDiv*
T0
r
gradients/mod_1_grad/mulMul.gradients/Mul_17_grad/tuple/control_dependencygradients/mod_1_grad/Neg*
T0
?
gradients/mod_1_grad/Sum_1Sumgradients/mod_1_grad/mul,gradients/mod_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/mod_1_grad/Reshape_1Reshapegradients/mod_1_grad/Sum_1gradients/mod_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/mod_1_grad/tuple/group_depsNoOp^gradients/mod_1_grad/Reshape^gradients/mod_1_grad/Reshape_1
?
-gradients/mod_1_grad/tuple/control_dependencyIdentitygradients/mod_1_grad/Reshape&^gradients/mod_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mod_1_grad/Reshape
?
/gradients/mod_1_grad/tuple/control_dependency_1Identitygradients/mod_1_grad/Reshape_1&^gradients/mod_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mod_1_grad/Reshape_1
H
gradients/Mul_grad/ShapeShapedevice_input*
T0*
out_type0
J
gradients/Mul_grad/Shape_1ShapePdevice/read*
T0*
out_type0
?
(gradients/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_grad/Shapegradients/Mul_grad/Shape_1*
T0
c
gradients/Mul_grad/MulMul-gradients/Add_3_grad/tuple/control_dependencyPdevice/read*
T0
?
gradients/Mul_grad/SumSumgradients/Mul_grad/Mul(gradients/Mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
n
gradients/Mul_grad/ReshapeReshapegradients/Mul_grad/Sumgradients/Mul_grad/Shape*
T0*
Tshape0
e
gradients/Mul_grad/Mul_1Muldevice_input-gradients/Add_3_grad/tuple/control_dependency*
T0
?
gradients/Mul_grad/Sum_1Sumgradients/Mul_grad/Mul_1*gradients/Mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
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
C
gradients/Add_2_grad/ShapeShapeMul_1*
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
gradients/Add_2_grad/SumSum/gradients/Add_3_grad/tuple/control_dependency_1*gradients/Add_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
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
G
gradients/truediv_1_grad/ShapeShapeAdd_7*
T0*
out_type0
J
 gradients/truediv_1_grad/Shape_1Shapeumbral*
T0*
out_type0
?
.gradients/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_1_grad/Shape gradients/truediv_1_grad/Shape_1*
T0
i
 gradients/truediv_1_grad/RealDivRealDiv+gradients/mod_grad/tuple/control_dependencyumbral*
T0
?
gradients/truediv_1_grad/SumSum gradients/truediv_1_grad/RealDiv.gradients/truediv_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
?
 gradients/truediv_1_grad/ReshapeReshapegradients/truediv_1_grad/Sumgradients/truediv_1_grad/Shape*
T0*
Tshape0
3
gradients/truediv_1_grad/NegNegAdd_7*
T0
\
"gradients/truediv_1_grad/RealDiv_1RealDivgradients/truediv_1_grad/Negumbral*
T0
b
"gradients/truediv_1_grad/RealDiv_2RealDiv"gradients/truediv_1_grad/RealDiv_1umbral*
T0
}
gradients/truediv_1_grad/mulMul+gradients/mod_grad/tuple/control_dependency"gradients/truediv_1_grad/RealDiv_2*
T0
?
gradients/truediv_1_grad/Sum_1Sumgradients/truediv_1_grad/mul0gradients/truediv_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
?
"gradients/truediv_1_grad/Reshape_1Reshapegradients/truediv_1_grad/Sum_1 gradients/truediv_1_grad/Shape_1*
T0*
Tshape0
y
)gradients/truediv_1_grad/tuple/group_depsNoOp!^gradients/truediv_1_grad/Reshape#^gradients/truediv_1_grad/Reshape_1
?
1gradients/truediv_1_grad/tuple/control_dependencyIdentity gradients/truediv_1_grad/Reshape*^gradients/truediv_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_1_grad/Reshape
?
3gradients/truediv_1_grad/tuple/control_dependency_1Identity"gradients/truediv_1_grad/Reshape_1*^gradients/truediv_1_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/truediv_1_grad/Reshape_1
J
gradients/Mul_9_grad/ShapeShapedevice_input*
T0*
out_type0
L
gradients/Mul_9_grad/Shape_1ShapePdevice/read*
out_type0*
T0
?
*gradients/Mul_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_9_grad/Shapegradients/Mul_9_grad/Shape_1*
T0
f
gradients/Mul_9_grad/MulMul.gradients/Add_12_grad/tuple/control_dependencyPdevice/read*
T0
?
gradients/Mul_9_grad/SumSumgradients/Mul_9_grad/Mul*gradients/Mul_9_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/Mul_9_grad/ReshapeReshapegradients/Mul_9_grad/Sumgradients/Mul_9_grad/Shape*
T0*
Tshape0
h
gradients/Mul_9_grad/Mul_1Muldevice_input.gradients/Add_12_grad/tuple/control_dependency*
T0
?
gradients/Mul_9_grad/Sum_1Sumgradients/Mul_9_grad/Mul_1,gradients/Mul_9_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Mul_9_grad/Reshape_1Reshapegradients/Mul_9_grad/Sum_1gradients/Mul_9_grad/Shape_1*
T0*
Tshape0
m
%gradients/Mul_9_grad/tuple/group_depsNoOp^gradients/Mul_9_grad/Reshape^gradients/Mul_9_grad/Reshape_1
?
-gradients/Mul_9_grad/tuple/control_dependencyIdentitygradients/Mul_9_grad/Reshape&^gradients/Mul_9_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_9_grad/Reshape
?
/gradients/Mul_9_grad/tuple/control_dependency_1Identitygradients/Mul_9_grad/Reshape_1&^gradients/Mul_9_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_9_grad/Reshape_1
E
gradients/Add_11_grad/ShapeShapeMul_10*
T0*
out_type0
G
gradients/Add_11_grad/Shape_1ShapeAdd_10*
T0*
out_type0
?
+gradients/Add_11_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_11_grad/Shapegradients/Add_11_grad/Shape_1*
T0
?
gradients/Add_11_grad/SumSum0gradients/Add_12_grad/tuple/control_dependency_1+gradients/Add_11_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/Add_11_grad/ReshapeReshapegradients/Add_11_grad/Sumgradients/Add_11_grad/Shape*
Tshape0*
T0
?
gradients/Add_11_grad/Sum_1Sum0gradients/Add_12_grad/tuple/control_dependency_1-gradients/Add_11_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
}
gradients/Add_11_grad/Reshape_1Reshapegradients/Add_11_grad/Sum_1gradients/Add_11_grad/Shape_1*
Tshape0*
T0
p
&gradients/Add_11_grad/tuple/group_depsNoOp^gradients/Add_11_grad/Reshape ^gradients/Add_11_grad/Reshape_1
?
.gradients/Add_11_grad/tuple/control_dependencyIdentitygradients/Add_11_grad/Reshape'^gradients/Add_11_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Add_11_grad/Reshape
?
0gradients/Add_11_grad/tuple/control_dependency_1Identitygradients/Add_11_grad/Reshape_1'^gradients/Add_11_grad/tuple/group_deps*2
_class(
&$loc:@gradients/Add_11_grad/Reshape_1*
T0
H
gradients/truediv_3_grad/ShapeShapeAdd_16*
T0*
out_type0
J
 gradients/truediv_3_grad/Shape_1Shapeumbral*
T0*
out_type0
?
.gradients/truediv_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_3_grad/Shape gradients/truediv_3_grad/Shape_1*
T0
k
 gradients/truediv_3_grad/RealDivRealDiv-gradients/mod_1_grad/tuple/control_dependencyumbral*
T0
?
gradients/truediv_3_grad/SumSum gradients/truediv_3_grad/RealDiv.gradients/truediv_3_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
 gradients/truediv_3_grad/ReshapeReshapegradients/truediv_3_grad/Sumgradients/truediv_3_grad/Shape*
Tshape0*
T0
4
gradients/truediv_3_grad/NegNegAdd_16*
T0
\
"gradients/truediv_3_grad/RealDiv_1RealDivgradients/truediv_3_grad/Negumbral*
T0
b
"gradients/truediv_3_grad/RealDiv_2RealDiv"gradients/truediv_3_grad/RealDiv_1umbral*
T0

gradients/truediv_3_grad/mulMul-gradients/mod_1_grad/tuple/control_dependency"gradients/truediv_3_grad/RealDiv_2*
T0
?
gradients/truediv_3_grad/Sum_1Sumgradients/truediv_3_grad/mul0gradients/truediv_3_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
?
"gradients/truediv_3_grad/Reshape_1Reshapegradients/truediv_3_grad/Sum_1 gradients/truediv_3_grad/Shape_1*
Tshape0*
T0
y
)gradients/truediv_3_grad/tuple/group_depsNoOp!^gradients/truediv_3_grad/Reshape#^gradients/truediv_3_grad/Reshape_1
?
1gradients/truediv_3_grad/tuple/control_dependencyIdentity gradients/truediv_3_grad/Reshape*^gradients/truediv_3_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_3_grad/Reshape
?
3gradients/truediv_3_grad/tuple/control_dependency_1Identity"gradients/truediv_3_grad/Reshape_1*^gradients/truediv_3_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/truediv_3_grad/Reshape_1
H
gradients/Mul_1_grad/ShapeShape
imei_input*
T0*
out_type0
J
gradients/Mul_1_grad/Shape_1Shape
Pimei/read*
T0*
out_type0
?
*gradients/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_1_grad/Shapegradients/Mul_1_grad/Shape_1*
T0
c
gradients/Mul_1_grad/MulMul-gradients/Add_2_grad/tuple/control_dependency
Pimei/read*
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
e
gradients/Mul_1_grad/Mul_1Mul
imei_input-gradients/Add_2_grad/tuple/control_dependency*
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
/gradients/Mul_1_grad/tuple/control_dependency_1Identitygradients/Mul_1_grad/Reshape_1&^gradients/Mul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_1_grad/Reshape_1
C
gradients/Add_1_grad/ShapeShapeMul_2*
T0*
out_type0
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
C
gradients/Add_7_grad/ShapeShapeMul_4*
out_type0*
T0
E
gradients/Add_7_grad/Shape_1ShapeAdd_6*
T0*
out_type0
?
*gradients/Add_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_7_grad/Shapegradients/Add_7_grad/Shape_1*
T0
?
gradients/Add_7_grad/SumSum1gradients/truediv_1_grad/tuple/control_dependency*gradients/Add_7_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_7_grad/ReshapeReshapegradients/Add_7_grad/Sumgradients/Add_7_grad/Shape*
T0*
Tshape0
?
gradients/Add_7_grad/Sum_1Sum1gradients/truediv_1_grad/tuple/control_dependency,gradients/Add_7_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Add_7_grad/Reshape_1Reshapegradients/Add_7_grad/Sum_1gradients/Add_7_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_7_grad/tuple/group_depsNoOp^gradients/Add_7_grad/Reshape^gradients/Add_7_grad/Reshape_1
?
-gradients/Add_7_grad/tuple/control_dependencyIdentitygradients/Add_7_grad/Reshape&^gradients/Add_7_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_7_grad/Reshape
?
/gradients/Add_7_grad/tuple/control_dependency_1Identitygradients/Add_7_grad/Reshape_1&^gradients/Add_7_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_7_grad/Reshape_1
I
gradients/Mul_10_grad/ShapeShape
imei_input*
T0*
out_type0
K
gradients/Mul_10_grad/Shape_1Shape
Pimei/read*
out_type0*
T0
?
+gradients/Mul_10_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_10_grad/Shapegradients/Mul_10_grad/Shape_1*
T0
e
gradients/Mul_10_grad/MulMul.gradients/Add_11_grad/tuple/control_dependency
Pimei/read*
T0
?
gradients/Mul_10_grad/SumSumgradients/Mul_10_grad/Mul+gradients/Mul_10_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
w
gradients/Mul_10_grad/ReshapeReshapegradients/Mul_10_grad/Sumgradients/Mul_10_grad/Shape*
T0*
Tshape0
g
gradients/Mul_10_grad/Mul_1Mul
imei_input.gradients/Add_11_grad/tuple/control_dependency*
T0
?
gradients/Mul_10_grad/Sum_1Sumgradients/Mul_10_grad/Mul_1-gradients/Mul_10_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
}
gradients/Mul_10_grad/Reshape_1Reshapegradients/Mul_10_grad/Sum_1gradients/Mul_10_grad/Shape_1*
Tshape0*
T0
p
&gradients/Mul_10_grad/tuple/group_depsNoOp^gradients/Mul_10_grad/Reshape ^gradients/Mul_10_grad/Reshape_1
?
.gradients/Mul_10_grad/tuple/control_dependencyIdentitygradients/Mul_10_grad/Reshape'^gradients/Mul_10_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Mul_10_grad/Reshape
?
0gradients/Mul_10_grad/tuple/control_dependency_1Identitygradients/Mul_10_grad/Reshape_1'^gradients/Mul_10_grad/tuple/group_deps*2
_class(
&$loc:@gradients/Mul_10_grad/Reshape_1*
T0
E
gradients/Add_10_grad/ShapeShapeMul_11*
T0*
out_type0
F
gradients/Add_10_grad/Shape_1ShapeAdd_9*
T0*
out_type0
?
+gradients/Add_10_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_10_grad/Shapegradients/Add_10_grad/Shape_1*
T0
?
gradients/Add_10_grad/SumSum0gradients/Add_11_grad/tuple/control_dependency_1+gradients/Add_10_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/Add_10_grad/ReshapeReshapegradients/Add_10_grad/Sumgradients/Add_10_grad/Shape*
T0*
Tshape0
?
gradients/Add_10_grad/Sum_1Sum0gradients/Add_11_grad/tuple/control_dependency_1-gradients/Add_10_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
}
gradients/Add_10_grad/Reshape_1Reshapegradients/Add_10_grad/Sum_1gradients/Add_10_grad/Shape_1*
T0*
Tshape0
p
&gradients/Add_10_grad/tuple/group_depsNoOp^gradients/Add_10_grad/Reshape ^gradients/Add_10_grad/Reshape_1
?
.gradients/Add_10_grad/tuple/control_dependencyIdentitygradients/Add_10_grad/Reshape'^gradients/Add_10_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Add_10_grad/Reshape
?
0gradients/Add_10_grad/tuple/control_dependency_1Identitygradients/Add_10_grad/Reshape_1'^gradients/Add_10_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Add_10_grad/Reshape_1
E
gradients/Add_16_grad/ShapeShapeMul_13*
T0*
out_type0
G
gradients/Add_16_grad/Shape_1ShapeAdd_15*
T0*
out_type0
?
+gradients/Add_16_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_16_grad/Shapegradients/Add_16_grad/Shape_1*
T0
?
gradients/Add_16_grad/SumSum1gradients/truediv_3_grad/tuple/control_dependency+gradients/Add_16_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/Add_16_grad/ReshapeReshapegradients/Add_16_grad/Sumgradients/Add_16_grad/Shape*
T0*
Tshape0
?
gradients/Add_16_grad/Sum_1Sum1gradients/truediv_3_grad/tuple/control_dependency-gradients/Add_16_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
}
gradients/Add_16_grad/Reshape_1Reshapegradients/Add_16_grad/Sum_1gradients/Add_16_grad/Shape_1*
T0*
Tshape0
p
&gradients/Add_16_grad/tuple/group_depsNoOp^gradients/Add_16_grad/Reshape ^gradients/Add_16_grad/Reshape_1
?
.gradients/Add_16_grad/tuple/control_dependencyIdentitygradients/Add_16_grad/Reshape'^gradients/Add_16_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Add_16_grad/Reshape
?
0gradients/Add_16_grad/tuple/control_dependency_1Identitygradients/Add_16_grad/Reshape_1'^gradients/Add_16_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Add_16_grad/Reshape_1
I
gradients/Mul_2_grad/ShapeShapeemail_input*
out_type0*
T0
K
gradients/Mul_2_grad/Shape_1ShapePemail/read*
out_type0*
T0
?
*gradients/Mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_2_grad/Shapegradients/Mul_2_grad/Shape_1*
T0
d
gradients/Mul_2_grad/MulMul-gradients/Add_1_grad/tuple/control_dependencyPemail/read*
T0
?
gradients/Mul_2_grad/SumSumgradients/Mul_2_grad/Mul*gradients/Mul_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Mul_2_grad/ReshapeReshapegradients/Mul_2_grad/Sumgradients/Mul_2_grad/Shape*
T0*
Tshape0
f
gradients/Mul_2_grad/Mul_1Mulemail_input-gradients/Add_1_grad/tuple/control_dependency*
T0
?
gradients/Mul_2_grad/Sum_1Sumgradients/Mul_2_grad/Mul_1,gradients/Mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Mul_2_grad/Reshape_1Reshapegradients/Mul_2_grad/Sum_1gradients/Mul_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/Mul_2_grad/tuple/group_depsNoOp^gradients/Mul_2_grad/Reshape^gradients/Mul_2_grad/Reshape_1
?
-gradients/Mul_2_grad/tuple/control_dependencyIdentitygradients/Mul_2_grad/Reshape&^gradients/Mul_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_2_grad/Reshape
?
/gradients/Mul_2_grad/tuple/control_dependency_1Identitygradients/Mul_2_grad/Reshape_1&^gradients/Mul_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_2_grad/Reshape_1
A
gradients/Add_grad/ShapeShapeMul_3*
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
gradients/Add_grad/SumSum/gradients/Add_1_grad/tuple/control_dependency_1(gradients/Add_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
n
gradients/Add_grad/ReshapeReshapegradients/Add_grad/Sumgradients/Add_grad/Shape*
Tshape0*
T0
?
gradients/Add_grad/Sum_1Sum/gradients/Add_1_grad/tuple/control_dependency_1*gradients/Add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
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
gradients/Mul_4_grad/ShapeShapedevice_input*
T0*
out_type0
L
gradients/Mul_4_grad/Shape_1ShapePdevice/read*
T0*
out_type0
?
*gradients/Mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_4_grad/Shapegradients/Mul_4_grad/Shape_1*
T0
e
gradients/Mul_4_grad/MulMul-gradients/Add_7_grad/tuple/control_dependencyPdevice/read*
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
g
gradients/Mul_4_grad/Mul_1Muldevice_input-gradients/Add_7_grad/tuple/control_dependency*
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
-gradients/Mul_4_grad/tuple/control_dependencyIdentitygradients/Mul_4_grad/Reshape&^gradients/Mul_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_4_grad/Reshape
?
/gradients/Mul_4_grad/tuple/control_dependency_1Identitygradients/Mul_4_grad/Reshape_1&^gradients/Mul_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_4_grad/Reshape_1
C
gradients/Add_6_grad/ShapeShapeMul_5*
T0*
out_type0
E
gradients/Add_6_grad/Shape_1ShapeAdd_5*
out_type0*
T0
?
*gradients/Add_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_6_grad/Shapegradients/Add_6_grad/Shape_1*
T0
?
gradients/Add_6_grad/SumSum/gradients/Add_7_grad/tuple/control_dependency_1*gradients/Add_6_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_6_grad/ReshapeReshapegradients/Add_6_grad/Sumgradients/Add_6_grad/Shape*
T0*
Tshape0
?
gradients/Add_6_grad/Sum_1Sum/gradients/Add_7_grad/tuple/control_dependency_1,gradients/Add_6_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
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
J
gradients/Mul_11_grad/ShapeShapeemail_input*
T0*
out_type0
L
gradients/Mul_11_grad/Shape_1ShapePemail/read*
out_type0*
T0
?
+gradients/Mul_11_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_11_grad/Shapegradients/Mul_11_grad/Shape_1*
T0
f
gradients/Mul_11_grad/MulMul.gradients/Add_10_grad/tuple/control_dependencyPemail/read*
T0
?
gradients/Mul_11_grad/SumSumgradients/Mul_11_grad/Mul+gradients/Mul_11_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
w
gradients/Mul_11_grad/ReshapeReshapegradients/Mul_11_grad/Sumgradients/Mul_11_grad/Shape*
Tshape0*
T0
h
gradients/Mul_11_grad/Mul_1Mulemail_input.gradients/Add_10_grad/tuple/control_dependency*
T0
?
gradients/Mul_11_grad/Sum_1Sumgradients/Mul_11_grad/Mul_1-gradients/Mul_11_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
}
gradients/Mul_11_grad/Reshape_1Reshapegradients/Mul_11_grad/Sum_1gradients/Mul_11_grad/Shape_1*
T0*
Tshape0
p
&gradients/Mul_11_grad/tuple/group_depsNoOp^gradients/Mul_11_grad/Reshape ^gradients/Mul_11_grad/Reshape_1
?
.gradients/Mul_11_grad/tuple/control_dependencyIdentitygradients/Mul_11_grad/Reshape'^gradients/Mul_11_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Mul_11_grad/Reshape
?
0gradients/Mul_11_grad/tuple/control_dependency_1Identitygradients/Mul_11_grad/Reshape_1'^gradients/Mul_11_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Mul_11_grad/Reshape_1
D
gradients/Add_9_grad/ShapeShapeMul_12*
T0*
out_type0
G
gradients/Add_9_grad/Shape_1ShapeAdd_9/y*
T0*
out_type0
?
*gradients/Add_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_9_grad/Shapegradients/Add_9_grad/Shape_1*
T0
?
gradients/Add_9_grad/SumSum0gradients/Add_10_grad/tuple/control_dependency_1*gradients/Add_9_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_9_grad/ReshapeReshapegradients/Add_9_grad/Sumgradients/Add_9_grad/Shape*
T0*
Tshape0
?
gradients/Add_9_grad/Sum_1Sum0gradients/Add_10_grad/tuple/control_dependency_1,gradients/Add_9_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Add_9_grad/Reshape_1Reshapegradients/Add_9_grad/Sum_1gradients/Add_9_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_9_grad/tuple/group_depsNoOp^gradients/Add_9_grad/Reshape^gradients/Add_9_grad/Reshape_1
?
-gradients/Add_9_grad/tuple/control_dependencyIdentitygradients/Add_9_grad/Reshape&^gradients/Add_9_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_9_grad/Reshape
?
/gradients/Add_9_grad/tuple/control_dependency_1Identitygradients/Add_9_grad/Reshape_1&^gradients/Add_9_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_9_grad/Reshape_1
K
gradients/Mul_13_grad/ShapeShapedevice_input*
T0*
out_type0
M
gradients/Mul_13_grad/Shape_1ShapePdevice/read*
out_type0*
T0
?
+gradients/Mul_13_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_13_grad/Shapegradients/Mul_13_grad/Shape_1*
T0
g
gradients/Mul_13_grad/MulMul.gradients/Add_16_grad/tuple/control_dependencyPdevice/read*
T0
?
gradients/Mul_13_grad/SumSumgradients/Mul_13_grad/Mul+gradients/Mul_13_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/Mul_13_grad/ReshapeReshapegradients/Mul_13_grad/Sumgradients/Mul_13_grad/Shape*
T0*
Tshape0
i
gradients/Mul_13_grad/Mul_1Muldevice_input.gradients/Add_16_grad/tuple/control_dependency*
T0
?
gradients/Mul_13_grad/Sum_1Sumgradients/Mul_13_grad/Mul_1-gradients/Mul_13_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
}
gradients/Mul_13_grad/Reshape_1Reshapegradients/Mul_13_grad/Sum_1gradients/Mul_13_grad/Shape_1*
T0*
Tshape0
p
&gradients/Mul_13_grad/tuple/group_depsNoOp^gradients/Mul_13_grad/Reshape ^gradients/Mul_13_grad/Reshape_1
?
.gradients/Mul_13_grad/tuple/control_dependencyIdentitygradients/Mul_13_grad/Reshape'^gradients/Mul_13_grad/tuple/group_deps*0
_class&
$"loc:@gradients/Mul_13_grad/Reshape*
T0
?
0gradients/Mul_13_grad/tuple/control_dependency_1Identitygradients/Mul_13_grad/Reshape_1'^gradients/Mul_13_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Mul_13_grad/Reshape_1
E
gradients/Add_15_grad/ShapeShapeMul_14*
T0*
out_type0
G
gradients/Add_15_grad/Shape_1ShapeAdd_14*
out_type0*
T0
?
+gradients/Add_15_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_15_grad/Shapegradients/Add_15_grad/Shape_1*
T0
?
gradients/Add_15_grad/SumSum0gradients/Add_16_grad/tuple/control_dependency_1+gradients/Add_15_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/Add_15_grad/ReshapeReshapegradients/Add_15_grad/Sumgradients/Add_15_grad/Shape*
T0*
Tshape0
?
gradients/Add_15_grad/Sum_1Sum0gradients/Add_16_grad/tuple/control_dependency_1-gradients/Add_15_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
}
gradients/Add_15_grad/Reshape_1Reshapegradients/Add_15_grad/Sum_1gradients/Add_15_grad/Shape_1*
T0*
Tshape0
p
&gradients/Add_15_grad/tuple/group_depsNoOp^gradients/Add_15_grad/Reshape ^gradients/Add_15_grad/Reshape_1
?
.gradients/Add_15_grad/tuple/control_dependencyIdentitygradients/Add_15_grad/Reshape'^gradients/Add_15_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Add_15_grad/Reshape
?
0gradients/Add_15_grad/tuple/control_dependency_1Identitygradients/Add_15_grad/Reshape_1'^gradients/Add_15_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Add_15_grad/Reshape_1
L
gradients/Mul_3_grad/ShapeShapelocation_input*
T0*
out_type0
N
gradients/Mul_3_grad/Shape_1ShapePlocation/read*
T0*
out_type0
?
*gradients/Mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_3_grad/Shapegradients/Mul_3_grad/Shape_1*
T0
e
gradients/Mul_3_grad/MulMul+gradients/Add_grad/tuple/control_dependencyPlocation/read*
T0
?
gradients/Mul_3_grad/SumSumgradients/Mul_3_grad/Mul*gradients/Mul_3_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Mul_3_grad/ReshapeReshapegradients/Mul_3_grad/Sumgradients/Mul_3_grad/Shape*
T0*
Tshape0
g
gradients/Mul_3_grad/Mul_1Mullocation_input+gradients/Add_grad/tuple/control_dependency*
T0
?
gradients/Mul_3_grad/Sum_1Sumgradients/Mul_3_grad/Mul_1,gradients/Mul_3_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
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
H
gradients/Mul_5_grad/ShapeShape
imei_input*
T0*
out_type0
J
gradients/Mul_5_grad/Shape_1Shape
Pimei/read*
T0*
out_type0
?
*gradients/Mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_5_grad/Shapegradients/Mul_5_grad/Shape_1*
T0
c
gradients/Mul_5_grad/MulMul-gradients/Add_6_grad/tuple/control_dependency
Pimei/read*
T0
?
gradients/Mul_5_grad/SumSumgradients/Mul_5_grad/Mul*gradients/Mul_5_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/Mul_5_grad/ReshapeReshapegradients/Mul_5_grad/Sumgradients/Mul_5_grad/Shape*
T0*
Tshape0
e
gradients/Mul_5_grad/Mul_1Mul
imei_input-gradients/Add_6_grad/tuple/control_dependency*
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
/gradients/Mul_5_grad/tuple/control_dependency_1Identitygradients/Mul_5_grad/Reshape_1&^gradients/Mul_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_5_grad/Reshape_1
C
gradients/Add_5_grad/ShapeShapeMul_6*
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
gradients/Add_5_grad/SumSum/gradients/Add_6_grad/tuple/control_dependency_1*gradients/Add_5_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_5_grad/ReshapeReshapegradients/Add_5_grad/Sumgradients/Add_5_grad/Shape*
Tshape0*
T0
?
gradients/Add_5_grad/Sum_1Sum/gradients/Add_6_grad/tuple/control_dependency_1,gradients/Add_5_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/Add_5_grad/Reshape_1Reshapegradients/Add_5_grad/Sum_1gradients/Add_5_grad/Shape_1*
Tshape0*
T0
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
M
gradients/Mul_12_grad/ShapeShapelocation_input*
out_type0*
T0
O
gradients/Mul_12_grad/Shape_1ShapePlocation/read*
out_type0*
T0
?
+gradients/Mul_12_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_12_grad/Shapegradients/Mul_12_grad/Shape_1*
T0
h
gradients/Mul_12_grad/MulMul-gradients/Add_9_grad/tuple/control_dependencyPlocation/read*
T0
?
gradients/Mul_12_grad/SumSumgradients/Mul_12_grad/Mul+gradients/Mul_12_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
w
gradients/Mul_12_grad/ReshapeReshapegradients/Mul_12_grad/Sumgradients/Mul_12_grad/Shape*
T0*
Tshape0
j
gradients/Mul_12_grad/Mul_1Mullocation_input-gradients/Add_9_grad/tuple/control_dependency*
T0
?
gradients/Mul_12_grad/Sum_1Sumgradients/Mul_12_grad/Mul_1-gradients/Mul_12_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
}
gradients/Mul_12_grad/Reshape_1Reshapegradients/Mul_12_grad/Sum_1gradients/Mul_12_grad/Shape_1*
T0*
Tshape0
p
&gradients/Mul_12_grad/tuple/group_depsNoOp^gradients/Mul_12_grad/Reshape ^gradients/Mul_12_grad/Reshape_1
?
.gradients/Mul_12_grad/tuple/control_dependencyIdentitygradients/Mul_12_grad/Reshape'^gradients/Mul_12_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Mul_12_grad/Reshape
?
0gradients/Mul_12_grad/tuple/control_dependency_1Identitygradients/Mul_12_grad/Reshape_1'^gradients/Mul_12_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Mul_12_grad/Reshape_1
?
gradients/AddNAddN-gradients/Mul_grad/tuple/control_dependency_1/gradients/Mul_9_grad/tuple/control_dependency_1/gradients/Mul_4_grad/tuple/control_dependency_10gradients/Mul_13_grad/tuple/control_dependency_1*
T0*/
_class%
#!loc:@gradients/Mul_grad/Reshape_1*
N
I
gradients/Mul_14_grad/ShapeShape
imei_input*
T0*
out_type0
K
gradients/Mul_14_grad/Shape_1Shape
Pimei/read*
T0*
out_type0
?
+gradients/Mul_14_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_14_grad/Shapegradients/Mul_14_grad/Shape_1*
T0
e
gradients/Mul_14_grad/MulMul.gradients/Add_15_grad/tuple/control_dependency
Pimei/read*
T0
?
gradients/Mul_14_grad/SumSumgradients/Mul_14_grad/Mul+gradients/Mul_14_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/Mul_14_grad/ReshapeReshapegradients/Mul_14_grad/Sumgradients/Mul_14_grad/Shape*
T0*
Tshape0
g
gradients/Mul_14_grad/Mul_1Mul
imei_input.gradients/Add_15_grad/tuple/control_dependency*
T0
?
gradients/Mul_14_grad/Sum_1Sumgradients/Mul_14_grad/Mul_1-gradients/Mul_14_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
}
gradients/Mul_14_grad/Reshape_1Reshapegradients/Mul_14_grad/Sum_1gradients/Mul_14_grad/Shape_1*
T0*
Tshape0
p
&gradients/Mul_14_grad/tuple/group_depsNoOp^gradients/Mul_14_grad/Reshape ^gradients/Mul_14_grad/Reshape_1
?
.gradients/Mul_14_grad/tuple/control_dependencyIdentitygradients/Mul_14_grad/Reshape'^gradients/Mul_14_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Mul_14_grad/Reshape
?
0gradients/Mul_14_grad/tuple/control_dependency_1Identitygradients/Mul_14_grad/Reshape_1'^gradients/Mul_14_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Mul_14_grad/Reshape_1
E
gradients/Add_14_grad/ShapeShapeMul_15*
T0*
out_type0
G
gradients/Add_14_grad/Shape_1ShapeAdd_13*
out_type0*
T0
?
+gradients/Add_14_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_14_grad/Shapegradients/Add_14_grad/Shape_1*
T0
?
gradients/Add_14_grad/SumSum0gradients/Add_15_grad/tuple/control_dependency_1+gradients/Add_14_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
w
gradients/Add_14_grad/ReshapeReshapegradients/Add_14_grad/Sumgradients/Add_14_grad/Shape*
T0*
Tshape0
?
gradients/Add_14_grad/Sum_1Sum0gradients/Add_15_grad/tuple/control_dependency_1-gradients/Add_14_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
}
gradients/Add_14_grad/Reshape_1Reshapegradients/Add_14_grad/Sum_1gradients/Add_14_grad/Shape_1*
T0*
Tshape0
p
&gradients/Add_14_grad/tuple/group_depsNoOp^gradients/Add_14_grad/Reshape ^gradients/Add_14_grad/Reshape_1
?
.gradients/Add_14_grad/tuple/control_dependencyIdentitygradients/Add_14_grad/Reshape'^gradients/Add_14_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Add_14_grad/Reshape
?
0gradients/Add_14_grad/tuple/control_dependency_1Identitygradients/Add_14_grad/Reshape_1'^gradients/Add_14_grad/tuple/group_deps*2
_class(
&$loc:@gradients/Add_14_grad/Reshape_1*
T0
I
gradients/Mul_6_grad/ShapeShapeemail_input*
T0*
out_type0
K
gradients/Mul_6_grad/Shape_1ShapePemail/read*
T0*
out_type0
?
*gradients/Mul_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_6_grad/Shapegradients/Mul_6_grad/Shape_1*
T0
d
gradients/Mul_6_grad/MulMul-gradients/Add_5_grad/tuple/control_dependencyPemail/read*
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
f
gradients/Mul_6_grad/Mul_1Mulemail_input-gradients/Add_5_grad/tuple/control_dependency*
T0
?
gradients/Mul_6_grad/Sum_1Sumgradients/Mul_6_grad/Mul_1,gradients/Mul_6_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/Mul_6_grad/Reshape_1Reshapegradients/Mul_6_grad/Sum_1gradients/Mul_6_grad/Shape_1*
T0*
Tshape0
m
%gradients/Mul_6_grad/tuple/group_depsNoOp^gradients/Mul_6_grad/Reshape^gradients/Mul_6_grad/Reshape_1
?
-gradients/Mul_6_grad/tuple/control_dependencyIdentitygradients/Mul_6_grad/Reshape&^gradients/Mul_6_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_6_grad/Reshape
?
/gradients/Mul_6_grad/tuple/control_dependency_1Identitygradients/Mul_6_grad/Reshape_1&^gradients/Mul_6_grad/tuple/group_deps*1
_class'
%#loc:@gradients/Mul_6_grad/Reshape_1*
T0
C
gradients/Add_4_grad/ShapeShapeMul_7*
out_type0*
T0
G
gradients/Add_4_grad/Shape_1ShapeAdd_4/y*
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
-gradients/Add_4_grad/tuple/control_dependencyIdentitygradients/Add_4_grad/Reshape&^gradients/Add_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_4_grad/Reshape
?
/gradients/Add_4_grad/tuple/control_dependency_1Identitygradients/Add_4_grad/Reshape_1&^gradients/Add_4_grad/tuple/group_deps*1
_class'
%#loc:@gradients/Add_4_grad/Reshape_1*
T0
?
gradients/AddN_1AddN/gradients/Mul_1_grad/tuple/control_dependency_10gradients/Mul_10_grad/tuple/control_dependency_1/gradients/Mul_5_grad/tuple/control_dependency_10gradients/Mul_14_grad/tuple/control_dependency_1*
T0*1
_class'
%#loc:@gradients/Mul_1_grad/Reshape_1*
N
J
gradients/Mul_15_grad/ShapeShapeemail_input*
T0*
out_type0
L
gradients/Mul_15_grad/Shape_1ShapePemail/read*
T0*
out_type0
?
+gradients/Mul_15_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_15_grad/Shapegradients/Mul_15_grad/Shape_1*
T0
f
gradients/Mul_15_grad/MulMul.gradients/Add_14_grad/tuple/control_dependencyPemail/read*
T0
?
gradients/Mul_15_grad/SumSumgradients/Mul_15_grad/Mul+gradients/Mul_15_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
w
gradients/Mul_15_grad/ReshapeReshapegradients/Mul_15_grad/Sumgradients/Mul_15_grad/Shape*
T0*
Tshape0
h
gradients/Mul_15_grad/Mul_1Mulemail_input.gradients/Add_14_grad/tuple/control_dependency*
T0
?
gradients/Mul_15_grad/Sum_1Sumgradients/Mul_15_grad/Mul_1-gradients/Mul_15_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
}
gradients/Mul_15_grad/Reshape_1Reshapegradients/Mul_15_grad/Sum_1gradients/Mul_15_grad/Shape_1*
T0*
Tshape0
p
&gradients/Mul_15_grad/tuple/group_depsNoOp^gradients/Mul_15_grad/Reshape ^gradients/Mul_15_grad/Reshape_1
?
.gradients/Mul_15_grad/tuple/control_dependencyIdentitygradients/Mul_15_grad/Reshape'^gradients/Mul_15_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Mul_15_grad/Reshape
?
0gradients/Mul_15_grad/tuple/control_dependency_1Identitygradients/Mul_15_grad/Reshape_1'^gradients/Mul_15_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Mul_15_grad/Reshape_1
E
gradients/Add_13_grad/ShapeShapeMul_16*
T0*
out_type0
I
gradients/Add_13_grad/Shape_1ShapeAdd_13/y*
out_type0*
T0
?
+gradients/Add_13_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_13_grad/Shapegradients/Add_13_grad/Shape_1*
T0
?
gradients/Add_13_grad/SumSum0gradients/Add_14_grad/tuple/control_dependency_1+gradients/Add_13_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/Add_13_grad/ReshapeReshapegradients/Add_13_grad/Sumgradients/Add_13_grad/Shape*
T0*
Tshape0
?
gradients/Add_13_grad/Sum_1Sum0gradients/Add_14_grad/tuple/control_dependency_1-gradients/Add_13_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
}
gradients/Add_13_grad/Reshape_1Reshapegradients/Add_13_grad/Sum_1gradients/Add_13_grad/Shape_1*
T0*
Tshape0
p
&gradients/Add_13_grad/tuple/group_depsNoOp^gradients/Add_13_grad/Reshape ^gradients/Add_13_grad/Reshape_1
?
.gradients/Add_13_grad/tuple/control_dependencyIdentitygradients/Add_13_grad/Reshape'^gradients/Add_13_grad/tuple/group_deps*0
_class&
$"loc:@gradients/Add_13_grad/Reshape*
T0
?
0gradients/Add_13_grad/tuple/control_dependency_1Identitygradients/Add_13_grad/Reshape_1'^gradients/Add_13_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Add_13_grad/Reshape_1
L
gradients/Mul_7_grad/ShapeShapelocation_input*
T0*
out_type0
N
gradients/Mul_7_grad/Shape_1ShapePlocation/read*
T0*
out_type0
?
*gradients/Mul_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_7_grad/Shapegradients/Mul_7_grad/Shape_1*
T0
g
gradients/Mul_7_grad/MulMul-gradients/Add_4_grad/tuple/control_dependencyPlocation/read*
T0
?
gradients/Mul_7_grad/SumSumgradients/Mul_7_grad/Mul*gradients/Mul_7_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Mul_7_grad/ReshapeReshapegradients/Mul_7_grad/Sumgradients/Mul_7_grad/Shape*
Tshape0*
T0
i
gradients/Mul_7_grad/Mul_1Mullocation_input-gradients/Add_4_grad/tuple/control_dependency*
T0
?
gradients/Mul_7_grad/Sum_1Sumgradients/Mul_7_grad/Mul_1,gradients/Mul_7_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/Mul_7_grad/Reshape_1Reshapegradients/Mul_7_grad/Sum_1gradients/Mul_7_grad/Shape_1*
Tshape0*
T0
m
%gradients/Mul_7_grad/tuple/group_depsNoOp^gradients/Mul_7_grad/Reshape^gradients/Mul_7_grad/Reshape_1
?
-gradients/Mul_7_grad/tuple/control_dependencyIdentitygradients/Mul_7_grad/Reshape&^gradients/Mul_7_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_7_grad/Reshape
?
/gradients/Mul_7_grad/tuple/control_dependency_1Identitygradients/Mul_7_grad/Reshape_1&^gradients/Mul_7_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_7_grad/Reshape_1
?
gradients/AddN_2AddN/gradients/Mul_2_grad/tuple/control_dependency_10gradients/Mul_11_grad/tuple/control_dependency_1/gradients/Mul_6_grad/tuple/control_dependency_10gradients/Mul_15_grad/tuple/control_dependency_1*
T0*1
_class'
%#loc:@gradients/Mul_2_grad/Reshape_1*
N
M
gradients/Mul_16_grad/ShapeShapelocation_input*
T0*
out_type0
O
gradients/Mul_16_grad/Shape_1ShapePlocation/read*
T0*
out_type0
?
+gradients/Mul_16_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_16_grad/Shapegradients/Mul_16_grad/Shape_1*
T0
i
gradients/Mul_16_grad/MulMul.gradients/Add_13_grad/tuple/control_dependencyPlocation/read*
T0
?
gradients/Mul_16_grad/SumSumgradients/Mul_16_grad/Mul+gradients/Mul_16_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
w
gradients/Mul_16_grad/ReshapeReshapegradients/Mul_16_grad/Sumgradients/Mul_16_grad/Shape*
Tshape0*
T0
k
gradients/Mul_16_grad/Mul_1Mullocation_input.gradients/Add_13_grad/tuple/control_dependency*
T0
?
gradients/Mul_16_grad/Sum_1Sumgradients/Mul_16_grad/Mul_1-gradients/Mul_16_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
}
gradients/Mul_16_grad/Reshape_1Reshapegradients/Mul_16_grad/Sum_1gradients/Mul_16_grad/Shape_1*
T0*
Tshape0
p
&gradients/Mul_16_grad/tuple/group_depsNoOp^gradients/Mul_16_grad/Reshape ^gradients/Mul_16_grad/Reshape_1
?
.gradients/Mul_16_grad/tuple/control_dependencyIdentitygradients/Mul_16_grad/Reshape'^gradients/Mul_16_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Mul_16_grad/Reshape
?
0gradients/Mul_16_grad/tuple/control_dependency_1Identitygradients/Mul_16_grad/Reshape_1'^gradients/Mul_16_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Mul_16_grad/Reshape_1
?
gradients/AddN_3AddN/gradients/Mul_3_grad/tuple/control_dependency_10gradients/Mul_12_grad/tuple/control_dependency_1/gradients/Mul_7_grad/tuple/control_dependency_10gradients/Mul_16_grad/tuple/control_dependency_1*
T0*1
_class'
%#loc:@gradients/Mul_3_grad/Reshape_1*
N
@
train/learning_rateConst*
valueB
 *
?#<*
dtype0
?
+train/update_Plocation/ApplyGradientDescentApplyGradientDescent	Plocationtrain/learning_rategradients/AddN_3*
_class
loc:@Plocation*
use_locking( *
T0
?
(train/update_Pemail/ApplyGradientDescentApplyGradientDescentPemailtrain/learning_rategradients/AddN_2*
T0*
_class
loc:@Pemail*
use_locking( 
?
'train/update_Pimei/ApplyGradientDescentApplyGradientDescentPimeitrain/learning_rategradients/AddN_1*
use_locking( *
T0*
_class

loc:@Pimei
?
)train/update_Pdevice/ApplyGradientDescentApplyGradientDescentPdevicetrain/learning_rategradients/AddN*
use_locking( *
T0*
_class
loc:@Pdevice
?
trainNoOp*^train/update_Pdevice/ApplyGradientDescent)^train/update_Pemail/ApplyGradientDescent(^train/update_Pimei/ApplyGradientDescent,^train/update_Plocation/ApplyGradientDescent
O
initNoOp^Pdevice/Assign^Pemail/Assign^Pimei/Assign^Plocation/Assign
A
save/filename/inputConst*
dtype0*
valueB Bmodel
V
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
shape: 
M

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0
f
save/SaveV2/tensor_namesConst*6
value-B+BPdeviceBPemailBPimeiB	Plocation*
dtype0
O
save/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesPdevicePemailPimei	Plocation*
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
x
save/RestoreV2/tensor_namesConst"/device:CPU:0*6
value-B+BPdeviceBPemailBPimeiB	Plocation*
dtype0
a
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
valueBB B B B 
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2
|
save/AssignAssignPdevicesave/RestoreV2*
use_locking(*
T0*
_class
loc:@Pdevice*
validate_shape(
~
save/Assign_1AssignPemailsave/RestoreV2:1*
validate_shape(*
use_locking(*
T0*
_class
loc:@Pemail
|
save/Assign_2AssignPimeisave/RestoreV2:2*
use_locking(*
T0*
_class

loc:@Pimei*
validate_shape(
?
save/Assign_3Assign	Plocationsave/RestoreV2:3*
use_locking(*
T0*
_class
loc:@Plocation*
validate_shape(
V
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3"?