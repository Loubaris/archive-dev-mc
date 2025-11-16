// This file demonstrates that the code is working by
// Spamming the chat with "Hello World"

// Import world component from "@minecraft/server"
import { world, system } from '@minecraft/server';

// Subscribe to an event that calls every Minecraft tick
system.runInterval(() => {
	// Spams the chat with "Hello World" with world.sendMessage function in API
	world.runCommand("say Hello World");

});