if __name__ == '__main__':
    n = int(input())
    arr = map(int, input().split())
    
    first = second = float("-inf")
    
    for score in arr:
        if score > first:
            second = first
            first = score
        elif first > score > second:
            second = score
            
    print(second)
    