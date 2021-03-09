var abi = [[
	{
		"constant": false,
		"inputs": [],
		"name": "fundGame",
		"outputs": [],
		"payable": true,
		"stateMutability": "payable",
		"type": "function"
	},
	{
		"inputs": [],
		"payable": true,
		"stateMutability": "payable",
		"type": "constructor"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": false,
				"internalType": "uint256",
				"name": "mysteryNumber_",
				"type": "uint256"
			},
			{
				"indexed": false,
				"internalType": "bool",
				"name": "isWinner",
				"type": "bool"
			}
		],
		"name": "results",
		"type": "event"
	},
	{
		"constant": false,
		"inputs": [
			{
				"internalType": "bool",
				"name": "guess",
				"type": "bool"
			}
		],
		"name": "winOrLose",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "mysteryNumber_",
				"type": "uint256"
			},
			{
				"internalType": "bool",
				"name": "isWinner",
				"type": "bool"
			}
		],
		"payable": true,
		"stateMutability": "payable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [],
		"name": "withdrawFunds",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"internalType": "uint256",
				"name": "number",
				"type": "uint256"
			},
			{
				"internalType": "bool",
				"name": "guess",
				"type": "bool"
			}
		],
		"name": "determineWinner",
		"outputs": [
			{
				"internalType": "bool",
				"name": "",
				"type": "bool"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	}
]];