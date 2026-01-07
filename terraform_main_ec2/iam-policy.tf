# في Learner Lab لا يمكن إنشاء IAM Policy جديدة
# لذلك نحذف/نعلّق مورد aws_iam_policy ونستخدم السياسات الجاهزة فقط

# ربط الدور الافتراضي LabRole بالسياسات الأساسية المطلوبة

resource "aws_iam_role_policy_attachment" "eks_cluster_policy" {
  role       = "LabRole"
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}

resource "aws_iam_role_policy_attachment" "eks_worker_node_policy" {
  role       = "LabRole"
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}

resource "aws_iam_role_policy_attachment" "ec2_full_access" {
  role       = "LabRole"
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

resource "aws_iam_role_policy_attachment" "cloudformation_full_access" {
  role       = "LabRole"
  policy_arn = "arn:aws:iam::aws:policy/AWSCloudFormationFullAccess"
}
