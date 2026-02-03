/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

static constexpr auto AUTHENTICATOR_DIGITS = 6U;
static constexpr auto AUTHENTICATOR_PERIOD = 30U;

// SERVER_MAJOR_VERSION is the actual full version of the server, including minor and patch numbers.
// This is intended for internal use to identify the exact state of the server (release) software.
static constexpr auto SERVER_RELEASE_VERSION = "1.0.5";
static constexpr auto CLIENT_VERSION = 1100;

#define CLIENT_VERSION_UPPER (CLIENT_VERSION / 100)
#define CLIENT_VERSION_LOWER (CLIENT_VERSION % 100)
