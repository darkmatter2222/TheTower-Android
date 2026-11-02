package io.grpc;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
final class PersistentHashArrayMappedTrie {

    static final class CollisionLeaf<K, V> implements Node<K, V> {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final K[] keys;
        private final V[] values;

        CollisionLeaf(K k, V v, K k2, V v2) {
            this(new Object[]{k, k2}, new Object[]{v, v2});
        }

        private CollisionLeaf(K[] kArr, V[] vArr) {
            this.keys = kArr;
            this.values = vArr;
        }

        private int indexOfKey(K k) {
            int i = 0;
            while (true) {
                K[] kArr = this.keys;
                if (i >= kArr.length) {
                    return -1;
                }
                if (kArr[i] == k) {
                    return i;
                }
                i++;
            }
        }

        @Override // io.grpc.PersistentHashArrayMappedTrie.Node
        public V get(K k, int i, int i2) {
            int i3 = 0;
            while (true) {
                K[] kArr = this.keys;
                if (i3 >= kArr.length) {
                    return null;
                }
                if (kArr[i3] == k) {
                    return this.values[i3];
                }
                i3++;
            }
        }

        @Override // io.grpc.PersistentHashArrayMappedTrie.Node
        public Node<K, V> put(K k, V v, int i, int i2) {
            int iHashCode = this.keys[0].hashCode();
            if (iHashCode != i) {
                return CompressedIndex.combine(new Leaf(k, v), i, this, iHashCode, i2);
            }
            int iIndexOfKey = indexOfKey(k);
            if (iIndexOfKey != -1) {
                K[] kArr = this.keys;
                Object[] objArrCopyOf = Arrays.copyOf(kArr, kArr.length);
                Object[] objArrCopyOf2 = Arrays.copyOf(this.values, this.keys.length);
                objArrCopyOf[iIndexOfKey] = k;
                objArrCopyOf2[iIndexOfKey] = v;
                return new CollisionLeaf(objArrCopyOf, objArrCopyOf2);
            }
            K[] kArr2 = this.keys;
            Object[] objArrCopyOf3 = Arrays.copyOf(kArr2, kArr2.length + 1);
            Object[] objArrCopyOf4 = Arrays.copyOf(this.values, this.keys.length + 1);
            K[] kArr3 = this.keys;
            objArrCopyOf3[kArr3.length] = k;
            objArrCopyOf4[kArr3.length] = v;
            return new CollisionLeaf(objArrCopyOf3, objArrCopyOf4);
        }

        @Override // io.grpc.PersistentHashArrayMappedTrie.Node
        public int size() {
            return this.values.length;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("CollisionLeaf(");
            for (int i = 0; i < this.values.length; i++) {
                sb.append("(key=").append(this.keys[i]).append(" value=").append(this.values[i]).append(") ");
            }
            return sb.append(")").toString();
        }
    }

    static final class CompressedIndex<K, V> implements Node<K, V> {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private static final int BITS = 5;
        private static final int BITS_MASK = 31;
        final int bitmap;
        private final int size;
        final Node<K, V>[] values;

        private CompressedIndex(int i, Node<K, V>[] nodeArr, int i2) {
            this.bitmap = i;
            this.values = nodeArr;
            this.size = i2;
        }

        static <K, V> Node<K, V> combine(Node<K, V> node, int i, Node<K, V> node2, int i2, int i3) {
            int iIndexBit = indexBit(i, i3);
            int iIndexBit2 = indexBit(i2, i3);
            if (iIndexBit == iIndexBit2) {
                Node nodeCombine = combine(node, i, node2, i2, i3 + 5);
                return new CompressedIndex(iIndexBit, new Node[]{nodeCombine}, nodeCombine.size());
            }
            if (uncompressedIndex(i, i3) > uncompressedIndex(i2, i3)) {
                node2 = node;
                node = node2;
            }
            return new CompressedIndex(iIndexBit | iIndexBit2, new Node[]{node, node2}, node.size() + node2.size());
        }

        private int compressedIndex(int i) {
            return Integer.bitCount((i - 1) & this.bitmap);
        }

        private static int indexBit(int i, int i2) {
            return 1 << uncompressedIndex(i, i2);
        }

        private static int uncompressedIndex(int i, int i2) {
            return (i >>> i2) & 31;
        }

        @Override // io.grpc.PersistentHashArrayMappedTrie.Node
        public V get(K k, int i, int i2) {
            int iIndexBit = indexBit(i, i2);
            if ((this.bitmap & iIndexBit) == 0) {
                return null;
            }
            return this.values[compressedIndex(iIndexBit)].get(k, i, i2 + 5);
        }

        @Override // io.grpc.PersistentHashArrayMappedTrie.Node
        public Node<K, V> put(K k, V v, int i, int i2) {
            int iIndexBit = indexBit(i, i2);
            int iCompressedIndex = compressedIndex(iIndexBit);
            int i3 = this.bitmap;
            if ((i3 & iIndexBit) != 0) {
                Node<K, V>[] nodeArr = this.values;
                Node[] nodeArr2 = (Node[]) Arrays.copyOf(nodeArr, nodeArr.length);
                nodeArr2[iCompressedIndex] = this.values[iCompressedIndex].put(k, v, i, i2 + 5);
                return new CompressedIndex(this.bitmap, nodeArr2, (size() + nodeArr2[iCompressedIndex].size()) - this.values[iCompressedIndex].size());
            }
            int i4 = i3 | iIndexBit;
            Node<K, V>[] nodeArr3 = this.values;
            Node[] nodeArr4 = new Node[nodeArr3.length + 1];
            System.arraycopy(nodeArr3, 0, nodeArr4, 0, iCompressedIndex);
            nodeArr4[iCompressedIndex] = new Leaf(k, v);
            Node<K, V>[] nodeArr5 = this.values;
            System.arraycopy(nodeArr5, iCompressedIndex, nodeArr4, iCompressedIndex + 1, nodeArr5.length - iCompressedIndex);
            return new CompressedIndex(i4, nodeArr4, size() + 1);
        }

        @Override // io.grpc.PersistentHashArrayMappedTrie.Node
        public int size() {
            return this.size;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("CompressedIndex(");
            sb.append(String.format("bitmap=%s ", Integer.toBinaryString(this.bitmap)));
            for (Node<K, V> node : this.values) {
                sb.append(node).append(" ");
            }
            return sb.append(")").toString();
        }
    }

    static final class Leaf<K, V> implements Node<K, V> {
        private final K key;
        private final V value;

        public Leaf(K k, V v) {
            this.key = k;
            this.value = v;
        }

        @Override // io.grpc.PersistentHashArrayMappedTrie.Node
        public V get(K k, int i, int i2) {
            if (this.key == k) {
                return this.value;
            }
            return null;
        }

        @Override // io.grpc.PersistentHashArrayMappedTrie.Node
        public Node<K, V> put(K k, V v, int i, int i2) {
            int iHashCode = this.key.hashCode();
            if (iHashCode != i) {
                return CompressedIndex.combine(new Leaf(k, v), i, this, iHashCode, i2);
            }
            return this.key == k ? new Leaf(k, v) : new CollisionLeaf(this.key, this.value, k, v);
        }

        @Override // io.grpc.PersistentHashArrayMappedTrie.Node
        public int size() {
            return 1;
        }

        public String toString() {
            return String.format("Leaf(key=%s value=%s)", this.key, this.value);
        }
    }

    interface Node<K, V> {
        V get(K k, int i, int i2);

        Node<K, V> put(K k, V v, int i, int i2);

        int size();
    }

    private PersistentHashArrayMappedTrie() {
    }

    static <K, V> V get(Node<K, V> node, K k) {
        if (node == null) {
            return null;
        }
        return node.get(k, k.hashCode(), 0);
    }

    static <K, V> Node<K, V> put(Node<K, V> node, K k, V v) {
        return node == null ? new Leaf(k, v) : node.put(k, v, k.hashCode(), 0);
    }
}
