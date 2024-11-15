require "json"

class Libzenohc < Formula
  release = JSON.parse(File.read("#{__dir__}/release.json"))[File.basename(__FILE__, ".rb")]

  desc "Zenoh-cpp API (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"

  on_macos do
    on_intel do
      url release["x86_64-url"]
      sha256 release["x86_64-sha256"]
    end
    on_arm do
      url release["aarch64-url"]
      sha256 release["aarch64-sha256"]
    end
  end

  def install
    lib.install "lib/pkgconfig/zenohcxx.pc"
    lib.install "lib/cmake/zenohcxx/zenohcxxConfig.cmake"
    lib.install "lib/cmake/zenohcxx/zenohcxxConfigVersion.cmake"
    include.install "include/zenoh.hxx"
    include.install "include/zenoh/zenohc.hxx"
    include.install "include/zenoh/api.hxx"
    include.install "include/zenoh/detail/closures.hxx"
    include.install "include/zenoh/detail/closures_concrete.hxx"
    include.install "include/zenoh/detail/commons.hxx"
    include.install "include/zenoh/api/logging.hxx"
    include.install "include/zenoh/api/closures.hxx"
    include.install "include/zenoh/api/query.hxx"
    include.install "include/zenoh/api/shm/provider/shm_provider_backend.hxx"
    include.install "include/zenoh/api/shm/provider/types.hxx"
    include.install "include/zenoh/api/shm/provider/alloc_layout.hxx"
    include.install "include/zenoh/api/shm/provider/provider.hxx"
    include.install "include/zenoh/api/shm/provider/chunk.hxx"
    include.install "include/zenoh/api/shm/provider/shm_provider.hxx"
    include.install "include/zenoh/api/shm/provider/types_impl.hxx"
    include.install "include/zenoh/api/shm/common/types.hxx"
    include.install "include/zenoh/api/shm/common/common.hxx"
    include.install "include/zenoh/api/shm/shm.hxx"
    include.install "include/zenoh/api/shm/cleanup.hxx"
    include.install "include/zenoh/api/shm/protocol_implementations/posix/posix_shm_provider.hxx"
    include.install "include/zenoh/api/shm/protocol_implementations/posix/posix.hxx"
    include.install "include/zenoh/api/shm/protocol_implementations/posix/posix_shm_client.hxx"
    include.install "include/zenoh/api/shm/protocol_implementations/protocol_implementations.hxx"
    include.install "include/zenoh/api/shm/client_storage/client_storage.hxx"
    include.install "include/zenoh/api/shm/client/client.hxx"
    include.install "include/zenoh/api/shm/client/shm_client.hxx"
    include.install "include/zenoh/api/shm/client/shm_segment.hxx"
    include.install "include/zenoh/api/shm/buffer/buffer.hxx"
    include.install "include/zenoh/api/shm/buffer/zshmmut.hxx"
    include.install "include/zenoh/api/shm/buffer/zshm.hxx"
    include.install "include/zenoh/api/scout.hxx"
    include.install "include/zenoh/api/source_info.hxx"
    include.install "include/zenoh/api/interop.hxx"
    include.install "include/zenoh/api/hello.hxx"
    include.install "include/zenoh/api/base.hxx"
    include.install "include/zenoh/api/bytes.hxx"
    include.install "include/zenoh/api/sample.hxx"
    include.install "include/zenoh/api/ext/serialization.hxx"
    include.install "include/zenoh/api/ext/publication_cache.hxx"
    include.install "include/zenoh/api/subscriber.hxx"
    include.install "include/zenoh/api/queryable.hxx"
    include.install "include/zenoh/api/id.hxx"
    include.install "include/zenoh/api/publisher.hxx"
    include.install "include/zenoh/api/keyexpr.hxx"
    include.install "include/zenoh/api/encoding.hxx"
    include.install "include/zenoh/api/reply.hxx"
    include.install "include/zenoh/api/channels.hxx"
    include.install "include/zenoh/api/liveliness.hxx"
    include.install "include/zenoh/api/config.hxx"
    include.install "include/zenoh/api/query_consolidation.hxx"
    include.install "include/zenoh/api/enums.hxx"
    include.install "include/zenoh/api/session.hxx"
    include.install "include/zenoh/api/timestamp.hxx"
  end
end
