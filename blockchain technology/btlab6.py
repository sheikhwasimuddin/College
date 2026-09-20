import hashlib

def hash_data(data):
    return hashlib.sha256(data.encode()).hexdigest()


def build_merkle_tree(data_blocks):
    tree = [hash_data(data) for data in data_blocks]

    while len(tree) > 1:
        if len(tree) % 2 != 0:
            tree.append(tree[-1])

        new_tree = []

        for i in range(0, len(tree), 2):
            combined = tree[i] + tree[i + 1]
            new_tree.append(hash_data(combined))

        tree = new_tree

    return tree[0]


# Data blocks
data_blocks = [
    "Wasimuddin",
    "Tanmay",
    "Akare",
    "Parth"
]

# Generate Merkle Root
root_hash = build_merkle_tree(data_blocks)

print("Merkle Root:", root_hash)


# Verify data
data = "Wasimuddin"

if data in data_blocks:
    print("Data is valid")
else:
    print("Data is not valid")
