//Including all the necessary header files
#include <bits/stdc++.h> 
using namespace std; 

//Total alaphates that contain in dictionary are either character a-z or A-Z or ' or - 
//Considering all the letters as small letter, 26+2=28
const int ALPHABET_SIZE = 28; 

// trie node 
struct TrieNode 
{ 
	struct TrieNode *children[ALPHABET_SIZE]; 

	// isEndOfWord is true if the node represents 
	// end of a word 
	bool isEndOfWord;

	//Stores the frequency of word ending at the node;
	int freq; 
}; 

// Returns new trie node (initialized to NULLs) 
struct TrieNode *getNode(void) 
{ 
	struct TrieNode *pNode = new TrieNode; 

	pNode->isEndOfWord = false; 

	for (int i = 0; i < ALPHABET_SIZE; i++) 
		pNode->children[i] = NULL; 

	return pNode; 
} 

// If not present, inserts key into trie 
// If the key is prefix of trie node, just 
// marks leaf node 
void insert(struct TrieNode *root, string key, int freq) 
{ 
	struct TrieNode *pCrawl = root; 	//Setting temporary pointer variable of TrieNode type

	//Repeat for every character of word key
	for (int i = 0; i < key.length(); i++) 
	{ 
		int index;
		
		//index 0-25 for letters, 26 for ' and 27 for -
		if(key[i]>='a' && key[i]<='z')
			index=key[i]-'a';
		else if(key[i]=='\'')
			index=26;
		else
			index=27;
			
		//Check if leaf exists if no then make a node
		if (!pCrawl->children[index]) 
			pCrawl->children[index] = getNode(); 

		//Assiging next node to pCrawl
		pCrawl = pCrawl->children[index]; 
	} 

	// mark last node as leaf 
	pCrawl->isEndOfWord = true;

	//Store the frequency
	pCrawl->freq=freq; 
} 

// Returns true if key presents in trie, else 
// false 
void search(struct TrieNode *root, string key) 
{ 
	struct TrieNode *pCrawl = root; 

	for (int i = 0; i < key.length(); i++) 
	{ 
	
		int index;
		
		//index 0-25 for letters, 26 for ' and 27 for -
		if(key[i]>='a' && key[i]<='z')
			index=key[i]-'a';
		else if(key[i]=='\'')
			index=26;
		else
			index=27;
		
		//If letter node is not present then word doesn't exist
		if (!pCrawl->children[index]) 
		{
			cout<<"No\n";
			return;
		}
		
		//Else move to the next letter of the word
		pCrawl = pCrawl->children[index]; 
	} 

	//If the last word is not null and is mark as word then the word exist
	//Otherwise word doesn't exist
	if(pCrawl != NULL && pCrawl->isEndOfWord)
		cout<<"YES, "<<pCrawl->freq <<"\n";
	else
		cout<<"No\n"; 
} 


/* run this program using the console pauser or add your own getch, system("pause") or input loop */


int main(int argc, char** argv) {

	//Variable to read file
	ifstream fin;
	
	//Opening the dictionary
	fin.open("EnglishDictionary.csv");
	string line, word;
	int freq,n=0;
	
	//Creating root node for the dictionary
	struct TrieNode *root = getNode(); 

	//Read file till the end of file
	while(getline(fin,line,'\n'))
	{
		stringstream s(line);
		getline(s,word,',');
		s>>freq;
		
		//Changing uppercase letters to lowercase
		for(int j=0;word[j];j++)
		{
			if(word[j]>=65 && word[j]<92)
				word[j]=word[j]^32;
		}
			
		insert(root,word,freq);
		n++;
		word="";
	}
	fin.close();
	
	//Input for searching word in dictionary
	for(int i=2;i<argc;i++)
	{
	/* When reading from 0, executable file name 
	and number of arguments is also taken as input.
	If only input argument is to be read, start i=2.
	Tested in DEV-C++ compiler using command prompt;
	example: exe 3 There Happy None
	exe and 3 will also be counted as input and
	argv[0]="exe" and argv[1]="3";
	*/
		for(int j=0;argv[i][j];j++)
		{
			if(argv[i][j]>=65 && argv[i][j]<92)
				argv[i][j]=argv[i][j]^32;
		}
		cout<<"Words are --  "<<argv[i]<<endl;
		search(root,argv[i]);
	}	

	return 0;
}