# 单调栈
单调栈
题目描述 https://www.acwing.com/problem/content/832/
给定一个长度为 N 的整数数列，输出每个数左边第一个比它小的数，如果不存在则输出 −1。

输入格式
第一行包含整数 N，表示数列长度。
第二行包含 N 个整数，表示整数数列。

输出格式
共一行，包含 N 个整数，其中第 i 个数表示第 i 个数的左边第一个比它小的数，如果不存在则输出 −1。

数据范围
1≤N≤105
1≤数列中元素≤109
输入样例：
5
3 4 2 7 5
输出样例：
-1 3 -1 2 2

解题方法
1.暴力破解，从栈里面提取规律。

2.单调栈
- 性质，当x<y时，ax>ay的话，ax不会是目标答案。即出现逆序关系的话，会被删除，所以栈里的数据一定是严格单调递增的序列。


```c++
#include <stdio.h>
#include <iostream>
#include <cstring>
using namespace std;

const int N=100010;

int n;
int stk[N],tt;

int main()
{
    /*
     1. 当栈不为空的时候，判断栈里的元素是否大于当前的x；
        -如果是，那么tt--，如果不是，输出当前的tt（栈最顶端的数字）；
        -如果栈为空，那么说明左边没有适合的目标数据，于是输出-1；
     2. 最后记得把当前的值加入栈内。语法要记清楚了。
     */
    cin >>n;
    for (int i =0;i<n;i++)
    
    {
        int x;
        cin>>x;
//        cout<<endl<<"NOW___"<<x<<endl;
        
        while(tt && stk[tt]>=x)
        {
            cout<<tt<<"__"<<stk[tt];
            tt--;
        }
//        当栈不为空，而且数值大于当前的x时，栈的下标往左移动。
        if (tt)cout <<stk[tt] << ' ';
//
        else cout << -1 << ' ';
        stk[++tt]=x;
    }
    return 0;
}
```