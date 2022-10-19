class Node:
    def __init__(self, key):
        self.left = None
        self.right = None
        self.val = key


def insert(root, key):
    if root == None:
        return Node(key)
    if key < root.val:
        root.left = insert(root.left, key)
    else:
        root.right = insert(root.right, key)
    return root


def search(root, key):
    if root == None:
        return False
    if root.val == key:
        print("Yes")
        return
    if key < root.val:
        return search(root.left, key)
    return search(root.right, key)


# def inorder(root):
#     p = 0
#     if root != None:
#         p = inorder(root.left)
#         print(root.val)
#         p = inorder(root.right)
#     else:
#         return p


# def preorder(root):
#     p = 0
#     if root != None:
#         print(root.val)
#         p = preorder(root.left)
#         p = preorder(root.right)
#     else:
#         return p


def postorder(root):
    p = 0
    if root != None:
        p = postorder(root.left)
        p = postorder(root.right)
        print(root.val)
    else:
        return p


#    50
#  /     \
# 30     70
# / \    / \
# 20 40 60 80
r = Node(50)
r = insert(r, 30)
r = insert(r, 20)
r = insert(r, 40)
r = insert(r, 70)
r = insert(r, 60)
r = insert(r, 80)
search(r, 40)
# inorder(r)
# preorder(r)
postorder(r)
