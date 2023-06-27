#include <iostream>
#include <sstream>
#include <queue>
#include <limits.h>

using namespace std;

struct Node{
    int value;
    Node * left;
    Node * right;
    Node(int value = 0, Node * left = nullptr, Node * right = nullptr){
        this->value = value;
        this->left = left;
        this->right = right;
    }
};

struct BTree{
    Node * root {nullptr};
    BTree(){
    }

    void clone(stringstream& ss, Node ** elo){
        string value;
        ss >> value;
        if(value == "#")
            return;
        int num;
        stringstream(value) >> num;
        *elo =  new Node(num);
        clone(ss, &(*elo)->left);
        clone(ss, &(*elo)->right);
    }

    BTree(string serial){
        stringstream ss(serial);
        clone(ss, &root);
    }

    ~BTree(){ //tree destructor
        __destroy(this->root);
    }

    void __destroy(Node * node){
        if(node == nullptr)
            return;
        __destroy(node->left);
        __destroy(node->right);
        delete node;
    }
    
    void bshow(){
        __bshow(this->root);
    }

    void __bshow(Node * node, string heritage = ""){
        if(node != nullptr && (node->left != nullptr || node->right != nullptr))
            __bshow(node->left , heritage + "l");
        for(int i = 0; i < (int) heritage.size() - 1; i++)
            cout << (heritage[i] != heritage[i + 1] ? "│   " : "    ");
        if(heritage != "")
            cout << (heritage.back() == 'l' ? "┌───" : "└───");
        if(node == nullptr){
            cout << "#" << endl;
            return;
        }
        cout << node->value << endl;
        if(node != nullptr && (node->left != nullptr || node->right != nullptr))
            __bshow(node->right, heritage + "r");
    }

    void show_in_order(){
        cout << "[ ";
        __show_in_order(root);
        cout << "]\n";
    }

    void __show_in_order(Node * node){
        if(node == nullptr)
            return;
        __show_in_order(node->left);
        cout << node->value << " ";
        __show_in_order(node->right);
    }
    int sum(Node * root){
        
        int sum = root -> value;
        if(root -> left != nullptr)
            sum = sum + sum(root -> left);
        if(root -> right != nullptr)
            sum = sum + sum(root -> right);
        
        return sum;
        
    }

    int min(Node * root){
        
        int smallestLeft = INT_MAX, smallestRight = INT_MAX;
        
        if(root -> left != nullptr)
            smallestLeft = min(root -> left);
        if(root -> right != nullptr)
            smallestRight = min(root -> right);
        
        if(root -> value < smallestLeft && root -> value < smallestRight){
            return root -> value;
        }
        else if(smallestLeft < smallestRight && smallestLeft < root ->value){
            return smallestLeft;
        }
        else
            return smallestRight;
        
    
    }
};


int main(){
    string lineToRead;
    getline(cin, lineToRead);
    BTree bt(lineToRead);
    getline(cin, lineToRead);
    cout << bt.sum(bt.root) << " " << bt.min(bt.root) << "\n";
}
