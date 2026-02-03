/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

#include "declarations.hpp"

class WildcardTreeNode final : public SharedObject {
public:
	explicit WildcardTreeNode(bool initBreakpoint) :
		breakpoint(initBreakpoint) { }
	WildcardTreeNode(WildcardTreeNode &&other) noexcept = default;

	// non-copyable
	WildcardTreeNode(const WildcardTreeNode &) = delete;
	WildcardTreeNode &operator=(const WildcardTreeNode &) = delete;

	std::shared_ptr<WildcardTreeNode> getChild(char ch);
	std::shared_ptr<WildcardTreeNode> getChild(char ch) const;
	std::shared_ptr<WildcardTreeNode> addChild(char ch, bool breakpoint);

	void insert(const std::string &str);
	void remove(const std::string &str);

	ReturnValue findOne(const std::string &query, std::string &result) const;

private:
	std::map<char, std::shared_ptr<WildcardTreeNode>> children;
	bool breakpoint;
};
